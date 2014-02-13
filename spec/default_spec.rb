require 'spec_helper'

describe 'yum-elrepo::default' do
  context 'yum-elrepos::default uses default attributes' do
    let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

    it 'creates yum_repository[elrepo]' do
      expect(chef_run).to create_yum_repository('elrepo')
    end
  end
end
