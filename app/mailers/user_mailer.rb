class UserMailer < ActionMailer::Base
  default :from => "setup@sales-promotions.com"
  
  def reseller_added(reseller)
    @reseller = reseller
  mail :to => reseller.email, :subject => 'Reseller Setup'
  end
end
