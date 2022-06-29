require 'rails/railtie'
require 'action_view/base'

module BestInPlace
  class Railtie < ::Rails::Railtie #:nodoc:
    initializer 'best_in_place', after: :prepend_helpers_path do |app|
      ActiveSupport.on_load(:after_initialize) do
        BestInPlace::ViewHelpers = ActionView::Base.new({}, {}, "")
      end
    end
  end
end
