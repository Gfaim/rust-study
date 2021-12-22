# rust-study

## Setup

This project requires docker to be installed.

Run with ```docker build . -t rust-study && docker run --rm rust-study```.

## CI / CD

A Dockerfile is present to prevent user from downloading cargo and rust to his machine.
A github action is present too to check if on push it compiles correctly.

## Documentation

Documentation used: https://doc.rust-lang.org/stable/book/ch01-01-installation.html