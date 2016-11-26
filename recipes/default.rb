#
# Cookbook Name:: node-express-chef-quickstart
# Recipe:: default
#
# Author: welps 
#
# The checksum must be set manually to the checksum of your distribution at http://nodejs.org/dist/v6.9.1/SHASUMS256.txt
# Due to broken upstream dependency: https://github.com/redguide/nodejs/issues/61

node.set['nodejs']['install_method'] = 'binary'
node.set['nodejs']['version'] = '6.9.1'
node.set['nodejs']['binary']['checksum']='a9d9e6308931fa2a2b0cada070516d45b76d752430c31c9198933c78f8d54b17'

include_recipe "nodejs"
include_recipe "nodejs::npm"
include_recipe "nodejs::npm_packages"

nodejs_npm 'express'
nodejs_npm 'async'
nodejs_npm 'mocha' do
  options ['--force', '--production']
end


