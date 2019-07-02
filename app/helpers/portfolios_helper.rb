module PortfoliosHelper
  def image_generator(width:, height:)
    "http://placehold.it/#{width}x#{height}"
  end

  def portfolio_image(image, type)
    if image.model.main_image? || image.model.thumb_image?
      image
    elsif type == 'thumb'
      image_generator(width: "350", height: "200")
    elsif type == 'main'
      image_generator(width: "600", height: "400")
    end
  end
end
