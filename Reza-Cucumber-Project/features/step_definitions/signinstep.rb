require 'rubygems'
require 'selenium-webdriver'

Satu = (/^I am on sin in page$/)
driver = Selenium::WebDriver.for :chrome
driver.get 'http://sandbox.jurnal.id'
;

Dua = (/^I fill "([^"]*)" with "([^"]*)"$/)
element = driver.find_element(:css, 'input#user_email.form-control').send_key 'reza.zakaria@sleekr.co'
element = driver.find_element(:css, 'input#user_password.form-control').send_key 'sanami2701'
# <INPUT TYPE="text" NAME="name" VALUE="value" SIZE="40">
# element.send 'reza.zakaria@sleekr.co'
# element.submit
# element = driver.text_field('Password','_')
# element.send 'sanami2701'
# element.submit
;

Tiga = (/^I press "([^"]*)" button$/)
element = driver.find_element(:css, 'input#new-signin-button.btn.btn-primary.btn-block.btn-login').click
;

Empat = (/^I should be on the dashboard page$/)
;