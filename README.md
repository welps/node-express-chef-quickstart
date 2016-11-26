node-express-chef-quickstart Cookbook
========================

Installs Node 6.9.1, NPM, Express, async, and mocha packages.

Requirements
------------

You must set the checksum that matches your binary at http://nodejs.org/dist/v6.9.1/SHASUMS256.txt in recipes/default.rb.

Issue lies with upstream dependency: https://github.com/redguide/nodejs

Installation to Chef Server 
------------

1. Download this package to your chef/knife directory
2. Use berkshelf and run `berks install` within root of this cookbook
3. Run `berks upload` and it will upload this package along with its dependencies to your chef server

Use with Vagrant
------------

1. Make sure you've installed the Vagrant berkshelf plugin
`vagrant plugin install vagrant-berkshelf`

2. Run `vagrant up`
