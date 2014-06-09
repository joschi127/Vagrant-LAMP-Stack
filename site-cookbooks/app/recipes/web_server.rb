#
# Cookbook Name:: app
# Recipe:: web_server
#
# Copyright 2013, Mathias Hansen
#

# Install Apache
include_recipe "openssl"
include_recipe "apache2"
include_recipe "apache2::mod_php5"
include_recipe "apache2::mod_rewrite"
include_recipe "apache2::mod_ssl"

# Install PHP
directory "/etc/php5/conf.d" do
  owner "root"
  group "root"
  mode 00755
  action :create
end
include_recipe "php::dotdeb"
include_recipe "php"
include_recipe "php::apache2"
include_recipe "php::module_opcache"
include_recipe "php::module_gd"
include_recipe "php::module_imap"
include_recipe "php::module_intl"
include_recipe "php::module_mbstring"
include_recipe "php::module_mcrypt"
include_recipe "php::module_memcache"
include_recipe "php::module_mysql"
include_recipe "php::module_pgsql"
include_recipe "php::module_curl"
include_recipe "php::module_xml"
include_recipe "php::module_soap"
include_recipe "php::module_ldap"

# Install Composer
include_recipe "composer"

