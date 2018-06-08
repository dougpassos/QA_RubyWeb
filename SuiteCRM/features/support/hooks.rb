Before do 
	@login_page = Login_page.new
	@home_page = Home_page.new	
end




AfterStep do |scenario|

Dir.mkdir('reports') unless Dir.exist?('reports')
binding.pry
  sufix = ('error' if scenario.failed?) || 'success'
  nome = scenario.name.tr(' ', '_').downcase

  nome_screenshot = "reports/#{sufix}-#{nome}_#{Time.now.strftime('%y%m%d_%H%M%S')}.png"
  #nome_screenshot = "reports/#{sufix}-#{name}.png"
  page.save_screenshot(nome_screenshot)
  embed(nome_screenshot, 'image/png', 'SCREENSHOT')


end