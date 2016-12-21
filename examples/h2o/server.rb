class Server
  def call(env)
    [200,
     {
       "content-type" => "text/plain; charset=utf-8",
     },
     ["Hello mruby in h2o!"]
    ]
  end
end

Server.new
