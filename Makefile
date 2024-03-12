VENV = venv
PYTHON_VERSION = 3.11
PYTHON = $(VENV)/bin/python
PIP = $(VENV)/bin/pip

.PHONY: check
check: install-dev
	ruff check src/ tests/
	ruff format --check src/ tests/

.PHONY: clean
clean: install-dev
	ruff clean
	rm -rf $(VENV)
	rm -rf *.egg-info

venv:
	python -m venv $(VENV)
	$(PIP) install -U pip

.PHONY: fix
fix: install-dev
	ruff src/ tests/
	ruff format src/ tests/

.PHONY: install
install: venv
	$(PIP) install -e .

.PHONY: install-dev
install-dev: venv
	$(PIP) install -e ".[dev]"

.PHONY: test
test: install-dev
	$(PYTHON) -m pytest tests