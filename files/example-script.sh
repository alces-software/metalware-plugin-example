#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

echo 'example plugin running on <%= node.name %>!'
echo 'example plugin some_parameter: <%= node.plugins.example.config.some_parameter %>'
echo 'example plugin self_referential_parameter: <%= node.plugins.example.config.self_referential_parameter %>'
