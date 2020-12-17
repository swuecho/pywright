## pull docker image

```sh
docker pull echowuhao/pywright
```
## config in docker-compose.yml

```yaml
  playwright:
    # the test is actually run in container
    container_name: "playwright"
    image: ${docker_registry}/pywright:3.8.6
    environment:
      - LAUNCH_URL=http://envoy_proxy:80
    volumes:
     - ./run_browser_test.sh:/app/run_browser_test.sh # /app is the workdir in image
     - ./broswer_tests:/app/broswer_tests
```

## run test

```sh
docker-compose run playwright bash run_browser_test.sh
```
