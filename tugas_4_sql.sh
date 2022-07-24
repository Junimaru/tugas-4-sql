#!/bin/bash
cleaning_data(){
	cat data_gab.csv | csvcut -c 2,3,4,5,7,8,6 | csvgrep -c "event_type" -m purchase | awk 'BEGIN{FS=OFS=","} NR==1{$7="category,product_name"} NR>1 {sub(/[.]/, ",",$7)}1' | awk 'BEGIN{FS=OFS=","} {$8=A[split($8,A,".")]}1' |head -10 | csvlook
}

echo "Hasil Cleaning Data"
cleaning_data
