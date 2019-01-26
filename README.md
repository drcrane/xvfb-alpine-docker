# Alpine Xvfb Environment in Docker

Core requirements:

* Small Usable Environment (fluxbox)
* Nice Terminal Emulator (st)
* Nice-enough text editor (vim)

## Building

    docker build --tag alpine-xvfb:beta1 .

## Running

    docker run --rm -it alpine-xvfb:beta1

## Connecting to the Desktop

Of course change the IP address to the address of the container.

    vncviewer 172.17.0.2:0

