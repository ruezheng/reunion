require './lib/activity'
require 'rspec'

describe Activity do
  let(:activity) { Activity.new("Brunch") }

  it "exists" do
    expect(activity).to be_a Activity
  end
end
