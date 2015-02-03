# docker maosmurf/selenium-chrome

Chromedriver 2.14 with xvfb (on startup)

based on [maosmurf/maven-3](../maven-3)

```bash
> /opt/chromedriver/chromedriver -v
ChromeDriver 2.14.313457 (3d645c400edf2e2c500566c9aa096063e707c9cf)
```

## Usage

```bash
docker run maosmurf/selenium-chrome sh -l -c '<your command that uses xvfb'
```

## Example 

See [demo](demo.sh)

Details

* `git clone https://github.com/maosmurf/selenium-chrome-test` clone [demo app](https://github.com/maosmurf/selenium-chrome-test)
* `-v ${TEST_APP_DIR}:/selenium-chrome-test` mount demo application from outside container to avoid clutter
* `-v ~/.m2:/root/.m2` optioinally, mount your local maven folder to reuse repository and settings
