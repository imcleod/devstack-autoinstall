# These are notes related to my specific cobbler setup
# TODO: Add line for setting the target distribution
cobbler system edit --name=cob-dell4 --netboot-enabled=Y
cobbler system reboot --name=cob-dell4
