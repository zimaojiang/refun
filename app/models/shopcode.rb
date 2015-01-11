class Shopcode < ActiveRecord::Base
	has_many :couponsales, :dependent => :destroy

	# return a shopcode object.
	def self.view_referrals(sc, em)
	     Shopcode.find(:first, :conditions => ['lower(shop_code) = ? and lower(email) = ?', sc.downcase, em.downcase])
	     # For where is for Rails 3 and later.
	     # Shopcode.where("shop_code = ? AND email = ?", sc, em).take	
	end
end
