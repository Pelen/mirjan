require 'spec_helper'

describe User do

  before(:each) do
    @attr = {
      :email => "user@example.com",
      :password => "changeme",
      :password_confirmation => "changeme"
    }
  end

  it "expect create a new instance given a valid attribute" do
    User.create!(@attr)
  end

  it "expect require an email address" do
    no_email_user = User.new(@attr.merge(:email => ""))
    no_email_user.should_not be_valid
  end

  it "expect accept valid email addresses" do
    addresses = %w[user@foo.com THE_USER@foo.bar.org first.last@foo.jp]
    addresses.each do |address|
      valid_email_user = User.new(@attr.merge(:email => address))
      expect(valid_email_user).to be_valid
    end
  end

  it "expect reject invalid email addresses" do
    addresses = %w[user@foo,com user_at_foo.org example.user@foo.]
    addresses.each do |address|
      invalid_email_user = User.new(@attr.merge(:email => address))
      invalid_email_user.should_not be_valid
    end
  end

  it "expect reject duplicate email addresses" do
    User.create!(@attr)
    user_with_duplicate_email = User.new(@attr)
    user_with_duplicate_email.should_not be_valid
  end

  it "expect reject email addresses identical up to case" do
    upcased_email = @attr[:email].upcase
    User.create!(@attr.merge(:email => upcased_email))
    user_with_duplicate_email = User.new(@attr)
    user_with_duplicate_email.should_not be_valid
  end

  describe "passwords" do

    before(:each) do
      @user = User.new(@attr)
    end

    it "expect have a password attribute" do
      expect(@user).to respond_to(:password)
    end

    it "expect have a password confirmation attribute" do
      expect(@user).to respond_to(:password_confirmation)
    end
  end

  describe "password validations" do

    it "expect require a password" do
      User.new(@attr.merge(:password => "", :password_confirmation => "")).
        should_not be_valid
    end

    it "expect require a matching password confirmation" do
      User.new(@attr.merge(:password_confirmation => "invalid")).
        should_not be_valid
    end

    it "expect reject short passwords" do
      short = "a" * 5
      hash = @attr.merge(:password => short, :password_confirmation => short)
      User.new(hash).should_not be_valid
    end

  end

  describe "password encryption" do

    before(:each) do
      @user = User.create!(@attr)
    end

    it "expect have an encrypted password attribute" do
      expect(@user).to respond_to(:encrypted_password)
    end

    it "expect set the encrypted password attribute" do
      @user.encrypted_password.should_not be_blank
    end

  end

  describe "user create" do  

   it "adding user and increment user count" do
       expect do
          @user = FactoryGirl.create(:user)
          @user.save
      end.to change(User, :count).by(1)
    end
  end

  describe "#POST #delete" do  
  before :each do 
      @user = FactoryGirl.create(:user) 
      @user.save
    end 
  
  it "remove user" do
      expect do
         User.delete(@user.id)
      end.to change(User, :count).by(-1)
    end
  end

describe "#POST #find" do  
  before :each do 
      @user = FactoryGirl.create(:user) 
      @user.save
    end 
  
  it "find user" do
      expect do
        @found_user = User.find(@user.id)
        @found_user.id.should_receive(@user.id)
    end
end
end



end