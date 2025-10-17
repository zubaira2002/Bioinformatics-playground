#!/bin/bash

echo "=== Запуск FastQC для контроля качества ==="

# Используем 'conda run' с ТОЧНЫМ путем к Conda и запускаем FastQC
# -n bio_analysis: указывает среду, в которой нужно искать программу fastqc

/opt/conda/bin/conda run --no-capture-output -n bio_analysis fastqc data/sample_reads.fastq -o results

echo "=== Анализ FastQC завершен. Результаты в папке 'results' ==="
