require 'spec_helper'

describe Animal do
  it { should have_many :breeds}
  it { should have_many :profiles}
end
