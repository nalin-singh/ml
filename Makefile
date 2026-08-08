.PHONY: lint format format-fix typecheck check

lint:
	uv run ruff check .

format:
	uv run ruff format --check .

format-fix:
	uv run ruff format .

typecheck:
	uv run ty check

check: lint format typecheck