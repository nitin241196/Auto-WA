
require 'watir'

browser = Watir::Browser.new :chrome
browser.goto("https://web.whatsapp.com/")

  browser.text_field(title: 'Search or start new chat').set 'name of person or group'

  browser.send_keys :enter
  element=browser.div(:class => "pluggable-input-body")


  10.times do
    element.send_keys ["wtf"]
    browser.send_keys :enter
    sleep 2
  end
