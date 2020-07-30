module Samurai
    module Admin
      class AdminController < ApplicationController
        #authorize_resource class: false

        def index
          authorize! :manage, nil
        end
      end
    end
  end