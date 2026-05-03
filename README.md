# Legal Document Labeling Pipeline

Generic machine-learning pipeline for multi-label legal document classification.

## Pipeline Stages

1. Ingest: load JSONL training, test, and label corpora from `data/`.
2. Prepare: tokenize text and build vocab/label mappings.
3. Train: fit the label generation model using `src/training.py`.
4. Evaluate: track metrics and write summary stats.
5. Serve: expose inference/web routes from `src/api.py` and `src/web.py`.

## Repository Layout

- `src/`: training and inference pipeline modules.
- `data/`: input data files.
- `saved/`: model checkpoints and metrics outputs.
- `templates/`: web UI templates.

## Example Datasets (Current)

- `data/train.jsonl`
- `data/test.jsonl`
- `data/doc.jsonl`
- `data/Train-Sent.jsonl`
- `data/Test-Doc.jsonl`
- `data/Labels.jsonl`

## Run

```bash
pip install -r requirements.txt
python src/main.py
```
