require File.join(File.dirname(__FILE__), *%w[lib user_message])
require 'active_support'
require 'action_controller'
require 'action_view'
require 'action_view/paths'

view_path = File.expand_path(File.join(File.dirname(__FILE__), *%w[views]))
ActionController::Base.view_paths << view_path unless ActionController::Base.view_paths.include?(view_path)
I18n.config.load_path += Dir["locale/*.yml"].map{|path| File.expand_path(path)}