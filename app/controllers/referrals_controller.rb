class ReferralsController < ApplicationController

  def index
  end

  # action to show my referrals
  def show
	  # if we dont have all the params, we redirect.
	  if (!params[:shopcode].blank? and !params[:email].blank?) 
	     @shopcode = Shopcode.view_referrals(params[:shopcode].strip, params[:email].strip)
	     if !@shopcode
		flash[:message] = "Record not found."
		ref_err
	     else
	     	# we get the couponsales collection for the view, max is 5.
	     	@couponsales = @shopcode.couponsales.first(5)

		# prepare for the back link if clicked.
		set_flash_params
	     end
	  else 
	     # we render to index 
		flash[:message] = "All fields required."
		ref_err
	  end
  end

  # we render to index with a err msg, and remember the origin values.
  # if this method is private, it causes the render error.
  def ref_err
	set_flash_params
	render "index"
  end

    private
    def set_flash_params
	flash[:shopcode] = params[:shopcode]
	flash[:email] = params[:email]
    end


end
