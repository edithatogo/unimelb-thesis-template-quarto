# Quarto Thesis Template

This is a Quarto-based thesis template, adapted from a modernized University of Melbourne PhD thesis template. It is designed to be easy to use, customize, and maintain, with a focus on producing beautiful documents in various formats, including Typst, PDF, and HTML.

## Features

- **Multi-format Output:** Generate your thesis in Typst, PDF (via LaTeX), and HTML from the same source.
- **Modern Tooling:** Uses Quarto for a powerful and flexible authoring experience.
- **Structured Template:** A clear and organized structure for your thesis content.
- **Customizable:** Easily customize the appearance of your thesis using templates.
- **Automated CI/CD:** Comes with a pre-configured GitHub Actions workflow to automatically build and test your thesis.

## Requirements

- [Quarto CLI](https://quarto.org/docs/get-started/)
- [Typst](https://typst.app/) (for rendering to Typst)
- A LaTeX distribution (e.g., [TeX Live](https://www.tug.org/texlive/)) (for rendering to PDF via LaTeX)

## Setup

This project uses a Python virtual environment to manage dependencies. To get started, follow these steps:

1.  **Create the virtual environment:**
    ```bash
    python3 -m venv .venv
    ```

2.  **Activate the virtual environment:**
    -   On macOS and Linux:
        ```bash
        source .venv/bin/activate
        ```
    -   On Windows:
        ```bash
        .venv\Scripts\activate
        ```

3.  **Install dependencies:**
    ```bash
    pip install -r requirements.txt
    ```

Once the virtual environment is activated, you can run the `quarto` commands as described in the "Usage" section.

## Usage

### Local Rendering

1.  **Install Dependencies:** Make sure you have Quarto, Typst, and a LaTeX distribution installed.
2.  **Render the Thesis:** To render the thesis in all supported formats, run the following command from the root of the repository:
    ```bash
    quarto render
    ```
    To render to a specific format, use the `--to` flag:
    ```bash
    # Render to Typst
    quarto render --to typst

    # Render to HTML
    quarto render --to html
    ```
    The output files will be located in the `_output` directory.

### Project Structure

- **`_quarto.yml`**: The main configuration file for the Quarto project. This is where you set the title, author, and other metadata, as well as the structure of the thesis.
- **`index.qmd`**: The main entry point of the thesis.
- **`chapters/`**: Contains the individual chapters of your thesis as `.qmd` files.
- **`preamble/`**: Contains the front matter of the thesis, such as the abstract, declaration, and acknowledgements.
- **`appendices/`**: Contains the appendices of your thesis.
- **`bibliography.bib`**: Your bibliography file in BibTeX format.
- **`figures/`**: A directory to store your figures.
- **`templates/`**: Contains the templates for different output formats (e.g., `thesis.typ` for Typst).

## Customization

- **Metadata:** Edit `_quarto.yml` to change the thesis title, author, and other metadata. The `thesis` key contains custom metadata that is used in the templates.
- **Content:** Add, remove, or edit the `.qmd` files in the `chapters/`, `preamble/`, and `appendices/` directories to write your thesis.
- **Styling:**
    - **Typst:** To customize the Typst output, edit the `templates/thesis.typ` file.
    - **HTML:** To customize the HTML output, you can add a `theme` to the `html` section of `_quarto.yml`. See the [Quarto documentation](https://quarto.org/docs/output-formats/html-themes.html) for more information.
    - **PDF (via LaTeX):** To customize the PDF output, you can create a custom LaTeX template and reference it in the `pdf` section of `_quarto.yml`.

## Contributing

Contributions to improve this template are welcome! Please see the `CONTRIBUTING.md` file for more information.

## License

This template is available under the MIT License. See the `LICENSE` file for more details.
The University of Melbourne logo is subject to the University's branding guidelines and copyright.
