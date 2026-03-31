    #!/bin/bash
    # Script 4: Log File Analyzer
    LOGFILE=$1
    KEYWORD=${2:-"error"} # If no keyword is given, we just use "error" by default
    COUNT=0
    # System keeps asking the user until the user gives input
    # Using 'while true' here acts like a do-while loop
    while true; do
        if [ ! -s "$LOGFILE" ]; then # Check the file if it is empty even it exists
            echo "Error: File '$LOGFILE' is empty."
            read -p "Please enter a non-empty log file path: " LOGFILE
        else
            # File looks good, next step
            break 
        fi
    done
    # system goes through the file line by line and counts how many times the keyword appears 
    while IFS= read -r LINE; do
        if echo "$LINE" | grep -iq "$KEYWORD"; then
            COUNT=$((COUNT + 1))
        fi
    done < "$LOGFILE"
    echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
    # If found any matches, It shows the last 5 occurrences
    if [ "$COUNT" -gt 0 ]; then
        echo "---------------------------------------------------"
        echo "Last 5 occurrences of '$KEYWORD':"
        # Using -i so it matches regardless of uppercase/lowercase
        grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
    fi