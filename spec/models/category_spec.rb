require 'spec_helper'

describe Category do
  before :each do
    @category = FactoryGirl.build(:category)
  end

  subject { @category }

  it { should respond_to(:forum_posts) }
  it { should respond_to(:parent_category) }




end
