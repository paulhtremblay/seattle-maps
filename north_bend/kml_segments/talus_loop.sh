set -e
python /home/henry/projects/map-tools/map_tools.py mult-lines-to-one -v \
	seg23.kml \
	seg24.kml \
	--name 'Talus Loop' \
	-o ../kml/talus_loop2.kml
