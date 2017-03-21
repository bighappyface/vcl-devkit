# vcl-devkit

This project is a simple development kit for Varnish VCL.

Features:

* Task automation with `make`
* `varnishtest` support out of the box
* VCL separation/conventions to support tests and running process
* Docker usage for running tasks

## Setup

Run `make build`

## development

*Linting*

Run `make lint`

*Testing*

Run `make test`

## Docker concerns

*Clearing the `vcl-devkit` image*

Run `make clean`
