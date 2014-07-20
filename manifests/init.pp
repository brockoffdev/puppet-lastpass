# Public: Install LastPass.app to /Applications.
#
# Examples
#
#   include lastpass
class lastpass {
  package { 'LastPass':
    ensure => installed,
    provider => compressed_app,
    source   => 'https://lastpass.com/download/cdn/lpmacosx.zip'
  }
}
