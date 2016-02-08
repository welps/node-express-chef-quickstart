#
# Cookbook Name:: node-express-chef-quickstart
# Recipe:: default
#
# Author: welps 
#
# The checksum must be set manually to the checksum of your distribution at http://nodejs.org/dist/v5.5.0/SHASUMS256.txt
# Due to broken upstream dependency: https://github.com/redguide/nodejs/issues/61

node.set['nodejs']['install_method'] = 'binary'
node.set['nodejs']['version'] = '5.5.0'
node.set['nodejs']['binary']['checksum']='3e593d91b6d2ad871efaaf8e9a17b3608ca98904959bcfb7c42e6acce89e80f4'

include_recipe "nodejs"
include_recipe "nodejs::npm"
include_recipe "nodejs::npm_packages"

nodejs_npm 'express'
nodejs_npm 'async'
nodejs_npm 'mocha' do
  options ['--force', '--production']
end


