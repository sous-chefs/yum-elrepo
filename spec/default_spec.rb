require 'spec_helper'

describe 'yum-elrepo::default' do
  context 'yum-elrepos::default uses default attributes' do
    let(:chef_run) { ChefSpec::ServerRunner.new.converge(described_recipe) }

    it 'creates yum_repository[elrepo]' do
      expect(chef_run).to create_yum_repository('elrepo')
    end
  end
end

describe 'yum-elrepo::extras' do
  context 'yum-elrepos::extras uses default attributes' do
    let(:chef_run) { ChefSpec::ServerRunner.new.converge(described_recipe) }

    it 'creates yum_repository[elrepo-extras]' do
      expect(chef_run).to create_yum_repository('elrepo-extras')
    end
  end
end

describe 'yum-elrepo::testing' do
  context 'yum-elrepos::testing uses default attributes' do
    let(:chef_run) { ChefSpec::ServerRunner.new.converge(described_recipe) }

    it 'creates yum_repository[elrepo-testing]' do
      expect(chef_run).to create_yum_repository('elrepo-testing')
    end
  end
end
