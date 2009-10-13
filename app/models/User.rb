class User < ActiveLdap::Base
  ldap_mapping :dn_attribute => 'sAMAccountName', :prefix => "OU=School Group", :classes => ["user"]
  
  #fields::
  #description
  def user_login
    self.sAMAccountName
  end
  def name
   self.cn
  end
  def email_addresses
    self.mail
  end
  def path
    self.dn
  end
  def cost_center
    self.extensionAttribute1
  end
  def division
   CostCenter.find_by_code(self.cost_center).division
  end
  def to_json(options = {})
    {   :user_login => self.user_login,
        :name       => self.name,
        :email_addresses => self.email_addresses,
        :path       => self.path,
        :cost_center  => self.cost_center,
	:division     => self.division,
        :description => self.description}.to_json(options)
  end
 
  def self.search_for(query)
	User.find(:all, :attribute => "sAMAccountName", :value => "\*#{query}\*") + User.find(:all, :attribute => "cn", :value => "\*#{query}\*")
  end


  
end
