require 'rails_helper'

RSpec::Matchers.define :match_response_schema do |resource|
  match do |response|
    schema = File.read("docs/schema/#{resource}.json")
    data = JSON.parse(response.body)

    JSON::Validator.validate!(schema, data)
  end
end

RSpec.describe "Users", type: :request do
  describe "GET /v1/user/:id" do
    before do
      @user = FactoryBot.create(:user)
      get v1_user_path(@user)
      @json = JSON.parse(response.body)
    end

    it '200が返ってくる' do
      expect(response).to be_success
      expect(response.status).to eq 200
    end

    it '取得したデータのnameがhoge' do
      expect(@json["user"]["name"]).to eq "hoge"
    end

    it 'responseがjson-schemaと一致' do
        expect(response).to match_response_schema("schema")
    end
  end

  describe "GET /v1/users" do
    before do
      get v1_users_path
      @json = JSON.parse(response.body)
    end

    it '200が返ってくる' do
      expect(response).to be_success
      expect(response.status).to eq 200
    end

    it 'responseがjson-schmaと一致' do
        expect(response).to match_response_schema("schema")
    end
  end
end
