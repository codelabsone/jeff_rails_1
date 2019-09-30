module AutomotivesHelper
  def image_for(stock)
    if stock.url.blank?
      image_tag('th.jpg', size: "100x100")
    else
      image_tag(stock.url, size: "100x100")
  end
end
end
