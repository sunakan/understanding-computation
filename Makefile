include makefiles/gitignore.mk
include makefiles/help.mk

################################################################################
# 変数
################################################################################
DOCKER_IMAGE := ruby:2.7-slim

################################################################################
# タスク
################################################################################
.PHONY: irb
irb:
	docker run \
		--rm \
		--interactive \
		--tty \
		--workdir /var/local/app/ \
		--mount type=bind,source=$(PWD),target=/var/local/app/ \
		$(DOCKER_IMAGE)
