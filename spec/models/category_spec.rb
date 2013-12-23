require 'spec_helper'

describe Category do
	let(:blank_values) { [nil,''] }
  it { should have_valid(:name).when('TDD','Database Design') }
  it { should_not have_valid(:name).when(*blank_values) }

  it { should validate_uniqueness_of(:name) }

  it { should have_many(:entries) }

end
