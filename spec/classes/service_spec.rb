# frozen_string_literal: true

require 'spec_helper'

describe 'zot::service' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
      let(:pre_condition) do
        [
          # Fake assert_private function from stdlib to not fail within this test
          'function assert_private () { }',
          # include main class for parameter
          'include zot',
        ]
      end

      it { is_expected.to compile.with_all_deps }
    end
  end
end
