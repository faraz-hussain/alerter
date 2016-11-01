class Action < ApplicationRecord
  # Direct associations

  has_one    :request,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
