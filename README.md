# vcl-devkit

This project is a simple development kit for Varnish VCL.

**Features:**

* Task automation with `make`
* `varnishtest` support out of the box
* VCL separation/conventions to support tests and running process
* Docker usage for running tasks

## Setup

Run `make build`

## Development

**Linting**

Run `make lint`

**Testing**

Single tests - run `make TEST=<filename>.vtc testsingle`

All tests - run `make testall`

## Docker concerns

**Clearing the `vcl-devkit` image**

Run `make clean`
