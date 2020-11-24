require 'rubygems'
require 'selenium-webdriver'

First = (/^I am on sin in page$/)
driver = Selenium::WebDriver.for :chrome
driver.get 'http://sandbox.jurnal.id'
;

Second = (/^I fill "([^"]*)" with "([^"]*)"$/)
driver.find_element(:css, 'input#user_email.form-control').send_key 'reza.zakaria@sleekr.co'
driver.find_element(:css, 'input#user_password.form-control').send_key 'sanami2701'
# <INPUT TYPE="text" NAME="name" VALUE="value" SIZE="40">
# element.send 'reza.zakaria@sleekr.co'
# element.submit
# element = driver.text_field('Password','_')
# element.send 'sanami2701'
# element.submit
;

Third = (/^I press "([^"]*)" button$/)
driver.find_element(:css, 'input#new-signin-button.btn.btn-primary.btn-block.btn-login').click
;

Fourth = (/^I should be on the dashboard page$/)
# void 'successfully sign in'
;

Fifth = (/^I click "([^"]*)" button$/)
driver.find_element(:css, 'li#menu-bar-invoice-create').click
# element.click
;

Sixth = (/^I am on sales invoice form$/)
# Selenium::WebDriver::Wait.new(timeout: 60)
# 'wait'
;

Seventh = (/^I click "([^"]*)" container$/)
driver.find_element(:css, 'div.customer').click
;

Eighth = (/^I choose "([^"]*)"$/)
dropdown_list = driver.find_element(:id, 's2id_transaction_person_id')
options = dropdown_list.find_elements(:tag_name, 'li')
options.each { |option| option.click if option.text == 'Customer SAP' }
# selected_option = options.map { |option| option.text if option.selected? }.join
#   (selected_option).to eql 'Customer SAP'
;

Ninth = (/^I click "([^"]*)" container$/)
driver.find_element(:id, 'transaction_transaction_date').send_key '10/10/2020'
;
#
# And = (/^I choose "([^"]*)"$/)
#   # element = driver.find_element(name: "20")
#   # element.click
# ;
#
Tenth = (/^I click "([^"]*)"$/)
dropdown_list = driver.find_element(:id, 's2id_transaction_transaction_lines_attributes_0_product_id')
options = dropdown_list.find_elements(:tag_name, 'div')
options.each { |option| option.click if option.text == 'product A' }
;
#
Eleventh = (/^I fill"([^"]*)" with "([^"]*)"$/)
driver.find_element(:id, 'transaction_transaction_lines_attributes_0_rate').send_key '10000'
;
#
Twelveth =  (/^I click "([^"]*)" button$/)
dropdown_list = driver.find_element(:id, 'create_button')
options = dropdown_list.find_elements(:tag_name, 'tr')
options.each { |option| option.click if option.text == 'Create' }
;