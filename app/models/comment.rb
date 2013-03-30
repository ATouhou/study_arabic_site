class Comment < ActiveRecord::Base
  attr_accessible :commentable_id, :commentable_type, :user_id, :content, :as => [:default, :admin] 

  belongs_to :commentable, polymorphic: :true, counter_cache: true
  belongs_to :user

  # to deal with the Comment.new dilemma where the new blank comment record in the controller is counted undesirably
  scope :saved_records, where("ID IS NOT ?", nil)

  validates :user_id, :content, presence: true

  validates :content, length: { maximum: 1000 }
end
