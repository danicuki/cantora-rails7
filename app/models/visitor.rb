class Visitor < ActiveRecord::Base
  attr_accessor :name, :email
	#validates_presence_of :email, :message => "não pode ser branco"
	#validates_presence_of :name, :message => "não pode ser branco"
	
	#validates_format_of :email, :with => /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/, :on => :create, :message => "inválido"
end
