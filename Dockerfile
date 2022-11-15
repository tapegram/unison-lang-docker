FROM ubuntu:22.04 
# ^ I tried this with alpine and kept getting weird errors, so settling for the Big Image for now.

RUN apt-get update && apt-get install -y \
curl
RUN mkdir unisonlanguage
RUN curl -L https://github.com/unisonweb/unison/releases/download/release%2FM4d/ucm-linux.tar.gz --output unisonlanguage/ucm.tar.gz
RUN tar -xzf unisonlanguage/ucm.tar.gz -C unisonlanguage

ENV PATH="${PATH}:/unisonlanguage"

# Now ucm is on the path, so you could, for example, start it like this
# CMD ucm