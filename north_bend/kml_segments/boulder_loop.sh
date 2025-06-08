set -e
python /home/henry/projects/map-tools/map_tools.py mult-lines-to-one -v \
	seg3.kml \
	seg25.kml \
	--name "Boulder Loop" \
	-o ../kml/boulder_loop2.kml
