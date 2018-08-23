#!/bin/bash

set -eu pipefail

rake db:reset

rake knapsack:rspec
