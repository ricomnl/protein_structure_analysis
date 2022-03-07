PROJECT_NAME = protein_structure_analysis

.venv:
	poetry install

kernel: .venv
	poetry run python -m ipykernel install --user --name ${PROJECT_NAME}

jupyter: 
	jupyter notebook --NotebookApp.iopub_data_rate_limit=10000000 notebooks/analysis.ipynb

docs: .venv
	poetry run sphinx-build -b html docs/ docs/_build