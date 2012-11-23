class Answer < ActiveRecord::Base
  include Voting
  attr_accessible :content, :forum_post_id, :user_id

  belongs_to :user
  belongs_to :forum_post
  has_many :votes, :as => :voteable

  # orders by number of votes
  scope :by_votes, joins(:votes).select("answers.*, count(answers.id) as votes").group("votes.voteable_id, answers.created_at DESC")
end