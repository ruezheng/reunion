require './lib/reunion'
require './lib/activity'
require 'rspec'

describe Reunion do
  let(:reunion) { Reunion.new("1406 BE") }
  let(:activity_1) { Activity.new("Brunch") }
  let(:activity_2) { Activity.new("Drinks") }

  it "exists" do
    expect(reunion).to be_a Reunion
  end

  it "can add activity" do
    activity_1.add_participant("Maria", 20)
    activity_1.add_participant("Luther", 40)

    reunion.add_activity(activity_1)

    expect(reunion.activities).to eq [activity_1]
  end

  it "has a total cost" do
    activity_1.add_participant("Maria", 20)
    activity_1.add_participant("Luther", 40)

    reunion.add_activity(activity_1)

    expect(reunion.total_cost).to eq(60)
  end

  it "has a total cost" do
    activity_1.add_participant("Maria", 20)
    activity_1.add_participant("Luther", 40)

    reunion.add_activity(activity_1)

    activity_2.add_participant("Maria", 60)
    activity_2.add_participant("Luther", 60)
    activity_2.add_participant("Louis", 0)

    reunion.add_activity(activity_2)

    expect(reunion.total_cost).to eq(180)
  end

  it "can break down costs per participant" do
    activity_1.add_participant("Maria", 20)
    activity_1.add_participant("Luther", 40)

    reunion.add_activity(activity_1)

    activity_2.add_participant("Maria", 60)
    activity_2.add_participant("Luther", 60)
    activity_2.add_participant("Louis", 0)

    reunion.add_activity(activity_2)

    expect(reunion.total_cost).to eq(180)
  end

end
