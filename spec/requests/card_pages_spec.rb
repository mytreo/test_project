require 'rails_helper'


describe "Card pages" do

 
  subject { page }
 let(:card) { FactoryGirl.create(:card) }



 describe "index" do
 #  visit root_path
 it { should have_title('Index') }
 end
 
#  describe "show" do
#   visit card_path
#   it { should have_title('Show') }
# end
 
 # describe "new" do
 #  visit new_card_path
 #  it { should have_title('New') }
 #end
 
# describe "edit" do
 #  visit edit_card_path(:card)
#   it { should have_title('Edit') }
# end
 



end
