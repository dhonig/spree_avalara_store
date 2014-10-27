require 'spec_helper'

describe Spree::Admin::AvalaraUseCodeItemsController do
  context "#index" do

  end
  context "#show" do
    it "shows the use code of the id parameter" do
      @use_code = AvalaraUseCodeItem.create(use_code: "A", use_code_description: "Federal government")
      get :show, id: @use_code.id
      expect(assigns(:post)).to eq(post)

    end
  end
end