BASE_IMAGE_VERSIONS=2.0.4,2.0.5,2.1.3,2.1.6

dependencies:
	pip install -r requirements.txt

serve: dependencies
	mkdocs serve

generate:
	./scripts/generate_package_docs.sh "${BASE_IMAGE_VERSIONS}"

lint:
	markdownlint docs -c lint-rules.json
