This is a Chef kitchen to provision a server for reliveradio-plantasy. Instructions on how to use this can be found in the [reliveradio-plantasy repository](https://github.com/ReliveRadio/reliveradio-plantasy/blob/master/README.md).

You can also setup a vagrant machine using this kitchen.

Make sure you have vagrant with virtualbox support installed. Also install the `omnibus` plugin with `vagrant plugin install vagrant-omnibus`.

Boot up and provision the VM with `vagrant up`. It will use the configuration from `nodes/vagrant.json`.