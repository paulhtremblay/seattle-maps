set -e
python /home/henry/projects/map-tools/map_tools.py mult-lines-to-one -v \
	connect.kml \
	connect2.kml \
	connect3.kml \
	connect4.kml \
	-o ~/Downloads/timber.kml
