# alpine-ruby-ox
A simple docker image running on alpine with ruby and the xml parsing gem [ox](https://github.com/ohler55/ox).

A simple (albeit less featured) alternative to nokogiri.

#### Building image
This image was built from the dockerfile with:
```
docker build -t alpine-ruby-ox .
```

#### Running container
Open a container interactively so that the test file can be run, using:
```
docker run --rm -it --name="alp-ruby-ox" alpine-ruby-ox /bin/sh
```

Then at the prompt issue: 
```
./ox-test.tb
```

or run the script the close the container with
``
docker run --rm -it --name="alp-ruby-ox" alpine-ruby-ox ruby /apps/ox-test.rb`

```

#### Various Guides
- https://github.com/ohler55/ox/blob/master/lib/ox/element.rb
- http://stackoverflow.com/questions/21786005/how-to-open-parse-and-process-xml-file-with-ox-gem-like-with-nokogiri-gem
- http://www.ohler.com/ox/Ox/Element.html#locate-instance_method

#### Sample xml file
The file `FHIR_patient-example.xml` was sourced from the FHIR standards website [here](https://www.hl7.org/fhir/patient-example-f001-pieter.xml.html).
