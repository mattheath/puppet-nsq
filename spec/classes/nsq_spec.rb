require 'spec_helper'

describe 'nsq' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
      :boxen_user => 'testuser',
    }
  end

  it do
    should include_class('homebrew')
    should contain_homebrew__formula('nsq')
    should contain_package('boxen/brews/nsq')

    should contain_service('dev.nsqd').with(:ensure => 'running')
    should contain_service('dev.nsqlookupd').with(:ensure => 'running')
    should contain_service('dev.nsqadmin').with(:ensure => 'running')
  end

end
