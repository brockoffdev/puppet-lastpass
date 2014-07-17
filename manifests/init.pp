# Public: Install LastPass.app to /Applications.
#
# Examples
#
#   include lastpass
class lastpass {
  package { 'LastPass':
    provider => 'zip',
    source   => 'https://lastpass.com/download/cdn/lpmacosx.zip'
  }
}
