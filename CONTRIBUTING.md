# Contributing to CADM

Thank you for your interest in contributing to the AI-Driven Critical Assessment of Disease Mechanisms (CADM) project! This document provides guidelines for contributing to our open-source initiative.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Development Setup](#development-setup)
- [How to Contribute](#how-to-contribute)
- [Contribution Types](#contribution-types)
- [Development Workflow](#development-workflow)
- [Code Standards](#code-standards)
- [Testing](#testing)
- [Documentation](#documentation)
- [Community Guidelines](#community-guidelines)

## Code of Conduct

This project adheres to principles of open science and collaborative research. We are committed to providing a welcoming and inclusive environment for all contributors, regardless of background, experience level, or area of expertise.

**Expected behavior:**
- Be respectful and constructive in discussions
- Welcome newcomers and help them get started
- Focus on scientific rigor and reproducibility
- Share knowledge and resources openly
- Acknowledge contributions from others

## Getting Started

### Prerequisites

- **Python 3.12+**
- **Poetry** for dependency management
- **Git** for version control
- Basic understanding of biomedical research (helpful)
- Familiarity with AI/ML concepts (helpful but not required)

### Development Setup

1. **Fork and clone the repository:**
   ```bash
   git clone git@github.com:your-username/alzheimers-critical-assessment.git
   cd alzheimers-critical-assessment
   ```

2. **Set up development environment:**
   ```bash
   # Install dependencies
   poetry install
   
   # Activate virtual environment
   poetry shell
   
   # Set up pre-commit hooks
   make dev-setup
   ```

3. **Verify setup:**
   ```bash
   make test
   make lint
   ```

## How to Contribute

### 1. Join the Community

- **Discord**: Join our [Discord server](https://discord.gg/nv3T8xw3) for real-time discussions
- **GitHub Issues**: Check existing issues and discussions
- **Introduce yourself**: Share your background and interests

### 2. Find an Issue

- Browse [open issues](https://github.com/hugging-science/alzheimers-critical-assessment/issues)
- Look for issues labeled `good first issue` or `help wanted`
- Ask questions in Discord if you need clarification

### 3. Propose New Ideas

- Open a GitHub issue to discuss new features or research directions
- Join Discord discussions about project roadmap
- Share relevant papers, datasets, or tools

## Contribution Types

### AI/ML Researchers
- **Agentic RAG Development**: Improve multi-agent architectures
- **Model Development**: Create specialized biomedical NLP models
- **Evaluation Metrics**: Design assessment frameworks
- **Algorithm Innovation**: Develop novel evidence synthesis methods

### Neuroscientists & Domain Experts
- **Domain Knowledge**: Validate APOE4 mechanisms and pathways
- **Literature Curation**: Identify key papers and datasets
- **Expert Evaluation**: Assess AI system outputs for accuracy
- **Mechanism Validation**: Review knowledge graph construction

### Data Scientists
- **Data Processing**: Improve literature mining pipelines
- **Feature Engineering**: Extract meaningful biomedical features
- **Analysis Pipelines**: Build reproducible analysis workflows
- **Visualization**: Create interpretable result presentations

### Software Engineers
- **Infrastructure**: Improve system architecture and scalability
- **API Development**: Build interfaces for community use
- **Testing**: Enhance test coverage and CI/CD pipelines
- **Documentation**: Improve code documentation and tutorials

### Other Contributors
- **Documentation**: Write tutorials, guides, and examples
- **Community Management**: Help onboard new contributors
- **Project Management**: Organize tasks and milestones
- **Outreach**: Present work at conferences and workshops

## Development Workflow

### 1. Create a Branch
```bash
git checkout -b feature/your-feature-name
# or
git checkout -b fix/issue-number
```

### 2. Make Changes
- Follow our [code standards](#code-standards)
- Write tests for new functionality
- Update documentation as needed

### 3. Test Your Changes
```bash
make test          # Run tests
make lint          # Check code quality
make type-check    # Run type checking
make format        # Format code
```

### 4. Commit Changes
```bash
git add .
git commit -m "feat: add new evidence synthesis agent"
```

**Commit message format:**
- `feat:` new features
- `fix:` bug fixes
- `docs:` documentation changes
- `test:` test additions/modifications
- `refactor:` code refactoring

### 5. Push and Create Pull Request
```bash
git push origin feature/your-feature-name
```

Then create a pull request on GitHub with:
- Clear description of changes
- Reference to related issues
- Screenshots/examples if applicable

## Code Standards

### Python Code Style
- **Formatting**: Black (line length: 88)
- **Import sorting**: isort with Black profile
- **Linting**: flake8 with docstring requirements
- **Type hints**: Required for all public functions
- **Documentation**: Docstrings for all modules, classes, and functions

### Example Code Structure
```python
"""Module for evidence synthesis agents."""

from typing import List, Optional
from pydantic import BaseModel


class EvidenceItem(BaseModel):
    """Represents a piece of evidence from biomedical literature."""
    
    title: str
    abstract: str
    confidence_score: float
    mechanism_type: Optional[str] = None


class SynthesisAgent:
    """Agent responsible for synthesizing evidence across studies."""
    
    def __init__(self, model_name: str) -> None:
        """Initialize the synthesis agent.
        
        Args:
            model_name: Name of the language model to use.
        """
        self.model_name = model_name
    
    def synthesize_evidence(
        self, 
        evidence_items: List[EvidenceItem]
    ) -> str:
        """Synthesize evidence into a coherent assessment.
        
        Args:
            evidence_items: List of evidence to synthesize.
            
        Returns:
            Synthesized assessment text.
        """
        # Implementation here
        pass
```

## Testing

### Test Requirements
- **Unit tests**: For all core functionality
- **Integration tests**: For agent interactions
- **End-to-end tests**: For complete workflows
- **Coverage**: Aim for >80% test coverage

### Running Tests
```bash
make test          # Run all tests
make test-cov      # Run with coverage report
pytest tests/      # Run specific test directory
```

### Writing Tests
```python
import pytest
from cadm.agents import SynthesisAgent


class TestSynthesisAgent:
    """Test suite for SynthesisAgent."""
    
    def test_initialization(self):
        """Test agent initialization."""
        agent = SynthesisAgent("test-model")
        assert agent.model_name == "test-model"
    
    def test_evidence_synthesis(self):
        """Test evidence synthesis functionality."""
        # Test implementation
        pass
```

## Documentation

### Documentation Types
- **Code documentation**: Docstrings and type hints
- **API documentation**: Auto-generated from docstrings
- **Tutorials**: Step-by-step guides for users
- **Research documentation**: Scientific methodology and results

### Building Documentation
```bash
make docs          # Build documentation
make serve-docs    # Serve locally for preview
```

## Community Guidelines

### Communication Channels
- **GitHub Issues**: Technical discussions and bug reports
- **Discord**: Real-time chat and community building
- **Pull Requests**: Code review and collaboration

### Research Collaboration
- **Open Science**: All research outputs should be openly accessible
- **Reproducibility**: Provide code, data, and documentation for reproduction
- **Attribution**: Properly cite and acknowledge all contributions
- **Peer Review**: Encourage community review of research outputs

### Getting Help
- **Discord**: Ask questions in appropriate channels
- **GitHub Issues**: Report bugs or request features
- **Documentation**: Check existing docs and tutorials
- **Mentorship**: Experienced contributors can mentor newcomers

## Recognition

Contributors will be recognized through:
- **GitHub contributors list**
- **Project acknowledgments**
- **Research paper authorship** (for significant contributions)
- **Conference presentations** (when appropriate)
- **Community highlights** in Discord and social media

---

**Questions?** Join our [Discord server](https://discord.gg/nv3T8xw3) or open a [GitHub issue](https://github.com/hugging-science/alzheimers-critical-assessment/issues).

Thank you for contributing to advancing biomedical research through AI-driven critical assessment!
