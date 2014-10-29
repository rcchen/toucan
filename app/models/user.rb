class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable,
        :omniauthable, :omniauth_providers => [:google_oauth2]

    include Gravtastic
    gravtastic

    has_many :created_tasks, class_name: 'Assignment', foreign_key: "assigner_id"
    has_and_belongs_to_many :assigned_tasks, class_name: 'Assignment', join_table: 'assignee_assigned_tasks'

    # Handles logging in a user with Google OAuth or creating
    # the user if they do not exist in the system.
    def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
        data = access_token.info
        user = User.where(:email => data["email"]).first
        unless user
            user = User.create(name: data["name"], 
                    email: data["email"],
                    password: Devise.friendly_token[0, 20])
        end
        user
    end

end
