version=3.8.6
local_registry=192.168.0.100:5555
aliyun_registry_bestqa=registry.cn-shanghai.aliyuncs.com/bestqa
github_pkg_registry_surveyresearch=docker.pkg.github.com/swuecho/surveyresearch

build:
	docker build -t echowuhao/playwright_base -f Dockerfile .
	# docker push echowuhao/playwright_base
	docker tag  echowuhao/playwright_base $(local_registry)/playwright_base:$(version)
	docker push  $(local_registry)/playwright_base:$(version)
