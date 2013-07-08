class Organization < ActiveRecord::FmxBase
  
  scope :base, ->{ select("organizations.id, organizations.name") }
  scope :base_count, ->{ select("COUNT(organizations.id) as num") }
  scope :filter_by_id, ->(id){ where(id: id) }
  
  validates :name, presence: true
  validates :name, uniqueness: true, length: { maximum: 100 }
  
end
