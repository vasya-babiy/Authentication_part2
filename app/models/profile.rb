class Profile < ActiveRecord::Base
  belongs_to :user
  
  attr_accessible :first_name, :last_name, :age, :birth_date

end
