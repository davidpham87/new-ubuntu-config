# Set timezone to TIMEZONE (default to Zürich)

TIMEZONE="Europe/Zurich"
echo $TIMEZONE > etc/timezone
cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime
