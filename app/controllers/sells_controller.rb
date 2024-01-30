class SellsController < ApplicationController
  def index
    @sells = Sell.all
    @total_revenue = calculate_total_revenue(@sells)
    @sell_count = @sells.count
    @most_sold_product = find_most_sold_product(@sells)
  end

  def new
    @sell = Sell.new
    @products = Product.all
  end

  def show
    @sell = Sell.find(params[:id])
  end

def create
  @sell = Sell.new(sell_params)
  @sell.total = calculate_total(@sell.products)

  if @sell.save
    redirect_to sell_path(@sell)
  else
    render 'new'
  end
end

  private

  def sell_params
    params.require(:sell).permit(:product_id, :user_id, product_ids: [])
  end

  def calculate_total(product_ids)
    # Implement your logic to calculate the total based on the product
    # For example, you can sum the prices of selected products
    Product.where(id: product_ids).sum(&:price)
  end

  def calculate_total_revenue(sells)
    sells.sum { |sell| sell.products.sum(&:price) }
  end

  def find_most_sold_product(sells)
    product_counts = Hash.new(0)

    sells.each do |sell|
      sell.products.each do |product|
        product_counts[product] += 1
      end
    end

    most_sold_product = product_counts.max_by { |_product, count| count }

    most_sold_product&.first
  end

end
