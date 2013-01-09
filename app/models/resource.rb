class Resource < ActiveRecord::Base
  attr_accessible :description, :difficulty_level, :downloads_count, :title, :user_id, :views_count, :votes_count, :resource_file, :category_ids

  # normally, in a regular (non polymorph join), you wouldn't have the as: option
  has_many :categories_categorizables, as: :categorizable, dependent: :destroy
  # just like regular join table
  has_many :categories, through: :categories_categorizables
  belongs_to :user
  # need this for paper clip
  #has_attached_file :resource_file #, :styles => { :thumb => ["550x425", :png], :medium => ["1100x8500", :png] }

  #has_attached_file :resource_file, styles: lambda {|attachment| { thumb: (attachment.instance.resource_file_content_type == "application/pdf" ? ["20x40", "png"] : ["500x500", "png"]),
  #                                                                 large: ()}}

  #has_attached_file :resource_file

  has_attached_file :resource_file, styles: lambda { |attachment|
                                              if attachment.instance.resource_file_content_type != "application/msword" && attachment.instance.resource_file_content_type != "text/plain"
                                                { :thumb => ["550x425", :png], :medium => ["1100x8500", :png] }
                                              else
                                                {}
                                              end
                                            }

  validates_attachment_content_type(:resource_file, content_type: ["image/jpeg", "image/jpg", "application/pdf", "application/msword", "text/plain"])

  validates :title, :description, :category_ids, presence: true

  validates :title, length: { maximum: 65 }
  validates :description, length: { maximum: 5000 }
end


# validates_attachment_content_type :uploaded_file, :content_type =>['application/pdf']