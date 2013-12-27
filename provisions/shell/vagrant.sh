# add keys authorized for vagrant

VAGRANT_HOME="/home/vagrant"
VAGRANT_SSH_PATH="$VAGRANT_HOME/.ssh"

wget https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub
mkdir -p $VAGRANT_SSH_PATH
mv vagrant.pub $VAGRANT_SSH_PATH/authorized_keys
chmod -R 700 $VAGRANT_SSH_PATH
chmod 600 $VAGRANT_SSH_PATH/authorized_keys
chown -R vagrant:vagrant $VAGRANT_SSH_PATH
