require 'spec_helper'

describe 'wireshark' do
  it { should contain_class('wireshark') }
  it do
    should contain_package('Wireshark').with({
      :provider => 'appdmg_eula',
      :source   => 'https://2.na.dl.wireshark.org/osx/Wireshark%201.10.8%20Intel%2064.dmg',
    })
  end
end
