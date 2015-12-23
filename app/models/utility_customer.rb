class UtilityCustomer < ActiveRecord::Base
  belongs_to :utility
  belongs_to :user
end
