class Requester < ApplicationRecord
  # Direct associations

  has_many   :requests,
             :dependent => :destroy

  # Indirect associations

  has_many   :keywords,
             :through => :requests,
             :source => :keyword

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
