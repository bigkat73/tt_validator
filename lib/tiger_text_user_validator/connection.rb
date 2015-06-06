module TigerTextUserValidator

  class Connection

    attr_reader :user_name, :pass, :url_string, :ts

    def initialize(args)
      @user_name = args[:user_name] || 'user_name'
      @pass = args[:password] || 'password'
      @ts = (Time.now.to_i * 1000).to_s
    end

    def url_string
      @url_string ||= 'https://home.tigertext.com/cn/connect?req=%7B%22username%22%3A%22' + user_name + '%22%2C%22password%22%3A%22' + pass + '%22%2C%22id%22%3A%22' + user_name + '%22%2C%22ts%22%3A' + ts + '%7D&build_number=81&_=' + ts
    end

    def tt_uri
      @tt_uri ||= URI(url_string)
    end

  end

end
