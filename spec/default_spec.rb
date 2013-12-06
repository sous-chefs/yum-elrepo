# Encoding: utf-8

require 'spec_helper'

describe 'yum-elrepo::default' do
  context 'yum-elrepos::default uses default attributes' do
    let(:chef_run) { ChefSpec::Runner.new(:step_into => ['yum_repository']).converge(described_recipe) }

    it 'creates yum_repository[elrepo]' do
      expect(chef_run).to create_yum_repository('elrepo')
    end

    it 'steps into yum_repository and creates template[/etc/yum.repos.d/elrepo.repo]' do
      expect(chef_run).to render_file('/etc/yum.repos.d/elrepo.repo')
    end

  end
end
