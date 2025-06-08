set -e
python /home/henry/projects/map-tools/map_tools.py combine-files -v \
	seg1.kml \
	seg2.kml \
	seg3.kml \
	seg4.kml \
	seg5.kml \
	seg6.kml \
	-o ../kml/little_si_to_big_si2.kml
