class ApplicationController < ActionController::Base
  before_action :set_featured

  def  set_featured
    # Grab genres where featured is set to true
    @featured = Genre.where(feature_in_navbar: true).order('name ASC')
  end
end
