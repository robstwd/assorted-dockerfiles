FROM gliderlabs/alpine:3.3

#RUN apk-install ruby

RUN apk --no-cache add ruby \
                       ruby-nokogiri

RUN gem install --no-ri --no-rdoc rubygems-update schematron-nokogiri --source "http://rubygems.org" && \
    update_rubygems --no-ri --no-rdoc && \
    gem uninstall rubygems-update -x

COPY patient-example.xml schematron-nokogiri-test-1.rb /apps/

COPY schemas/ /apps/schemas

WORKDIR /apps

# ===================================================================================

# build with 
# $ docker build -t alpine-ruby-schematron .

# run on windows with 
# $ winpty docker run --rm -it --name="alpine-ruby-schematron" alpine-ruby-schematron
# run on linux with 
# $ docker run --rm -it --name="alpine-ruby-schematron" alpine-ruby-schematron /bin/sh
