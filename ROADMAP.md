# Roadmap

This document outlines the development roadmap for the Quarto Thesis Template. It is intended to provide a high-level overview of the project's future direction and a more detailed list of tasks to be completed.

## Phases

The development of this template is divided into the following phases:

### Phase 1: Core Functionality & Format Parity

The goal of this phase is to ensure that the template is fully functional and provides a consistent, high-quality output across all target formats (Typst, PDF, and HTML).

- [x] Basic project structure setup.
- [ ] Ensure consistent styling for all preamble sections (Abstract, Declaration, etc.) across all formats.
- [ ] Ensure consistent styling for chapters, sections, figures, and tables across all formats.
- [ ] Basic bibliography styling for all formats.

### Phase 2: Feature Enhancements

This phase will focus on adding features commonly found in theses.

- [ ] Support for glossaries.
- [ ] Support for lists of abbreviations/symbols.
- [ ] Advanced bibliography customization.
- [ ] Support for different citation styles.

### Phase 3: Ease of Use & Customization

The goal of this phase is to improve the user experience by making the template easier to customize.

- [ ] Add more configuration options to `_quarto.yml` to control the appearance of the output.
- [ ] Create a set of color themes for the HTML output.
- [ ] Improve the documentation on how to customize the template.

### Phase 4: Documentation & Examples

This phase will focus on improving the documentation and providing more comprehensive examples.

- [ ] Write a comprehensive user guide.
- [ ] Create more examples to showcase the template's features.
- [ ] Add a gallery of theses created with the template.

## To-Do List

This is a more granular list of tasks that need to be completed.

### General

- [ ] Finalize the overall structure of the thesis template.
- [ ] Review and update the documentation in `README.md`.

### Typst Template (`templates/thesis.typ`)

- [ ] Implement a title page that matches the University of Melbourne style.
- [ ] Ensure all preamble sections (Abstract, Declaration, etc.) are correctly formatted.
- [ ] Style chapters and sections.
- [ ] Format figures and tables.
- [ ] Implement bibliography styling.
- [ ] Add support for glossaries and abbreviations.

### LaTeX/PDF Template

- [ ] Create a LaTeX template for PDF output.
- [ ] Ensure parity with the Typst template in terms of features and styling.

### HTML Template

- [ ] Ensure the HTML output is clean and readable.
- [ ] Add a nice theme.
- [ ] Ensure all sections are correctly rendered.

### Example Project (`example/`)

- [ ] Flesh out the example to demonstrate all features of the template.
- [ ] Add more example content.

### CI/CD (`.github/workflows/`)

- [ ] Improve the CI/CD pipeline to build and test all output formats.
- [ ] Consider adding a step to deploy the example to GitHub Pages.
