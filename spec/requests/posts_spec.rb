require 'rails_helper'

RSpec::Matchers.define :match_response_schema do |resource|
  match do |response|
    schema = File.read("docs/schema/#{resource}.json")
    data = JSON.parse(response.body)

    JSON::Validator.validate!(schema, data)
  end
end

RSpec.describe "Posts", type: :request do
  describe "GET /v1/post/:id" do
    before do
      @post = FactoryBot.create(:post)
      get v1_post_path(@post)
      @json = JSON.parse(response.body)
    end

    it '200が返ってくる' do
      expect(response).to be_success
      expect(response.status).to eq 200
    end

    it '取得したデータのcontentがhogehogehoge' do
      expect(@json["post"]["content"]).to eq "hogehogehoge"
    end

    it 'responseがjson-schemaと一致' do
        expect(response).to match_response_schema("schema")
    end
  end

  describe "GET /v1/posts" do
    before do
      get v1_posts_path
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