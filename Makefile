# Set branch name (from Travis or locally)
BRANCH:=$(or $(TRAVIS_BRANCH),`git branch --show-current`)

all:
	pwd

deploy-preview:
	./firebase hosting:channel:deploy $(BRANCH) --only preview

deploy-production:
	./firebase deploy --only hosting:production

# === Target flags  ===

.PHONY: all deploy-preview deploy-production
