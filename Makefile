DOCKER_NAMESPACE =	armbuild/
NAME =			ocs-app-owncloud
VERSION =		trusty
VERSION_ALIASES =	14.04 latest
IS_LATEST =		1
TITLE =			Owncloud
DESCRIPTION =		Owncloud 6.0
DOC_URL =		https://doc.cloud.online.net/applications/owncloud.html
SOURCE_URL =		https://github.com/online-labs/image-app-owncloud


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/image-tools-install | bash
-include docker-rules.mk


## Here you can add custom commands and overrides
