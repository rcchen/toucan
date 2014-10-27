require 'digest/md5'

class StaticController < ApplicationController
    before_action :authenticate_user!

    def index
        @assignment = Assignment.new
    end

end
