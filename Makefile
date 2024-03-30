VENVDIR=.venv
VENV=$(VENVDIR)/bin
VENVPYTHON=$(VENV)/python
VENVPIP=$(VENV)/pip

venv: $(VENV)/activate
$(VENV)/activate: pyproject.toml
	test -d $(VENVDIR) || python -m venv $(VENVDIR)
	$(VENVPIP) install -U pip
	touch $(VENV)/activate

.PHONY: install
install: venv
	$(VENVPIP) install -e .

.PHONY: install-dev
install-dev: venv
	$(VENVPIP) install -e ".[dev]"

.PHONY: check
check: install-dev
	$(VENV)/ruff check src/ tests/
	$(VENV)/ruff format --check src/ tests/

.PHONY: clean
clean: venv
	rm -rf $(VENVDIR)
	rm -rf *.egg-info

.PHONY: fix
fix: install-dev
	$(VENV)/ruff check --fix src/ tests/
	$(VENV)/ruff format src/ tests/

.PHONY: test
test: install-dev
	$(VENVPYTHON) -m pytest tests
