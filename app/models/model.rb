class Model < ActiveRecord::Base
  has_many :model_types, :dependent => :destroy
  # TODO : Validations
end