.PHONY: venv
env:
	uv sync

.PHONY: install-dev
install-dev:
	uv sync --extra dev

.PHONY: check
check:
	uv run ruff check --select I src/ tests/
	uv run ruff format --check src/ tests/

.PHONY: fix
fix:
	uv run ruff check --fix --select I src/ tests/
	uv run ruff format src/ tests/

.PHONY: test
test:
	uv run pytest tests
