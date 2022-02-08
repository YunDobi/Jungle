require 'rails_helper'


  RSpec.describe Product, type: :model do
    
      describe 'Validations' do
        @category = Category.new(name: "Testing")

        it 'should create a product if all of the validations are true' do
        @product = Product.new(name: "Googly eyes", price_cents: 1000, quantity: 100, :category => @category)
        @product.valid?
        expect(@product.errors).not_to include("can\'t be blank")
        end
      end

      it 'should not create a product if the name is missing' do
        @product = Product.new(price_cents: 1000, quantity: 100, :category => @category)
        @product.valid?
        expect(@product.errors[:name]).to include("can\'t be blank")
      end

      it 'should not create a product if the price is missing' do
        @product = Product.new(name: "Googly eyes", quantity: 100, :category => @category)
        @product.valid?
        expect(@product.errors[:price_cents]).to include("is not a number")
      end

      it 'should not create a product if the quantity is missing' do
        @product = Product.new(name: "Googly eyes", price_cents: 1000, :category => @category)
        @product.valid?
        expect(@product.errors[:quantity]).to include("can\'t be blank")
      end

      it 'should not create a product if the quantity is missing' do
        @product = Product.new(name: "Googly eyes", price_cents: 1000, quantity: 100)
        @product.valid?
        expect(@product.errors[:category]).to include("can\'t be blank")
      end
end