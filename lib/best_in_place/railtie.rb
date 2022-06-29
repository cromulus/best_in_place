require 'rails/railtie'
require 'action_view/base'

module BestInPlace
  class Railtie < ::Rails::Railtie #:nodoc:
    ActiveSupport.on_load(:action_controller_base) do
      ActionController::Base.send(:helper, BestInPlace::ViewHelpers)
    end
  end
end
