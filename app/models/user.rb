class User < ActiveRecord::Base
	
	def self.filtered_by_age(opts = {})
     min = opts[:min]
     max = opts[:max]
     user = User.arel_table

     if min && max
       self.where(:age => min..max)
     elsif min && !max
       self.where(user[:age].gt(min))
     elsif max && !min
       self.where(user[:age].lt(max))
     else
       self.all
     end
   end

	def index
	end
end
