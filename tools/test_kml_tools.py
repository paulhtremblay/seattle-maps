import os
import kml_tools

def _write(root, path):
    dir_ = os.path.dirname(os.path.abspath(__file__))
    path = os.path.join(dir_, 'test_out', path)
    kml_tools.write_to_path(root = root, path = path)


def test_point():
    root = kml_tools.make_write_root()
    p = kml_tools.make_point(
            name = 'test_point', 
            latitude = 37.42228990140251, 
            longitude = -122.0822035425683, 
            description = 'pytest test' )
    root.append(p)
    _write(root = root, path = 'test_point_ex1.kml')

def test_line1():
    root = kml_tools.make_write_root()
    points = [
            (-122.40767,47.65846,0),
            (-122.4075,47.65859,0),
            (-122.40749,47.6586,0),
            (-122.40748,47.6586,0),
            (-122.40745,47.65867,0),
            ]
    l = kml_tools.make_line(
            name = 'test-line',
            points = points
            )
    root.append(l)
    _write(root = root, path = 'test_line_ex1.kml')

def test_get_tree():
    path = '/home/henry/Documents/maps/discovery_parks/kml/outer_loop.kml'
    root = kml_tools.get_tree(path = path)

def test_get_lines():
    path = '/home/henry/Documents/maps/discovery_parks/kml/outer_loop.kml'
    root = kml_tools.get_tree(path = path)
    lines = kml_tools.get_lines(tree = root)

def test_cooridinates_from_lines():
    path = '/home/henry/Documents/maps/discovery_parks/kml/outer_loop.kml'
    root = kml_tools.get_tree(path = path)
    lines = kml_tools.get_lines(tree = root)
    s= kml_tools.get_cooridinates_from_lines(line_list = lines)


def test_combine_lines():
    path = '/home/henry/Documents/maps/discovery_parks/kml/outer_loop.kml'
    root = kml_tools.combine_lines(path)
    _write(root = root, path = 'test_combine_lines_ex1.kml')
