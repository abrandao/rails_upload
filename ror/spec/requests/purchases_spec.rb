require 'rails_helper'

RSpec.describe "Purchases", type: :request do
  describe "GET /" do
    it "should get index" do
      get '/'
      expect(response).to have_http_status(200)
    end
  end
end
