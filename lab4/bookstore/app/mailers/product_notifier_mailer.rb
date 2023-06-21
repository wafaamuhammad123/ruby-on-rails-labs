class ProductNotifierMailer < ApplicationMailer


  def new_product_mail
    mail(to: "mahmoud@test.com", subject: "New product created")
  end

end
