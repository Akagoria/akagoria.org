all: generate

generate:
	webgen generate
	rm -rf out/stylesheets out/templates out/images

upload: generate
	rsync -rv out/ akagoria.org:/var/www/www.akagoria.org/htdocs/
