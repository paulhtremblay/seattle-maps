set -e
python /home/henry/projects/map-tools/map_tools.py mult-lines-to-one -v \
	seg13.kml \
	seg22.kml \
	--name 'Roaring Creek' \
	-o ../kml/roaring_creek2.kml
