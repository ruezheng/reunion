require './lib/activity'
require 'rspec'

describe Activity do
  let(:activity) { Activity.new("Brunch") }

  it "exists" do
    expect(activity).to be_a Activity
  end

  it "has attributes" do
    expect(activity.name).to eq "Brunch"
    expect(activity.participants).to eq({})
  end

  it "can add participants" do
    activity.add_participant("Maria", 20)

    expect(activity.participants).to eq({{"Maria" => 20}})
  end
end
