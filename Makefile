all: css/styles.css

css/styles.css: node_modules/.bin/lessc less/styles.less
	mkdir -p css
	node_modules/.bin/lessc less/styles.less > css/styles.css

node_modules/.bin/lessc:
	npm install

clean:
	rm -r css
	rm -r node_modules
