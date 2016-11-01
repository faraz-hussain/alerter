class Keyword < ApplicationRecord
  # Direct associations

  has_many   :requests,
             :dependent => :destroy

  # Indirect associations

  has_many   :requesters,
             :through => :requests,
             :source => :requester

  # Validations

end
