set -e
python /home/henry/projects/map-tools/map_tools.py mult-lines-to-one -v \
	seg1.kml \
	seg2.kml \
	seg7.kml \
	--name "Little Si" \
	-o ../kml/little_si2.kml
