require 'spec_helper'
describe 'onlinebackup' do

  context 'with defaults for all parameters' do
    it { should contain_class('onlinebackup') }
  end
end
