require 'spec_helper'

describe IndexController do

  describe "GET 'advocates'" do
    it "returns http success" do
      get 'advocates'
      response.should be_success
    end
  end

end
