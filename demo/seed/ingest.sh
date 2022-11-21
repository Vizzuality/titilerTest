#!/usr/bin/env bash
# Use this script to ingest the data collections

function ingest_catalog ()
{
    folder_path="${1}" # e.g. "demo/seed/catalog"
    
    pypgstac load collections $folder_path/collection.json 
            --dsn postgresql://$PGUSER:$PGPASSWORD@$PGHOST:$PGPORT/$PGDATABASE
            --method insert

    pypgstac load items $folder_path/items.json 
            --dsn postgresql://$PGUSER:$PGPASSWORD@$PGHOST:$PGPORT/$PGDATABASE 
            --method insert
}


for f in *; do
    if [ -d "$f" ]; then
        # Will not run if no directories are available
        echo "Loading data from $f ..."
        wait_for "$f"
    fi
done