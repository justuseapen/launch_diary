require 'spec_helper'

describe Entry do
	let(:blank_values) { [nil,''] }
  it { should have_valid(:title).when('Crushing TDD workflow','Erc the bounty hunter') }
  it { should_not have_valid(:title).when(*blank_values) }

  it { should have_valid(:description).when('Here I am, building a dam, for busy beavers who do not give a damn.',
  																					'Additional sentence for this silly spec.') }
  it { should_not have_valid(:description).when(*blank_values) }

  it { should belong_to(:category) }

end
