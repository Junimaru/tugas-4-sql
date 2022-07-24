#!/bin/bash
word_count(){
	   cat data_clean.csv | wc
}

valid(){
	cat data_clean.csv | grep electronics | grep smartphone | awk -F ',' '{print $5}' | sort | uniq -c | sort -nr
}

echo "Hasil Validasi Count Word"
word_count

echo "Hasil Validasi Summarizaton by Brand"
valid
