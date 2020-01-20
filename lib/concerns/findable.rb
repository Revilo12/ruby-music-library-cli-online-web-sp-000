require './config/environment.rb'
module Concerns::Findable

  def create(name)
    obj = self.new(name)
    obj.save
    obj
  end

  def find_by_name(name)
    self.all.find {|obj| obj.name.downcase == name.downcase}
  end

  def find_or_create_by_name(name)
    found = find_by_name(name)
    if !(found)
      create(name)
    else
      found
    end
  end

end
