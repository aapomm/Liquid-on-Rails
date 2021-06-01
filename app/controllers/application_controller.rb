class ApplicationController < ActionController::Base
  before_action :append_view_paths

  def append_view_paths
    append_view_path Rails.root.join('themes','templates')
  end
end
