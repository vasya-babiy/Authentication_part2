class Profile < ActiveRecord::Base
  belongs_to :user
  
  attr_accessible :first_name, :last_name, :age, :birth_date

  validates_confirmation_of :first_name, :last_name, :age, :birth_date
  validates_presence_of :first_name, :last_name, :age, :birth_date

  def in(first_name, last_name, age, birth_date)
  end

end
