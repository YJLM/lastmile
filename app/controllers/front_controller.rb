class FrontController < ApplicationController
  
  protected
  
  def page_elements
    @menu = self.class.menu
  end
  
  def self.menu
    @@menu ||= [
      {
        key: :home,
        url: { controller: :home, action: :index }
      },
      {
        key: :team,
        url: { controller: :team, action: :index }
      },
      {
        key: :features,
        url: { controller: :features, action: :index }
      },
      {
        key: :contact,
        url: { controller: :contact, action: :index }
      }
    ]
  end
  
  
end
