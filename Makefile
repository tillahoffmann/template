.PHONY : docs lint sync tests

build : lint tests docs

lint :
	flake8

tests :
	pytest -v --cov=TEMPLATE_NAME --cov-fail-under=100 --cov-report=term-missing --cov-report=html

docs :
	sphinx-build . docs/_build

sync : requirements.txt
	pip-sync

requirements.txt : requirements.in setup.py test_requirements.txt
	pip-compile -v -o $@ $<

test_requirements.txt : test_requirements.in setup.py
	pip-compile -v -o $@ $<
