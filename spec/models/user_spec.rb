require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user_one) {User.create(first_name: "Test", last_name: "Ing", email: "test@yas.com", password: "password", password_confirmation: "password")}
  
  describe "Validations" do
    it "is valid" do
      expect(user_one).to be_valid
    end

    it "is not valid if the password and password_confirmation do not match" do
      user_one.password_confirmation = "Jungle"
      expect(user_one).to_not be_valid
      expect(user_one.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it "is not valid if the email is not unique" do
      user_two = User.create(first_name: "Test", last_name: "Ing", email: "test@yas.com", password: "password", password_confirmation: "password")      
      user_three = User.create(first_name: "Test", last_name: "Ing", email: "test@yas.com", password: "password", password_confirmation: "password")
      expect(user_three).to_not be_valid
    end

    it "is not valid if the email is not unique, regardless of case" do
      user_three = User.create(first_name: "Test", last_name: "Ing", email: "test@yas.com", password: "password", password_confirmation: "password")      
      user_four = User.create(first_name: "Test", last_name: "Ing", email: "TEST@YAS.COM", password: "password", password_confirmation: "password")

      expect(user_four).to_not be_valid
    end

    it "is not valid if the password length is less than 5" do
      user_five = User.create(first_name: "Test", last_name: "Ing", email: "another@yas.com", password: "pass", password_confirmation: "pass")
      expect(user_five).to_not be_valid
    end
  end

  describe '.authenticate_with_credentials' do

    it "returns nil if the user cannot be authenticated" do
      user_six = User.create(first_name: "Test", last_name: "Ing", email: "test@yas.ca", password: "password", password_confirmation: "password")
      expect(User.authenticate_with_credentials("test@yas.ca", "wrong")).to be_nil
    end

    it "returns the user if the user can be authenticated" do
      user_six = User.create(first_name: "Test", last_name: "Ing", email: "testing@yas.com", password: "password", password_confirmation: "password")
      expect(User.authenticate_with_credentials("testing@yas.com", "password")).to be_truthy.and have_attributes(:email => "testing@yas.com")
    end

    it "saves user email after changing to lowercase and removing whitespace" do
      user_seven = User.create(first_name: "Test", last_name: "Ing", email: "test@test.com", password: "password", password_confirmation: "password")
      expect(User.authenticate_with_credentials("  TEST@test.com", "password")).to be_truthy.and have_attributes(:email => "test@test.com")
    end
  end

end
