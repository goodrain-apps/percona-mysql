build:
	docker build --no-cache -t goodrain-apps/mysql:percona-${VERSION} ./${VERSION}