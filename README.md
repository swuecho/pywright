## pull docker image

```sh
docker pull echowuhao/pywright
```
## config in docker-compose.yml

```yaml
  playwright:
    # the test is actually run in container
    container_name: "playwright"
    image: echowuhao/pywright
    environment:
      - LAUNCH_URL=http://your_test_base_url:80 # set the LAUNCH_URL if you use it in your test. will avaiable as os.env('LAUNCH_URL')
    volumes:
     - ./run_browser_test.sh:/app/run_browser_test.sh # /app is the workdir in image
     - ./broswer_tests:/app/broswer_tests
```

## run test

```sh
docker-compose run playwright bash run_browser_test.sh
```
