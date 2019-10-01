module AutomotivesHelper
  def image_for(stock)
    if stock.url.blank?
      image_tag('th.jpg', size: "160x90")
    else
      image_tag(stock.url, size: "160x90")
  end
end
end
