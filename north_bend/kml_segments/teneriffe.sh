set -e
python /home/henry/projects/map-tools/map_tools.py mult-lines-to-one -v \
	seg15.kml \
	seg16.kml \
	seg17.kml \
	seg18.kml \
	seg19.kml \
	seg20.kml \
	--name 'Teneriffe' \
	-o ../kml/teneriffe2.kml
