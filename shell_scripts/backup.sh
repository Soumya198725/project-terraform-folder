#!/bin/bash

src_dir=/home/ubuntu/shell_scripts
tgt_dir=/home/ubuntu/backups

curr_timestamp=$(date "+%Y-%m-%d_%H-%M-%S")
backup_file=$tgt_dir/$curr_timestamp.tgz

echo "$Taking backup on $curr_timestamp"
#echo "$backip_file"

tar czf $backup_file  --absolute-names $src_dir
echo "backup complete"
