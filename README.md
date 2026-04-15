# Network Intrusion Detection

Project akhir Data Science:

**Perbandingan Algoritma Random Forest dan XGBoost untuk Klasifikasi Normal dan Anomali pada Dataset Network Intrusion Detection**

## Environment

Jalankan JupyterLab dari environment Nix:

```bash
nix develop --command jupyter lab
```

Atau masuk shell terlebih dahulu:

```bash
nix develop
jupyter lab
```

## Struktur Folder

- `data/raw/`: dataset asli dari Kaggle.
- `data/processed/`: dataset hasil preprocessing jika perlu disimpan.
- `notebooks/`: notebook eksperimen dan analisis.
- `outputs/figures/`: gambar hasil visualisasi.
- `outputs/models/`: model tersimpan jika diperlukan.
- `reports/`: draft laporan atau catatan penulisan.

## Dataset

Sumber dataset:

https://www.kaggle.com/datasets/sampadab17/network-intrusion-detection

Simpan file CSV dari Kaggle ke folder `data/raw/`.

File yang digunakan:

- `Train_data.csv`: data berlabel, digunakan untuk training dan evaluasi dengan train-test split internal.
- `Test_data.csv`: data tanpa label target, tidak digunakan untuk menghitung metrik evaluasi.

## Alur Metodologi

Project mengikuti metodologi Data Science pada materi kuliah:

1. Business Understanding
2. Data Understanding
3. Data Preparation
4. Modeling
5. Model Evaluation

## Fokus Eksperimen

Target utama yang disarankan:

- Binary classification: `normal` vs `anomalous`
- Model pembanding: Random Forest dan XGBoost
- Metrik evaluasi: accuracy, precision, recall/sensitivity, specificity, F1-score, confusion matrix, dan ROC-AUC
