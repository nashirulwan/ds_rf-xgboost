# Data

The main dataset is from Kaggle:

https://www.kaggle.com/datasets/sampadab17/network-intrusion-detection

Place the following files in `data/raw/` before running the notebooks:

- `Train_data.csv`
- `Test_data.csv`

Notes:

- `Train_data.csv` contains the target label `class` and is used for training/evaluation.
- `Test_data.csv` does not contain the target label, so it is not used for metric calculation.
- Raw CSV files are not stored in the Git repository.
