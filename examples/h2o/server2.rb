class Server
  def call(env)
    response = fetch_response env['PATH_INFO']
    if response
      [200,
       {
         "content-type" => "text/plain; charset=utf-8",
       },
       [response]
      ]
    else
      [404,
       {
         "content-type" => "text/plain; charset=utf-8",
       },
       ["Not found"]
      ]
    end
  end

  def fetch_response(path)
    yaml = YAML.load(File.open('data.yml').read)
    message = nil
    yaml['responses'].each do |res|
      if res['path'] == path
        message = res['message']
      end
    end
    message
  end
end

Server.new
