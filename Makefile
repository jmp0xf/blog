.PHONY: run
run:
	@hugo server

.PHONY: run-prod
run-prod:
	@hugo server --baseURL=https://jmp0xf.com/ --appendPort=false --disableLiveReload