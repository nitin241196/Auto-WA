
# data=File.read("/Users/nitin/Downloads/WhatsApp Chat with CSE V B.txt")
data=File.read("/Path/to/File/filename")

info = data.split("\n")
message = []

info.each { |x|
    message << x
}
collection=[]


message.each { |x|
    if !x.nil?
    time = x.split('-',2).first
    rest = x.split('-',2).last
    end

    if !rest.nil?
    name =rest.split(':',2).first
    message_content=rest.split(':',2).last
    end


    collection << [[name,message_content,time]]
    # puts collection
# rest = x.split(':').first
    # puts rest
}

wish=[]
    collection.each {|z|
        message = z[0][1]
        if !message.nil?
            if ((message.include? "Happy" )&& (message.include? "Your name"))
                wish << z[0][0]
            end

        end


    }

    require 'watir'

    browser = Watir::Browser.new :chrome
    browser.goto("https://web.whatsapp.com/")

      browser.text_field(title: 'Search or start new chat').set 'Aman'

      browser.send_keys :enter
      element=browser.div(:class => "pluggable-input-body")
      # element=browser.div(class: ["pluggable-input-body", "copyable-text", "selectable-text"])


        wish.each{|p|
        element.send_keys ["thanks" + ":" +p]
        browser.send_keys :enter
        sleep 2
    }
