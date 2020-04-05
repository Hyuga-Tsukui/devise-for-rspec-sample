require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /posts" do
    before do
      #認証ユーザーを作成します。
      #各変数の中身は何でも良いです。passwordとpassword_confirmationが一致することだけ確認してください。
      @user = User.create(email: 'test@test.com', password: "password", password_confirmation: "password")
    end

    it "works! (now write some real specs)" do
      #認証処理を行います
      sign_in @user
      get posts_path
      expect(response).to have_http_status(200)
    end
  end
end
