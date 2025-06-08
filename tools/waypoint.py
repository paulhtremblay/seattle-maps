try:
    from lxml import etree
    print("running with lxml.etree")
except ImportError:
    import xml.etree.ElementTree as etree
    print("running with Python's xml.etree.ElementTree")

#https://www.gpsvisualizer.com/examples/google_gpx.html


def prettyprint(element, **kwargs):
     xml = etree.tostring(element, pretty_print=True, **kwargs)
     print(xml.decode(), end='')


def read2():
    etree.register_namespace("kml", "http://www.opengis.net/kml/2.2")
    path = '/home/henry/Downloads/waypoints_test.gpx.kml'
    with open(path, 'r') as read_obj:
        tree = etree.parse(read_obj)
    root = tree.getroot()
    #{http://www.opengis.net/kml/2.2}
    result = tree.findall('.//{http://www.opengis.net/kml/2.2}LineString/{http://www.opengis.net/kml/2.2:coordinates')     # Tag name, first level only.
    print(result)
    for element in root.iter():
        pass
        #print(element)


def read():
    path = 'waypoints.gpx'
    with open(path, 'r') as read_obj:
        tree = etree.parse(read_obj)
    root = tree.getroot()
    prettyprint(root)
    return
    for element in root.iter():
        print(dir(element))
        a = element.attrib
        for key in a.keys():
            print(key)
        print('\n\n')
        print(element.nsmap)
        break
        print(f"{element.tag} - {element.text}")


def write1():
    #xmlns="http://www.topografix.com/GPX/1/1
    """
      <wpt lat="47.658194" lon="-122.405867">
    <ele>83.972832</ele>
    <time>2023-04-01T22:24:09Z</time>
    <name>STRT</name>
    <sym>Residence</sym>
  </wpt>

    """
    """
    creator="GPSMAP 64st" version="1.1"
    """
    etree.register_namespace("gpx", "http://www.topografix.com/GPX/1/1")

    #note: no namespace seems to work
    root = etree.Element("gpx", 
            creator = "GPSMAP 64st", version = "1.1", xmlns= "http://www.topografix.com/GPX/1/1")

    #root = etree.Element("{http://www.topografix.com/GPX/1/1}gpx", 
    #        creator = "GPSMAP 64st", version = "1.1" )

    wpt = etree.Element("wpt", lat="47.658194", lon="-122.405867")
    ele = etree.Element("ele")
    ele.text = "83.972832"
    time_ = etree.Element("time")
    time_.text = "2023-04-01T22:24:09Z"
    name = etree.Element("name")
    name.text = "STRT"
    sym = etree.Element("sym")
    sym.text = "Residence"

    wpt.append(ele)
    wpt.append(time_)
    wpt.append(name)
    wpt.append(sym)
    #child2 = etree.SubElement(root, "wpt")
    root.append(wpt)

    prettyprint(root)
    result = etree.tostring(root, pretty_print=True)
    out_path = '/home/henry/Downloads/waypoints_test.gpx'
    with open(out_path, 'wb') as write_obj:
        write_obj.write(result)

if __name__ == '__main__':
    #read()
    #write1()
    read2()
