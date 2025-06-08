set -e
python /home/henry/projects/big-data/big_data/python_tools/gpx_tools/kml_tools.py \
	combine-files  -v \
	/home/henry/Documents/maps/north_bend/kml/tenneriffe_to_connector.kml \
	/home/henry/Documents/maps/north_bend/kml/roaring_creek.kml \
	/home/henry/Documents/maps/north_bend/kml/mount_si.kml \
	/home/henry/Documents/maps/north_bend/kml/upper_si_connector.kml \
	/home/henry/Documents/maps/north_bend/kml/talus_loop.kml \
	/home/henry/Documents/maps/north_bend/kml/trail1.kml \
	/home/henry/Documents/maps/north_bend/kml/upper_tenneriffe.kml \
	/home/henry/Documents/maps/north_bend/kml/tenneriffe_falls.kml \
	/home/henry/Documents/maps/north_bend/kml/kamikaze.kml \
	/home/henry/Documents/maps/north_bend/kml/connect_tenneriffe_falls.kml \
	--out /home/henry/Downloads/nb_trails.kml

