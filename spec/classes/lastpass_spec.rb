require 'spec_helper'

describe 'lastpass' do
  it { should contain_class('lastpass') }
  it do
    should contain_package('LastPass').with({
      :provider => 'zip',
      :source   => 'https://lastpass.com/download/cdn/lpmacosx.zip',
    })
  end
end
