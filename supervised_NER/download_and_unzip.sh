#!/bin/bash

# Define URLs
TRAIN_SET_URL="https://storage.googleapis.com/neretrieve_dataset/supervised_ner/NERetrive_sup_train.jsonl.bz2"
TEST_SET_URL="https://storage.googleapis.com/neretrieve_dataset/supervised_ner/NERetrive_sup_test.jsonl.bz2" 

# Download files
echo "Downloading Train Set..."
wget "$TRAIN_SET_URL" -O "NERetrive_sup_train.jsonl.bz2"

echo "Downloading Test Set..."
wget "$TEST_SET_URL" -O "NERetrive_sup_test.jsonl.bz2" 

# Unzip files

echo "Unzipping Train Set..."
bzip2 -d "NERetrive_sup_train.jsonl.bz2"

echo "Unzipping Test Set..."
bzip2 -d "NERetrive_sup_test.jsonl.bz2" 

echo "Download and extraction complete."
