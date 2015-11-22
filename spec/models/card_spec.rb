require 'rails_helper'

describe Card do
  before do
    @card= Card.new(text_ru: "example ru", text_en: "example en",
                  review_date: Date.today)
  end

  subject { @card }

  it { should respond_to(:text_ru) }
  it { should respond_to(:text_en) }
  it { should respond_to(:review_date) }
end