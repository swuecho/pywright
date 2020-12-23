version=3.8.5
local_registry=192.168.0.100:5555
aliyun_registry_bestqa=registry.cn-shanghai.aliyuncs.com/bestqa
github_pkg_registry_surveyresearch=docker.pkg.github.com/swuecho/surveyresearch

build:
	docker build -t echowuhao/pywright -f Dockerfile .
	# docker push echowuhao/pywright
	docker tag  echowuhao/pywright $(local_registry)/pywright:$(version)
	docker push  $(local_registry)/pywright:$(version)
