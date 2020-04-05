.PHONY: run
run:
	@hugo server

.PHONY: run-prod
run-prod:
	@hugo server --baseURL=https://kidding.im/ --appendPort=false --disableLiveReload