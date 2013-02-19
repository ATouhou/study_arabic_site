require 'spec_helper'
include Devise::TestHelpers

describe "user show page when user has a student profile" do
  let!(:level) { FactoryGirl.create(:level) }
  let!(:student_profile) { FactoryGirl.create(:student_profile, level_id: level.id) }
  let!(:user) { FactoryGirl.create(:user, profile_type: "StudentProfile", profile_id: student_profile.id) }
  let!(:teacher_review) { FactoryGirl.create(:review, reviewable_type: "TeacherProfile") }

  before do
    visit user_path(user)
  end

  subject { page }

  describe "general contents" do
    describe "page title" do
      it "has the user's name as the title" do
        page.html.should have_selector("title", text: "#{user.first_name} #{user.last_name}") 
      end
    end
    
    it "should display the user's name" do
      page.should have_content("#{user.first_name} #{user.last_name}")
    end

    it "should display a student badge" do
      page.should have_content("Student")
    end

    it "should display the user's bio" do
      page.should have_content(user.bio)
    end

    it "should display the students statistics" do
      page.should have_content("Student Statistics")
    end
    
    it "should display the student's answers" do
      page.should have_content("Questions Answered")
      page.should have_content(user.answers.count)
    end
  end
end
