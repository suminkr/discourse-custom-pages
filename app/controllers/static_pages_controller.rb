class StaticPagesController < ApplicationController
    def about
      # 플러그인 기능이 비활성화되어 있다면 404 응답
      unless SiteSetting.static_pages_enabled
        render plain: "Static pages are disabled.", status: 404 and return
      end
  
      @page_title   = SiteSetting.static_pages_about_title
      @page_content = SiteSetting.static_pages_about_content
  
      render template: "static_pages/about", layout: "application"
    end
  end
  