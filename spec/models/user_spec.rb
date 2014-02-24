require 'spec_helper'

describe User do
  it "returns the full user name when calling full_name" do
    u = build(:user, first_name: "jiMMY", last_name:"JoHNsON")
    expect(u.full_name).to eq "Jimmy Johnson"
  end
end
