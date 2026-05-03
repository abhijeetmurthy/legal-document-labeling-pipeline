# Legal Document Labeling Pipeline

Enterprise-style ML pipeline for legal document multi-label classification.

## Structure
- `src/`: training/inference modules.
- `data/`: example JSONL datasets.
- `saved/`: trained artifacts and metrics.
- `templates/`: web templates.
- `configs/`: environment templates.
- `scripts/`: bootstrap + run entrypoints.
- `docs/`: architecture docs.

## Quickstart
```bash
./scripts/bootstrap.sh
pip install -r requirements.txt
./scripts/run_pipeline.sh train
```

## Run Modes
- `./scripts/run_pipeline.sh train`
- `./scripts/run_pipeline.sh api`
- `./scripts/run_pipeline.sh web`

## Example Datasets
- `data/train.jsonl`
- `data/test.jsonl`
- `data/doc.jsonl`
- `data/Train-Sent.jsonl`
- `data/Test-Doc.jsonl`
- `data/Labels.jsonl`
