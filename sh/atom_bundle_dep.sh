# cerner_2^5_2019
# opens the source of a gem based on bundle search in `atom` text editor
# Ex. sh atom_bundle_dep.sh rail
# opens atom project at <GEM LOCATION>/gems/rails-<version>

path=$(bundle info $1 | sed -n "s/Path: \(.*\).*$/\1/p");
if [ -z $path ]
then
  echo "$1 not gem dependency";
  exit 1;
else
  atom -a $path;
fi
