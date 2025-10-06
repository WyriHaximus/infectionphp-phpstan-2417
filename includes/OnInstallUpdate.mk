on-install-or-update: ## Runs everything ####
	@sh -c '$(shell printf "%s %s" $(MAKE) $(shell cat $(MAKEFILE_LIST) | grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' | grep -E "##\*(I|ILH)\*##" | awk 'BEGIN {FS = ":.*?## "}; {printf "%s\n", $$1}' | sponge | tr '\r\n' '_') | tr '_' ' ')'
