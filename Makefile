DOCKER_NAMESPACE =	armbuild/
NAME =			ocs-app-owncloud
VERSION =		latest
VERSION_ALIASES =	14.04 latest trusty 7.0.4 7.0 7
TITLE =			Owncloud
DESCRIPTION =		Owncloud
DOC_URL =		https://doc.cloud.online.net/applications/owncloud.html
SOURCE_URL =		https://github.com/online-labs/image-app-owncloud


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/image-tools-install | bash
-include docker-rules.mk


## Here you can add custom commands and overrides
