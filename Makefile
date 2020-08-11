include makefiles/gitignore.mk
include makefiles/help.mk

################################################################################
# 変数
################################################################################
DOCKER_RUBY_IMAGE := sunakan/understanding-computation-ruby

################################################################################
# タスク
################################################################################
.PHONY: build
build:
	docker build ./ruby/ --tag $(DOCKER_RUBY_IMAGE)
.PHONY: irb
irb:
	docker run --rm -it -v $(PWD)/tmp/:/var/local/app/ --workdir /var/local/app/ $(DOCKER_RUBY_IMAGE)
