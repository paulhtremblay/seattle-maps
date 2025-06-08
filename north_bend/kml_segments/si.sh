set -e
python /home/henry/projects/map-tools/map_tools.py mult-lines-to-one -v \
	seg8.kml \
	seg9.kml \
	seg10.kml \
	seg11.kml \
	seg12.kml \
	--name 'Mount Si' \
	-o ../kml/si2.kml
