require 'toto'

# Rack config
use Rack::Static, :urls => ['/css', '/js', '/images', '/favicon.ico'], :root => 'public'
use Rack::CommonLogger

if ENV['RACK_ENV'] == 'development'
  use Rack::ShowExceptions
end

#
# Create and configure a toto instance
#
toto = Toto::Server.new do
  #
  # Add your settings here
  # set [:setting], [value]
  # 
  # set :author,    ENV['USER']                               # blog author
  # set :title,     Dir.pwd.split('/').last                   # site title
  # set :root,      "index"                                   # page to load on /
  # set :date,      lambda {|now| now.strftime("%d/%m/%Y") }  # date format for articles
  # set :markdown,  :smart                                    # use markdown + smart-mode
  # set :disqus,    'bitmap'                                  # disqus id, or false
  # set :summary,   :max => 150, :delim => /~/                # length of article summary and delimiter
  # set :ext,       'txt'                                     # file extension for articles
  # set :cache,      28800                                    # cache duration, in seconds
	
	set :author, "Cristina Fonseca"
	set :date, lambda {|now| now.strftime("%d %b %Y") }
	set :summary, :max => 1000, :delim => /~\n/
	set :disqus, 'fadeyev'
	set :title, 'Dmitry Fadeyev'
	set :url, 'http://fadeyev.net'
	
  	set :date, lambda {|now| now.strftime("%B #{now.day.ordinal} %Y") }


  set :description, 'This is our blog!!!'


end



run toto


