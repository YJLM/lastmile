class Front::User < User
  
  scope :list, ->{ base.with_organization.ascending }
  
end
