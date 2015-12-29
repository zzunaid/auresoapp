class Model < ActiveRecord::Base
  has_many :models, :dependent => :destroy
  # TODO : Validations
end