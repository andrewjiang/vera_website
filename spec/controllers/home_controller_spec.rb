require 'spec_helper'

describe HomeController do

  describe "GET 'advocates'" do
    it "returns http success" do
      get 'advocates'
      response.should be_success
    end
  end

end
