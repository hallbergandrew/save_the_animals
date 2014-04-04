require 'spec_helper'

describe MixBreed do
  it {should belong_to :profile}
  it {should belong_to :breed}

end
