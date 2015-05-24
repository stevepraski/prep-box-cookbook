#!/bin/bash
set -e

# FIXME: existential wrap
# vagrant box add opscode-centos-6.5 http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_centos-6.5_chef-provisionerless.box

berks vendor -b ../Berksfile
packer validate repack_centos.json
packer build repack_centos.json
