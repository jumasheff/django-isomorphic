#!/usr/bin/env bash

# Transpile all ES6 templates into ES5
babel ./tests/template_src --out-dir ./tests/templates/

# Run the tests
py.test -s --cov-report term-missing --cov=isomorphic $1
