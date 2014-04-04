require 'spec_helper'

describe Breed do
  it {should have_many(:profiles).through :mix_breeds}

  it {should belong_to :animal}
  it {should validate_presence_of :name}
end
