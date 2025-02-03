# name: static-pages
# about: 플러그인 설정을 통한 정적 페이지 추가 예제
# version: 0.2
# authors: Your Name

enabled_site_setting :static_pages_enabled

Discourse::Application.routes.append do
  get '/about' => 'static_pages#about'
end
