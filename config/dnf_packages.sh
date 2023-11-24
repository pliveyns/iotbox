#!#/usr/bin/env bash
#
# Install dnf packages from recipe.yml
#

echo "--- Installing DNF packages defined in recipe.yml --"

dnf_packages=$(yq '.dnf[]' < /tmp/config/recipe.yml)
for pkg in $dnf_packages; do
  echo "Installing: ${pkg}"
  dnf install -y $pkg;
done

echo "---"

