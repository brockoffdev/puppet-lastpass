# Public: Install Wireshark.app to /Applications.
#
# Examples
#
#   include wireshark
class wireshark {
  package { 'Wireshark':
    provider => 'appdmg_eula',
    source   => 'https://2.na.dl.wireshark.org/osx/Wireshark%201.10.8%20Intel%2064.dmg'
  }
}
