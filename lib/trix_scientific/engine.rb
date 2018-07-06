module Trix
  class Engine < ::Rails::Engine
    initializer 'trix.view_helpers' do
      ActiveSupport.on_load(:action_view) do
        require 'trix_scientific/form'
      end
    end
  end
end
