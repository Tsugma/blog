class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

    validates :firstname, presence: true
    validates :lastname, presence: true

    has_many :posts

    def fullname
        firstname + " " + lastname
    end
end
