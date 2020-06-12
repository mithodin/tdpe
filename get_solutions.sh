#!/bin/bash
mkdir -p solutions
echo "<html><body><pre>" > solutions/index.html
julia solutions.jl >> solutions/index.html
echo "</pre></body></html>" >> solutions/index.html
