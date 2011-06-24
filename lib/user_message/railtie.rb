require 'user_message'
require 'rails'
require 'active_support'
require 'action_controller'
require 'action_view'
require 'action_view/paths'

module UserMessage
  class Railtie < Rails::Railtie
    
    initializer "user_message.append_view_paths" do
      view_path = File.expand_path(File.join(File.dirname(__FILE__), *%w[.. views]))
      ActionController::Base.append_view_path(view_path)  unless ActionController::Base.view_paths.include?(view_path)
    end
    
    initializer "user_message.add_defaut_i18n_translation_paths" do
      translation_path = File.expand_path(File.join(File.dirname(__FILE__), *%w[.. .. locale *.yml]))
      Dir[translation_path].map{|path| I18n.config.load_path.unshift path}
    end
  end
end