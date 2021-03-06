# Copyright 2016, BlackBerry Limited
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$:.unshift(File.dirname(__FILE__) + '/lib')
require 'chef/provisioning/opennebula_driver/version'

Gem::Specification.new do |s|
  s.name = 'chef-provisioning-opennebula'
  s.version = Chef::Provisioning::OpenNebulaDriver::VERSION
  s.license = 'Apache 2.0'
  s.platform = Gem::Platform::RUBY
  s.extra_rdoc_files = [ 'README.md', 'LICENSE' ]
  s.summary = 'Driver for creating OpenNebula instances in Chef Provisioning.'
  s.description = s.summary
  s.authors = [ 'BlackBerry Automation Engineering' ]
  s.email = [ 'nonesuch@blackberry.com' ]
  s.homepage = 'https://github.com/blackberry/chef-provisioning-opennebula'

  s.add_dependency 'chef'
  s.add_dependency 'chef-provisioning', '> 0.15'
  s.add_dependency 'opennebula', '>= 4.10'
  s.add_dependency 'rest-client', '>= 1.8'
  s.add_dependency 'json', '>= 1.8.3'
  s.add_dependency 'http-cookie', '>= 1.0.2'

  s.add_development_dependency 'bundler', '~> 1.3'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'

  s.bindir       = "bin"
  s.executables  = %w( )

  s.require_path = 'lib'
  s.files = %w(Rakefile LICENSE README.md) + Dir.glob("{distro,lib,tasks,spec}/**/*", File::FNM_DOTMATCH).reject {|f| File.directory?(f) }
end
