require 'spec_helper'

describe Profile do
  it {should have_many(:breeds).through :mix_breeds}
  it {should belong_to :user}
  it {should belong_to :animal}

  it {should validate_presence_of :name}
  it {should validate_presence_of :gender}
  it {should validate_presence_of :description}
end
