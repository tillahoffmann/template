master_doc = 'README'
extensions = [
    'matplotlib.sphinxext.plot_directive',
    'sphinx.ext.doctest',
    'sphinx.ext.napoleon',
    'sphinx.ext.autodoc',
]
project = 'TEMPLATE_NAME'
napoleon_custom_sections = [('Returns', 'params_style')]
plot_formats = [
    ('png', 144),
]
html_theme = 'nature'
