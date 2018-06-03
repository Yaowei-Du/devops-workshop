#!/usr/bin/env sh
set -e

NAME="workshop"

echo "create $NAME vagrant box.."
MOLECULE_EPHEMERAL_DIRECTORY=$(pwd)/molecule/default/.molecule molecule converge

echo "package box.."
cd molecule/default/.molecule
vagrant package -o $NAME.box

echo "add the new box to vagrant.."
vagrant box add --provider virtualbox --name $NAME -f $NAME.box

echo "clean up.."
# vagrant package closes the box, but molecule is not aware of this fact, which
# brings it into an inconsistent state. Here we bring vagrant up manually
vagrant up
rm $NAME.box
echo "created box $NAME. You may take a look at 'vagrant box list'"
