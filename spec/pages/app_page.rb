require 'site_prism'

class AppPage < SitePrism::Page

  element :header, 'h1'

  URL = "http://localhost:9292"

  set_url URL

end
