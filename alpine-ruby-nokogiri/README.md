# alpine-ruby-nokogiri
A simple docker image running on [alpine](http://www.alpinelinux.org/) with ruby and the xml parsing gem [nokogiri](http://www.nokogiri.org/).

#### Building image
Image size: 28MB

This image was built from the dockerfile with:
```
docker build -t alpine-ruby-nokogiri .
```

#### Running container
Open a container interactively so that the test file can be run, using:
```
docker run --rm -it --name="alpine-ruby-nokogiri" alpine-ruby-nokogiri /bin/sh
```

Then at the prompt issue: 
```
./nokogiri-test.tb
```

or run the script directly then close the container with:
```
docker run --rm -it --name="alpine-ruby-nokogiri" alpine-ruby-nokogiri ruby /apps/nokogiri-test.rb

```

#### xml source
The xml file sourced for the nokogiri test is [from the Australian Bureau of Meterology](ftp://ftp2.bom.gov.au/anon/gen/fwo/IDQ10095.xml) and reports the forecast for Brisbane. There are other elements that can be reported, however I have limited it to just the forecast, for simplicity.
