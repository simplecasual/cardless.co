class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def vcard
    @user = User.find(params[:id])
    vcard = VCardigan.create
    vcard.fullname @user.name
    vcard.photo 'http://strummer.com/joe.jpg', :type => 'uri'
    vcard.email @user.email, :type => ['work', 'internet'], :preferred => 1
    vcard[:item1].url 'http://strummer.com'
    send_data vcard.to_s, :filename => "#{@user.username}.vcf"
  end
end
