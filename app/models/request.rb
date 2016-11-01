class Request < ApplicationRecord
  # Direct associations

  belongs_to :requester

  belongs_to :keyword

  # Indirect associations

  # Validations

end
