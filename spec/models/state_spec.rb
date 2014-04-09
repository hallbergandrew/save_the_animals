require 'spec_helper'

describe State do
  it { should have_many :cities }
  it { should belong_to :country }
end
