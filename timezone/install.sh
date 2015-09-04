# Set timezone to TIMEZONE (default to Zürich)

TIMEZONE="Europe/Zurich"
echo "Timezone is given by $TIMEZONE"

echo $TIMEZONE > etc/timezone
cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime
