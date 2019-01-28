FROM ubuntu
RUN apt update
RUN apt install -y libssl-dev git make gcc
RUN git clone --depth=1 https://github.com/magnumripper/JohnTheRipper
WORKDIR JohnTheRipper/src
RUN ./configure && make && ../run/john --test
