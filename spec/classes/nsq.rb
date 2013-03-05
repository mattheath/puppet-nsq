require 'spec_helper'

describe 'nsq' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
      :boxen_user => 'testuser',
    }
  end

  it { should include_class('homebrew') }
  it { should contain_homebrew__formula('nsq') }
  it { should contain_package('boxen/brews/nsq') }
end
