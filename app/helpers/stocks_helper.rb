module StocksHelper
  def format_average_stars(stock)
    if stock.average_stars.nil?
      content_tag(:strong, 'No reviews')
    else
      pluralize(number_with_precision(stock.average_stars, precision: 1) , 'star')
    end
  end
end
