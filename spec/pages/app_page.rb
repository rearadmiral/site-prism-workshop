require 'site_prism'

class AppPage < SitePrism::Page

  element :header, 'h1'
  elements :items, 'ul li'
  element :input, 'input'
  element :button, 'button'

  URL = "http://localhost:9292"

  set_url URL

end
