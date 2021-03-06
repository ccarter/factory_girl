require 'spec_helper'
require 'acceptance/acceptance_helper'

describe "a created instance" do
  before do
    define_model('User')

    define_model('Post', :user_id => :integer) do
      belongs_to :user
    end

    FactoryGirl.define do
      factory :user do
      end

      factory :post do
        user
      end
    end
  end

  subject { Factory.create('post') }

  it "saves" do
    should_not be_new_record
  end

  it "assigns and saves associations" do
    subject.user.should be_kind_of(User)
    subject.user.should_not be_new_record
  end
end

