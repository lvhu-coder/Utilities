#!/bin/bash

until ssh 192.168.68.77; do
    echo "SSH failed. Retrying..."
    sleep 1
done

