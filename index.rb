require 'liquid'
require 'yaml'
@gamelist = YAML.load_file("gamelist.yml")



@inputfile = File.open("index.liquid")
@outfile   = File.open("index.html","w")

@template = Liquid::Template.parse(@inputfile.read)
@outfile.write @template.render(
    "gamelistkeys" => @gamelist.keys,
    "gamelist" => @gamelist,
)

@outfile.close
@inputfile.close