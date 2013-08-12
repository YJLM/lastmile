class FrontController < ApplicationController
  
  layout false
  
  protected
  
  def page_elements
    @menu = self.class.menu
    self.active_menu
  end
  
  def active_menu
    @active_menu ||= nil
  end
  
  def self.menu
    @@menu ||= [
      {
        key: :splash,
        url: { controller: :splash, action: :index }
      },
      {
        key: :team,
        url: { controller: :team, action: :index }
      },
      {
        key: :about,
        url: { controller: :about, action: :index }
      },
      {
        key: :contact,
        url: { controller: :contact, action: :index }
      }
    ]
  end
  
  
end
