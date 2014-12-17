puts "Hooking Spree into Refinery => Spree::BaseController - #{__FILE__[/([app\/\w\.]+|vendor[\/\w\.]+)/]}"
puts "Hooking Spree into Refinery => Spree::Api::BaseController - #{__FILE__[/([app\/\w\.]+|vendor[\/\w\.]+)/]}"
puts "Hooking Spree into Refinery => ApplicationController - #{__FILE__[/([app\/\w\.]+|vendor[\/\w\.]+)/]}"
require "spree/refinery_authentication_helpers"

module SpreeRefineryAuthentication
  class Engine < Rails::Engine
    engine_name "spree_refinery_authentication"

    config.to_prepare do
      Spree.user_class = "Refinery::User"

      WillPaginate::ActiveRecord::RelationMethods.send :alias_method, :per, :per_page
      WillPaginate::ActiveRecord::RelationMethods.send :alias_method, :num_pages, :total_pages

      Spree::BaseController.send(:include, Spree::RefineryAuthenticationHelpers)
      Spree::Api::BaseController.send(:include, Spree::RefineryAuthenticationHelpers)
      ApplicationController.send(:include, Spree::RefineryAuthenticationHelpers)
    end
  end
end
