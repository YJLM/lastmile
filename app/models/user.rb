class User < ActiveRecord::FmxBase
  
  scope :base, ->{ select("users.id, users.organization_id, users.name, users.mail, users.role, users.facebook, users.twitter") }
  scope :base_count, ->{ select("COUNT(users.id) as num") }
  scope :with_organization, ->{ select("organizations.name as organization_name").joins("JOIN organizations ON organizations.id = users.organization_id") }
  scope :filter_by_id, ->(id){ where(id: id) }
  scope :ascending, ->{ order('users.id ASC') }
  
  attr_protected :organization_id
  
  validates :name, :organization_id, presence: true
  validates :name, length: { maximum: 100 }, uniqueness: true
  validates :mail, length: { maximum: 100 }, uniqueness: true, format: { with: Regex::Mail }
  validates :role, length: { maximum: 100 }, allow_nil: true
  
  def organization_name
    @organization_name ||= self[:organization_name]
  end
  
  def pic
    @pic ||= "#{self.class.pic_dir}/#{self.id}.png"
  end
  
  def self.pic_dir
    @@pic_dir ||= "staff"
  end
  
  
end