require 'spec_helper'

describe MultiTaskController do

  describe "GET 'type'" do
    it "returns http success" do
      get 'type'
      response.should be_success
    end
  end

  describe "GET 'form'" do
    it "returns http success" do
      get 'form'
      response.should be_success
    end
  end

end
