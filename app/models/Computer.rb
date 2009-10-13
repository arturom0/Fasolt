class Computer < ActiveLdap::Base
  ldap_mapping :dn_attribute => 'cn', :prefix => "OU=School Group", :classes => ["Computer"]
  
  #field::
  #description
  def path
    self.dn
  end
  def name
    self.cn
  end
  def os
    self.operatingSystem
  end
  def os_version
    self.operatingSystemVersion
  end
  def ip_address
    self.networkAddress
  end
  
  def to_json(options = {})
    { :path   => self.path,
      :name   => self.name,
      :os     => self.os,
      :os_version => self.os_version,
      :ip_address => self.networkAddress,
      :descripttion => self.description}.to_json(options)
    
  end
  def self.search_for(query)
	vals = Computer.find(:all, :attribute => "cn", :value => "\*#{query}\*")
	vals += Computer.find(:all, :attribute => "description", :value => "\*#{query}\*")
	return vals
  end
end
