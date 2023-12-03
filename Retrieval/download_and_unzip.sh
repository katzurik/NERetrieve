#!/bin/bash

# Define URLs
CORPUS_URL="https://storage.googleapis.com/neretrieve_dataset/IR/NERetrive_IR_corpus.jsonl.bz2"
TRAIN_SET_URL="https://storage.googleapis.com/neretrieve_dataset/IR/NERetrive_IR_train.jsonl.bz2"
TEST_SET_URL="https://storage.googleapis.com/neretrieve_dataset/IR/NERetrive_IR_test.jsonl.bz2" 

# Download files
echo "Downloading Paragraph Corpus..."
wget "$CORPUS_URL" -O "NERetrive_IR_corpus.jsonl.bz2"

echo "Downloading Train Set..."
wget "$TRAIN_SET_URL" -O "NERetrive_IR_train.jsonl.bz2"

echo "Downloading Test Set..."
wget "$TEST_SET_URL" -O "NERetrive_IR_test.jsonl.bz2" 

# Unzip files
echo "Unzipping Paragraph Corpus..."
bzip2 -d "NERetrive_IR_corpus.jsonl.bz2"

echo "Unzipping Train Set..."
bzip2 -d "NERetrive_IR_train.jsonl.bz2"

echo "Unzipping Test Set..."
bzip2 -d "NERetrive_IR_test.jsonl.bz2" 

echo "Download and extraction complete."
