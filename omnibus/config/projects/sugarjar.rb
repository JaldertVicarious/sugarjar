#
# Copyright 2020 YOUR NAME
#
# All Rights Reserved.
#

require_relative '../../../lib/sugarjar/version.rb'

name 'sugarjar'
friendly_name 'SugarJar'
maintainer 'Phil DIbowitz <phil@ipom.com>'
homepage 'https://github.com/jaymzh/sugarjar'
license 'Apache-2.0'

# Defaults to C:/sugarjar on Windows
# and /opt/sugarjar on all other platforms
install_dir "#{default_root}/#{name}"

build_version SugarJar::VERSION
build_iteration 1

override 'ruby', :version => '2.7.1'

dependency 'preparation'
dependency 'sugarjar'
dependency 'ruby-cleanup'
dependency 'gem-permissions'
dependency 'shebang-cleanup'

exclude '**/.git'
exclude '**/bundler/git'

package :deb do
  compression_level 1
  compression_type :xz
end
