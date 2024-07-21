# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'PROJECT_NAME'
copyright = '2024, AUTHOR_NAME'
author = 'AUTHOR_NAME'
release = 'PROJECT_RELEASE'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = []

templates_path = ['_templates']
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']

language = 'ja'

# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = 'alabaster'
html_static_path = ['_static']

# CUSTOM ======================================================================

html_theme = 'furo'

# plantuml
# Ref: https://github.com/sphinx-contrib/plantuml?tab=readme-ov-file#configuration
extensions += ['sphinxcontrib.plantuml']
plantuml = 'java -jar /opt/plantuml/plantuml.jar'
plantuml_latex_output_format = 'pdf'
plantuml_output_format = 'svg'

# mermaid
# Ref: https://github.com/mgaitan/sphinxcontrib-mermaid?tab=readme-ov-file#building-pdfs-on-readthedocsio
extensions += ['sphinxcontrib.mermaid']
mermaid_params = ['-p', 'puppeteer-config.json']

# latex
latex_engine = 'uplatex'
latex_elements = {
	'papersize': 'a4paper',
}
