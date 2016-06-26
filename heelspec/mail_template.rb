require "heel/bot"
require "heel/mail"

module Heelspec
  class MailTemplate < Heel::Bot::Bot
    def initialize
      @bot_name = "Mail Template Generator"
      @bot_version = "1.0.0"
    end

    def run(cmd)
      @mail = Heel::MailHelper.new

      require_relative "./group_members"
      gm = GroupMembers.new
      info = gm.get_group "dev"
      to_people = info[:members]
      @mail.add_to!(to_people, "@baidu.com")
      puts @mail.to
    end
  end
end