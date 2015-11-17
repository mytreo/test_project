require 'rails_helper'

describe "Card pages" do
  subject { page }
  let(:card) { FactoryGirl.create(:card) }

  describe "index" do
    before do
      visit root_path #'/'
    end
    it { should have_title('Index') }
  end

  describe "show" do
    before do
      visit card_path(card)
    end
    it { should have_title('Show') }
    it { should have_selector('span', text: "Card# #{card.id}")}
    it { should have_link('edit', href: edit_card_path(card)) }

    describe "destroy action",type: :request do
      before { delete card_path(FactoryGirl.create(:card)) }
      specify { expect(response).to redirect_to(root_path) }
    end
  end

  describe "new" do
    before do
      visit new_card_path
    end
    it { should have_title('New') }

    describe "try to create" do
      before do
        fill_in "card_text_ru",         with: "example ru"
        fill_in "card_text_en",        with: "example en"
      end

      it "should create a card" do
        expect { click_button "Create Card" }.to change(Card, :count).by(1)
      end
    end
  end

  describe "edit" do
    before do
      visit edit_card_path(card)
    end
    it { should have_title('Edit') }

    describe "try to edit" do
      let(:new_text_ru)  { "New text" }
      before do
        fill_in "card_text_ru",         with: new_text_ru
        click_button "Edit Card"
      end
      it { should have_selector('span', text: "Card# #{card.id}") }
      specify { expect(card.reload.text_ru).to  eq new_text_ru }
    end
  end
end