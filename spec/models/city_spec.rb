require 'spec_helper'

describe City do
  it { should belong_to :state }
end
