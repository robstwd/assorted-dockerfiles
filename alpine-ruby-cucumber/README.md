# alpine-ruby-cucumber
A simple docker image running on [alpine](http://www.alpinelinux.org/) with ruby and the behaviour driven development gem  [cucumber](https://cucumber.io/).

#### Building image
Image size: 183MB

This image was built from the dockerfile with:
```
docker build -t alpine-ruby-cucumber .
```

#### Running container
Open a container interactively so that the test file can be run, using:
```
docker run --rm -it --name="alpine-ruby-cucumber" alpine-ruby-cucumber /bin/sh
```

Then at the prompt issue: 
```
cucumber
```

or run the script directly then close the container with:
```
docker run --rm -it --name="alpine-ruby-cucumber" alpine-ruby-cucumber cucumber

```

The output should be thus:
```
Feature: Cone of silence

  Scenario: Activation                                   # features/cone.feature:2
    Given I am writing a book                            # features/step_definitions/cone_steps.rb:1
    When I activate the cone of silence                  # features/step_definitions/cone_steps.rb:5
    Then I should not hear my children for the next hour # features/step_definitions/cone_steps.rb:9

1 scenario (1 passed)
3 steps (3 passed)
0m0.013s
```

#### Feature file
The simple feature file was sourced from the wonderful book, [Cucumber Recipes](https://pragprog.com/book/dhwcr/cucumber-recipes), by Ian Dees, Matt Wynne and Aslak Hellesoy. The code snippets were found on github [here](https://github.com/cucumber/cucumber-recipes-book-code/tree/master/continuous_integration).
