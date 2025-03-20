require 'rails_helper'

RSpec.describe "Root Page", type: :request do
  it "returns a 200 status" do
    get root_path
    expect(response).to have_http_status(:ok) # Vérifie que le statut est 200
  end
end
