#!/bin/bash

DEFAULT_FILE="pages/timeline.md"

addtomd() {
    local file="${2:-$DEFAULT_FILE}"
    local content="$1"
    local timestamp=$(date +"%Y-%m-%d")

    if [ ! -f "$file" ]; then
        echo "Error: File '$file' does not exist."
        exit 1
    fi

    local marker='---'
    local prefix_index=$(grep -n -- "$marker" "$file" | cut -d ':' -f 1 | tail -n 1)

    if [ -z "$prefix_index" ]; then
        local formatted_content="
$timestamp

\`$content\`

$(cat "$file")
"
    else
        local content_before=$(head -n "$prefix_index" "$file")
        local content_after=$(tail -n +"$((prefix_index + 1))" "$file")

        local formatted_content="$content_before

**$timestamp**

\`$content\`

$content_after"
    fi

    echo "$formatted_content" > "$file"
}

addtomd "$1" "$2"
