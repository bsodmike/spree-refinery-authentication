module Spree
  module RefineryAuthenticationHelpers
    def self.included(_klass)
      _klass.class_eval do
        include InstanceMethods
        helper_method :spree_login_path,
          :spree_signup_path,
          :spree_logout_path,
          :spree_current_user,
          :refinery_user?
      end
    end

    module InstanceMethods
      def spree_current_user
        current_refinery_user
      end

      def spree_login_path
        refinery.new_refinery_user_session_path
      end

      def spree_signup_path
        refinery.new_signup_path
      end

      def spree_logout_path
        refinery.destroy_refinery_user_session_path
      end
    end
  end
end
