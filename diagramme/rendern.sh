#!/bin/sh
# Rendert alle PlantUML-Quellen als SVG nach ../material/
# Aufruf: sh rendern.sh [pfad/zu/plantuml.jar]   (braucht Java und Graphviz)
set -e
cd "$(dirname "$0")"
JAR="${1:-/opt/tools/plantuml.jar}"
java -jar "$JAR" -tsvg -o ../material *.puml
cp v2-ablaufende.svg ../material/
# Schrift-Fallback: Breiten sind für DejaVu Sans berechnet; Arial ist schmaler und passt sicher
for f in ../material/*.svg; do
  sed -i 's/font-family="DejaVu Sans"/font-family="DejaVu Sans, Arial, Helvetica, sans-serif"/g' "$f"
done
