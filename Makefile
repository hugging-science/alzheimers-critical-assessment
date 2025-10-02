.PHONY: help install install-dev test test-cov lint format type-check clean docs serve-docs build

# Default target
help:
	@echo "Available commands:"
	@echo "  install      Install production dependencies"
	@echo "  install-dev  Install development dependencies"
	@echo "  test         Run tests"
	@echo "  test-cov     Run tests with coverage"
	@echo "  lint         Run linting (flake8)"
	@echo "  format       Format code (black + isort)"
	@echo "  type-check   Run type checking (mypy)"
	@echo "  clean        Clean up build artifacts"
	@echo "  docs         Build documentation"
	@echo "  serve-docs   Serve documentation locally"
	@echo "  build        Build package"
	@echo "  pre-commit   Run pre-commit hooks"

# Installation
install:
	poetry install --only=main

install-dev:
	poetry install
	poetry run pre-commit install

# Testing
test:
	poetry run pytest

test-cov:
	poetry run pytest --cov=src --cov-report=html --cov-report=term-missing

# Code quality
lint:
	poetry run flake8 src tests

format:
	poetry run black src tests
	poetry run isort src tests

type-check:
	poetry run mypy src

# Pre-commit
pre-commit:
	poetry run pre-commit run --all-files

# Documentation
docs:
	poetry run mkdocs build

serve-docs:
	poetry run mkdocs serve

# Build
build:
	poetry build

# Cleanup
clean:
	rm -rf build/
	rm -rf dist/
	rm -rf *.egg-info/
	rm -rf .pytest_cache/
	rm -rf .coverage
	rm -rf htmlcov/
	rm -rf .mypy_cache/
	find . -type d -name __pycache__ -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete

# Development workflow
dev-setup: install-dev
	@echo "Development environment setup complete!"
	@echo "Run 'make test' to run tests"
	@echo "Run 'make format' to format code"
	@echo "Run 'make lint' to check code quality"

# CI workflow
ci: format lint type-check test-cov
	@echo "All CI checks passed!"
