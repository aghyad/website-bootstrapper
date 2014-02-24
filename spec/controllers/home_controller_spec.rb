require 'spec_helper'

describe HomeController do

  context "When signed in" do
    login_user
    it "have current_user value set (NOT nil)" do
      expect(subject.current_user).to_not be_nil
    end
    it "have current_user value set to a user object" do
      u = build(:user)
      expect(subject.current_user.class).to eq u.class
    end
    it "have current_user value set with correct user data" do
      u = build(:user)
      expect(subject.current_user.email).to eq u.email
    end
  end

  context "When signed in" do
    describe "GET 'index'" do
      login_user
      it "returns http failure" do
        get 'index'
        expect(response).to be_success
      end
    end
  end

  context "When NOT signed in" do
    describe "GET 'index'" do
      it "redirects to sign-in page" do
        get 'index'
        expect(response).to redirect_to new_user_session_path
      end
    end
  end

end
