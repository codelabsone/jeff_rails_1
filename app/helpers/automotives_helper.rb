module AutomotivesHelper
  def image_for(stock)
    if stock.url.blank?
      image_tag('th.jpg', size: "200x200")
    else
      image_tag(stock.url, size: "200x200")
  end
end
end
