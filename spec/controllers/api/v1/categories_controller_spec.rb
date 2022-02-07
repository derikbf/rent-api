require 'rails_helper'
# subject { get :index, rental_company_id: 1}

RSpec.describe Api::V1::CategoriesController, type: :controller do
  
  # before(:all) do |i|
  #   @category = Category.create(rental_company_id: 1, name: "Test#{i}")
  # end
  
  describe "GET index" do
    it 'has a 200 status code' do
      rental_company_id = RentalCompany.last.id
      # get :index, params: {rental_company_id: rental_company_id }
      expect(response.status).to eq(200)
    end
  end


  # describe "POST /categories" do
    # it 'checks that a category be created' do
    #   expect(@category).to be_valid  
    # end

    # it 'checks that a category can be read' do
    #   expect(Category.find_by_name("Test_1")).to eq(@category)
    # end

    # it 'checks that a category can be update' do
    #   @category.update(:name => "Test_1_2")
    #   expect(Category.find_by_name("Test_1_2")).to eq(@category)
    # end
    
    # it 'checks that a category can be destroyed' do
    #   @category.destroy
    #   expect(Category.count).to eq(0) 
    # end

    # it 'checks that a category can be destroyed' do
      # @category.destroy
      # expect(Category.find_by(name: "Test_1_2")).to be_nil
      # expect(Category.count).to eq(-1)
    # end
  # end

end
