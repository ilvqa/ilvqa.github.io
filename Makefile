clean:
	rm docs/* -rf

build: clean
	bundle exec jekyll build
	mv _site/* docs/

upload: build
	git add -A
	git commit -m "Deploy"
	git push origin gh-pages:master --force

