#################################################################################
# COMMANDS                                                                      #
#################################################################################

## Install Dependencies
requirements: 
	rbenv install
	bundle install

## Deploy Locally
local:
	eval "$$(rbenv init -)" && bundle exec jekyll serve

## Check for dead links
link_check:
	bundle exec htmlproofer \
	--assume_extension '.html' \
	--enforce_https "false" \
	--disable_external "true" \
	--allow_missing_href "true" \
	./_site 2>&1 | tee link_check.log