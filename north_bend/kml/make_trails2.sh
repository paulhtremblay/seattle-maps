set -e
python /home/henry/projects/map-tools/map_tools.py combine-files -v \
	boulder_loop_trail.kml \
	connect_tenneriffe_falls.kml \
	little_si.kml \
	little_si_to_si.kml \
	kamikaze.kml \
	mount_si.kml \
	mount_teneriffe_trail.kml \
	overflow.kml \
	roaring_creek.kml \
    talus_loop.kml \
	tenneriffe_falls.kml \
	tenneriffe_to_connector.kml \
	upper_si_connector.kml \
	-o ~/Downloads/temp.kml
