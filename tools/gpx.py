try:
    from lxml import etree
except ImportError:
    import xml.etree.ElementTree as etree

class KmlToGpxError(Exception):
    pass
import tools

def tracks_from_gpx(path, verbose = False):
    tree = tools.get_tree(path = path)
    trk =   tree.findall('.//{http://www.topografix.com/GPX/1/1}trk')  
    final = []
    for counter, i in enumerate(trk):
        name = f'track_{counter}'
        for j in i.iter('{http://www.topografix.com/GPX/1/1}name'):
            name = j.text
        d = {'name':name, 'points':[]}
        trksegs = i.findall('{http://www.topografix.com/GPX/1/1}trkseg')
        for j in trksegs:
            trackpoints = j.findall('{http://www.topografix.com/GPX/1/1}trkpt')
            for trackpoint in trackpoints:
                ele = trackpoint.findall('{http://www.topografix.com/GPX/1/1}ele')
                elevation = 0
                if ele:
                    elevation = float(ele[0].text)
                d['points'].append((float(trackpoint.get('lat')), float(trackpoint.get('lon')), elevation))
        final.append(d)
    return final

def make_write_root()-> object:
    root = etree.Element("gpx", 
            creator = "GPSMAP 64st", version = "1.1", xmlns= "http://www.topografix.com/GPX/1/1")
    return root
