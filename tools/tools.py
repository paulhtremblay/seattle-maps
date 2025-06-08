import os
import  math
from statistics import median
import kml
import gpx

try:
    from lxml import etree
except ImportError:
    import xml.etree.ElementTree as etree

class KmlToGpxError(Exception):
    pass

def haversine_distance(
    latitude_1: float, 
    longitude_1: float, 
    latitude_2: float, 
    longitude_2: float) -> float:    
    """
    Haversine distance between two points, expressed in meters.

    Implemented from http://www.movable-type.co.uk/scripts/latlong.html
    """
    EARTH_RADIUS = 6378.137 * 1000

    d_lon = math.radians(longitude_1 - longitude_2)
    lat1 = math.radians(latitude_1)
    lat2 = math.radians(latitude_2)
    d_lat = lat1 - lat2

    a = math.pow(math.sin(d_lat/2),2) + \
        math.pow(math.sin(d_lon/2),2) * math.cos(lat1) * math.cos(lat2)
    c = 2 * math.asin(math.sqrt(a))
    d = EARTH_RADIUS * c

    return d

def reverse_points(points):
    points_ = [x for x in points]
    for i in reversed(points):
        points_.append(i)
    return points_

def create_mile_markers(points, 
        reverse = False,
        verbose = False):
    if reverse:
        points = reverse_points(points)
    total_distance = 0
    prev_point = None
    prev_mile = None
    miles = []
    for point in points:
        if not prev_point:
            prev_point = point
            continue
        dis =  haversine_distance(
            latitude_1 = prev_point[0], 
            longitude_1= prev_point[1], 
            latitude_2= point[0], 
            longitude_2= point[1])     
        total_distance += dis
        if prev_mile != None and math.floor(total_distance * 0.000621371) != prev_mile:
            mile_mark = math.floor(total_distance * 0.000621371)
            miles.append({'mile':mile_mark,
                'latitude':point[0],
                'longitude': point[1],
                'elevation': point[2]
                }
                    )
        prev_mile = math.floor(total_distance * 0.000621371)
        prev_point = point
    return miles


def find_nearest(point, points, verbose = False):
    nearest = (None, None)
    for counter, i in enumerate(points):
        distance = haversine_distance(
            latitude_1 =  point[0], 
            longitude_1 = point[1], 
            latitude_2 = i[0], 
            longitude_2 = i[1]    
        )
        if nearest[1] == None or distance < nearest[1]:
            nearest = (counter, distance)
    if verbose:
        pass
        #print(f'nearest is {nearest}')
    return nearest

def find_nearest_distance(point, points, distance, verbose = False):
    final = []
    for counter, i in enumerate(points):
        distance_ = haversine_distance(
            latitude_1 =  point[0], 
            longitude_1 = point[1], 
            latitude_2 = i[0], 
            longitude_2 = i[1]    
        )
        if distance_ == 0:
            continue
        elif distance_ <= distance:
            final.append(i)
    return final

def find_highest(points, verbose = False):
    highest = (None, None)
    for counter, i in enumerate(points):
        height = i[2]
        if height == None:
            continue
        if highest[1] == None or height > highest[1]:
            highest = (counter, height)
    return highest

def distance_from_line(point, line_point_1, line_point_2) -> float:
    """ Distance of point from a line given with two points. """
    assert point, point
    assert line_point_1, line_point_1
    assert line_point_2, line_point_2

    #a = line_point_1.distance_2d(line_point_2)
    a = line_point_1.distance_2d(line_point_2)

    if not a:
        return line_point_1.distance_2d(point)

    b = line_point_1.distance_2d(point)
    c = line_point_2.distance_2d(point)

    if a is not None and b is not None and c is not None:
        s = (a + b + c) / 2.
        return 2. * mod_math.sqrt(abs(s * (s - a) * (s - b) * (s - c))) / a
    return None


def distance_2d( point) -> float:
    return distance(point[0], point[1], None, location.latitude, location.longitude, None)


def get_line_equation_coefficients(location1, location2):
    """
    Get line equation coefficients for:
        latitude * a + longitude * b + c = 0

    This is a normal cartesian line (not spherical!)
    """
    #long is neg
    #(47.7112324443, -122.3719442915, -1.53)
    #so index 1

    if location1[1] == location2[2]:
        # Vertical line:
        return float(0), float(1), float(-1 * location1[1])
    else:
        #a = float(location1.latitude - location2.latitude) / (location1.longitude - location2.longitude)
        a = float(location1[0] - location2[0]) / (location1[1] - location2[1])
        b = location1[0] - location1[1] * a
        return float(1), float(-a), float(-b)

def simplify(points: list, max_distance: float = None) -> list:
    _max_distance = max_distance if max_distance is not None else 10

    if len(points) < 3:
        return points

    begin, end = points[0], points[-1]

    # Use a "normal" line just to detect the most distant point (not its real distance)
    # this is because this is faster to compute than calling distance_from_line() for
    # every point.
    #
    # This is an approximation and may have some errors near the poles and if
    # the points are too distant, but it should be good enough for most use
    # cases...
    a, b, c = get_line_equation_coefficients(begin, end)
    print(a, b, c)
    return

    # Initialize to safe values
    tmp_max_distance: float = 0
    tmp_max_distance_position = 1
    
    # Check distance of all points between begin and end, exclusive
    for point_no in range(1,len(points)-1):
        point = points[point_no]
        d = abs(a * point[0] + b * point[1] + c)
        if d > tmp_max_distance:
            tmp_max_distance = d
            tmp_max_distance_position = point_no

    # Now that we have the most distance point, compute its real distance:
    real_max_distance = distance_from_line(points[tmp_max_distance_position], begin, end)

    # If furthest point is less than max_distance, remove all points between begin and end
    if real_max_distance is not None and real_max_distance < _max_distance:
        return [begin, end]
    
    # If furthest point is more than max_distance, use it as anchor and run
    # function again using (begin to anchor) and (anchor to end), remove extra anchor
    return (simplify(points[:tmp_max_distance_position + 1], _max_distance) +
            simplify(points[tmp_max_distance_position:], _max_distance)[1:])

def _get_median(points):
    lats = []
    longs = []
    for i in points:
        lats.append(i[0])
        longs.append(i[1])
    lats = sorted(lats)
    longs = sorted(longs)
    return median(lats), median (longs)


def _too_far(dis, max_ = 15):
    if dis < max_:
        return False
    return True

def merge_lines(tracks):
    points = []
    base_track = tracks[0][0]['points']
    final = []
    n_lons = []
    n_lats = []
    for p in base_track:
        temp_ = [p]
        for i in tracks[1:]:
            index, dist = find_nearest(p, i[0]['points'])
            if not _too_far(dist):
                temp_.append(i[0]['points'][index])
            n_lat, n_lon  = _get_median(points = temp_)
            final.append((n_lat, n_lon))
    for i in final:
        points.append((i[0], i[1], 0))
    return points

def tracks_from_file(path, verbose = False) -> object:
    ext = os.path.splitext(path)[1]
    if ext == '.gpx':
        tree = gpx.tracks_from_gpx(path = path, verbose = verbose)
    elif ext == '.kml':
        tree = kml.tracks_from_kml(path = path, verbose = verbose)
    else:
        raise ValueError('no match')
    return tree


def get_tree(path):
    with open(path, 'r') as read_obj:
        tree = etree.parse(read_obj)
    return tree

def write_to_path(root, path, verbose = False):
    s =  etree.tostring(root)
    with open(path, 'wb') as write_obj:
        write_obj.write(s)
    if verbose:
        print(f'wrote to {path}')

