require 'digest/md5'

class StaticController < ActionController::Base
    before_action :authenticate_user!

    def index
        @assignment = Assignment.new
    end

end
