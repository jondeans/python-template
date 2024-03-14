VENV = .venv
PYTHON_VERSION = 3.11
PYTHON = $(VENV)/bin/python
PIP = $(VENV)/bin/pip

.PHONY: check
check: .venv
	ruff check src/ tests/
	ruff format --check src/ tests/

.PHONY: clean
clean: .venv
	ruff clean
	rm -rf $(VENV)
	rm -rf *.egg-info

venv:
	python -m venv $(VENV)
	$(PIP) install -U pip

.PHONY: fix
fix: .venv
	ruff src/ tests/
	ruff format src/ tests/

.PHONY: install
install: .venv
	$(PIP) install -e .

.PHONY: install-dev
install-dev: .venv
	$(PIP) install -e ".[dev]"

.PHONY: test
test: .venv
	$(PYTHON) -m pytest tests
