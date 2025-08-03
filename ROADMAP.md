# Development Roadmap: Quarto PhD Thesis Template for the University of Melbourne

This document outlines the development roadmap for a Quarto-based PhD thesis template for the University of Melbourne. The template will support both traditional LaTeX-based PDF output and a modern alternative using Typst.

## Phase 1: Core Infrastructure Setup (ETA: 1 week)

The goal of this phase is to set up the basic infrastructure for the project, including the Quarto project, version control, and a virtual environment.

- **Dependencies:**
  - Quarto CLI
  - Typst
  - TeX Live (or another LaTeX distribution)
- **Tasks:**
  - [ ] Initialize a new Quarto book project.
  - [ ] Set up a Git repository for version control.
  - [ ] Create a virtual environment (e.g., using `venv` or `conda`) to manage dependencies.
  - [ ] Document the setup process in the `README.md` file.
- **Deliverables:**
  - A basic Quarto project structure.
  - A `README.md` file with setup instructions.
  - A `.gitignore` file to exclude unnecessary files from version control.

## Phase 2: LaTeX-based PDF Output (ETA: 3 weeks)

This phase focuses on creating a high-quality PDF output using LaTeX that complies with the University of Melbourne's thesis formatting requirements.

- **Dependencies:**
  - A University of Melbourne LaTeX thesis class or style file.
- **Tasks:**
  - [ ] Obtain or create a LaTeX template that meets the university's specifications.
  - [ ] Integrate the LaTeX template with the Quarto project.
  - [ ] Implement the following document components:
    - [ ] Title page
    - [ ] Abstract
    - [ ] Table of Contents
    - [ ] List of Figures
    - [ ] List of Tables
    - [ ] Bibliography (using BibTeX or CSL)
  - [ ] Style chapters, sections, and other document elements according to the university's guidelines.
  - [ ] Ensure that code chunks and their output are correctly rendered.
  - [ ] Implement support for cross-referencing figures, tables, and sections.
- **Deliverables:**
  - A Quarto template that generates a compliant PDF using LaTeX.
  - A working example that demonstrates all the features of the template.

## Phase 3: Typst-based PDF Output (ETA: 2 weeks)

This phase focuses on creating an alternative PDF output using Typst, leveraging its modern typesetting capabilities.

- **Tasks:**
  - [ ] Create a Typst template that mimics the style of the LaTeX template.
  - [ ] Implement the same document components as in the LaTeX template:
    - [ ] Title page
    - [ ] Abstract
    - [ ] Table of Contents
    - [ ] List of Figures
    - [ ] List of Tables
    - [ ] Bibliography
  - [ ] Ensure that the Typst output is visually consistent with the LaTeX output.
- **Deliverables:**
  - A Quarto template that generates a high-quality PDF using Typst.
  - An updated example that demonstrates the Typst output.

## Phase 4: Documentation and Release (ETA: 1 week)

The final phase focuses on creating comprehensive documentation and preparing the template for release.

- **Tasks:**
  - [ ] Write a detailed user guide that explains how to use the template.
  - [ ] Create a comprehensive example that showcases all the features of the template.
  - [ ] Add instructions on how to customize the template.
  - [ ] Tag a version 1.0 release.
- **Deliverables:**
  - A complete and well-documented Quarto thesis template.
  - A comprehensive example project.
  - A `CHANGELOG.md` file to track changes between versions.
