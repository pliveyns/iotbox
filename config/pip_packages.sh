#!/usr/bin/env bash
#
# Install dnf packages from recipe.yml
#

echo "--- Installing pip packages defined in recipe.yml --"

pip_packages=$(yq '.pip[]' < /tmp/config/recipe.yml)
for pkg in $pip_packages; do
  echo "Installing: ${pkg}"
  python3 -m pip install -U $pkg;
done

echo "---"

