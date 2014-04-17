 #!/bin/sh
firewall-cmd --add-port 80/tcp
firewall-cmd --add-port 5000/tcp
firewall-cmd --add-port 8774/tcp
firewall-cmd --add-port 9292/tcp
firewall-cmd --add-port 6080/tcp
