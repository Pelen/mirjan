class Book < ActiveRecord::Base
	mount_uploader :cover, CoverUploader

	# attr_accessor :crop_x, :crop_y, :crop_w, :crop_h

 #  after_update :crop_cover
 #  def crop_cover
 #    cover.recreate_versions! if crop_x.present?
 #  end

 self.per_page = 10
 
  validates :title, presence: true, uniqueness: true
  # validates :content, presence: true
 
  # It returns the articles whose titles contain one or more words that form the query
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("title like ?", "%#{query}%") 
  end



end
