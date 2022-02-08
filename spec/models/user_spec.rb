require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Users' do

    it 'same password' do
      @user = User.new(Firstname: 'Yun', Lastname:'Lee', email:'test123@testing.com', password:'1353', password_confirmation:"133")
      @user.save
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
  end

  describe 'Validations' do
    # validation examples here
    it 'length of password' do
      @user = User.new(Firstname: 'Yun', Lastname:'Lee', email:'test123@testing.com', password:'13', password_confirmation:"13")
      @user.save
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 3 characters)")
    end
  end

  describe '.authenticate_with_credentials' do
    # examples for this class method here
    it 'authenticate' do 
      @user = User.new(Firstname: 'Yun', Lastname:'Lee', email:'test123@testing.com', password:'1353', password_confirmation:"1353")
      @user.save

      @session = User.authenticate_with_credentials('test123@testing.com', "1353")
      result = @session.id
      expect(result).to match(@session.id)
    end
  end
end