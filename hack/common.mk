SKIP_SQUASH?=0

build = hack/build.sh

script_env = \
	SKIP_SQUASH=$(SKIP_SQUASH)                      \
	VERSIONS="$(VERSIONS)"                          \
	VERSION=$(VERSION)                              \
	BASE_IMAGE_NAME=$(BASE_IMAGE_NAME)

.PHONY: build
build:
	$(script_env) $(build)

.PHONY: test
test:
	$(script_env) TAG_ON_SUCCESS=$(TAG_ON_SUCCESS) TEST_MODE=true $(build)
