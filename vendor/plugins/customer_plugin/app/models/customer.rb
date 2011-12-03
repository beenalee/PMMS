class Customer < ActiveRecord::Base
  has_many :projects
  
  # name or company is mandatory
  validates_presence_of :account_owner
  validates_presence_of :account_name
  validates_uniqueness_of :account_owner, :scope => :account_name
  validates_uniqueness_of :account_name

  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, 
    :allow_nil => true, :allow_blank => true
  #TODO validate website address
  #TODO validate skype_name contact
  
   def pretty_name
     result = []
     [self.account_owner, self.account_name].each do |field|
       result << field unless field.blank?
     end
     
     return result.join(", ")
   end
  
  private

end
