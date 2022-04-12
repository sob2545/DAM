mkdir ~/.dam

tar -xf dam.tar -C ~/.dam

rm -rf dam.tar

echo "alias dam='sh ~/.dam/dam.sh'" >> ~/.zshrc
