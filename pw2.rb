module Notification
  def self.included(base)
    base.extend(ClassMethods)
  end

    module ClassMethods
      def log
        File.open("#{self.name}.log", 'r').each { |file| puts file }
      end
    end

  def add_to_log(err)
    File.open("#{self.class}.log", 'a') { |file| file.puts(err) }
  end

#  def send_message(recepient)
#    puts "#{self.class} to: #{recepient}"
#  end

# For additional task
  
  def send_message(recepient)
    yield if block_given?
    Service::Deliver.new.send(self.class.to_s.downcase, recepient)
  end
end

module Service
  class Deliver
    def sms(recepient)
      puts 'Sending message via SMS service'
    end
    
    def email(recepient)
      puts 'Sending message via Email service'
    end
  end
end

class Email
  include Notification
  def send_message(mailto)
    if mailto =~ /^[a-z0-9]+@[a-z0-9]+\.[a-z]+/
      super
    else
      add_to_log ('Incorrect email address: ' + mailto)
    end
  end
end

class SMS
  include Notification
  def send_message(phone)
    if phone =~ /\+\d{12}$/
      super
    else
      add_to_log('Incorrect phone number: ' + phone)
    end
  end
end

Email.new.send_message('example@mail.com')
Email.new.send_message('example@mail')
p '-------------'
Email.log

SMS.new.send_message('+380671234567')
SMS.new.send_message('+123')
SMS.log
