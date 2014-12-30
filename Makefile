DOCKER_NAMESPACE =	armbuild/
NAME =			ocs-app-owncloud
VERSION =		latest
VERSION_ALIASES =	14.04 latest trusty 6.0.1 6.0 6
TITLE =			Owncloud
DESCRIPTION =		Owncloud 6.0.1
DOC_URL =		https://doc.cloud.online.net/applications/owncloud.html
SOURCE_URL =		https://github.com/online-labs/image-app-owncloud


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/image-tools-install | bash
-include docker-rules.mk


## Here you can add custom commands and overrides
