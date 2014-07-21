# Public: Install LastPass.app to /Applications.
#
# Examples
#
#   include lastpass
class lastpass {
  $install_file = '/Applications/installer.app'

  package { 'LastPass':
    ensure => installed,
    provider => compressed_app,
    flavor   => zip,
    source   => 'https://lastpass.com/download/cdn/lpmacosx.zip'
  }
  ~> exec { 'Install Lastpass':
	command     => "/usr/bin/open ${install_file}",
	logoutput   => 'on_failure',
	refreshonly => true,
     }

  ~> file { $install_file:
	ensure => 'absent',
     }
}
