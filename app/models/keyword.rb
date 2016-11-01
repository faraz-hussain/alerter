class Keyword < ApplicationRecord
  # Direct associations

  has_many   :requests,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
