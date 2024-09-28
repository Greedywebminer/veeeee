
#!/data/data/com.termux/files/usr/bin/bash

# Start an HTTP server and serve battery and wifi status
while true; do
  # Get battery status
  battery=$(termux-battery-status | jq '.')

  # Get Wi-Fi status
  wifi=$(termux-wifi-info | jq '.')

  # Output in JSON format
  echo "Content-type: application/json"
  echo ""
  echo "{\"battery\": $battery, \"wifi\": $wifi}"

  sleep 60  # Wait for 1 minute
done
