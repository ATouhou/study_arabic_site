class ForumPost < ActiveRecord::Base
  attr_accessible :content, :title, :user_id, :views_count, :votes_count, :category_ids
  after_initialize :init

  belongs_to :user
  has_many :categories_forum_posts
  has_many :categories, through: :categories_forum_posts
  has_many :votes

  validates :title, :content, :category_ids, presence: true

  validates :title, length: { maximum: 65 }
  validates :content, length: {maximum: 5000 }

  def init
    self.views_count ||= 0
    self.votes_count ||= 0
  end

  def self.count_vote(forum_post_id, user_id, type)
    if type == "up"
      new_vote = Vote.create(forum_post_id: forum_post_id, user_id: user_id)
    else
      Vote.where("forum_post_id = ? AND user_id = ?", forum_post_id, user_id).first.destroy
    end
    return Vote.where("forum_post_id = 3").count
  end
end
