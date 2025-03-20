require 'rails_helper'

RSpec.describe "Root Page Title", type: :request do
  it "has a <title> tag longer than 20 characters" do
    get root_path
    html = Nokogiri::HTML(response.body) # Analyse le HTML
    title = html.at('title')&.text # Récupère le texte de la balise <title>

    expect(title).not_to be_nil
    expect(title.length).to be > 20 # Vérifie que le titre fait plus de 20 caractères
  end
end
