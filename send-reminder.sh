#!/bin/sh

dir=$(dirname "${BASH_SOURCE[0]}")
recipients=$(cat "$dir/recipients.txt")
content=$(cat "$dir/content.txt")

# Set the information about the origin of your reminder
origin_name="YOUR_ORIGIN_NAME"
origin_addr="YOUR_ORIGIN_ADDR"

echo -e "From: \"$origin_name\" <$origin_addr>\nTo: $recipients\nContent-Type: text/plain; charset=UTF-8\n$content" | sendmail -f "$origin_addr" -F "$origin_name" $(echo "$recipients" | sed "s/,/ /g") 2> "$dir/error.log" && echo "Successfully sent on $(date)" > "$dir/sent.log"
