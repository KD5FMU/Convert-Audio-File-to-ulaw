#!/bin/bash

# Check if sox is installed
if ! command -v sox &> /dev/null; then
    echo "Error: sox is not installed. Install it using: sudo apt install sox"
    exit 1
fi

# Check if input file is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <input_audio_file> [output_filename]"
    exit 1
fi

# Input file
INPUT_FILE="$1"

# Output file (optional second argument, defaults to input filename with .ul extension)
OUTPUT_FILE="${2:-${INPUT_FILE%.*}.ul}"

# Convert the audio file to 8000Hz, 16-bit, mono, raw u-law format
sox "$INPUT_FILE" -t raw -r 8000 -c 1 -e u-law "$OUTPUT_FILE"

# Check if conversion was successful
if [ $? -eq 0 ]; then
    echo "Conversion successful!"
    echo "Output file: $OUTPUT_FILE"
else
    echo "Error: Conversion failed."
fi
