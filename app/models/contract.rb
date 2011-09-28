class Contract < ActiveRecord::Base
  belongs_to	:signer
  accepts_nested_attributes_for :signer
end
