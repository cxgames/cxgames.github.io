require 'liquid'
require 'yaml'
require 'pp'
@gamelist = YAML.load_file("gamelist.yml")
pp @gamelist


@inputfile = File.open("index.liquid")
@outfile   = File.open("index.html","w")

@template = Liquid::Template.parse(@inputfile.read)
@outfile.write @template.render(
    #"emulators_keys" => @gamelist["emulators"].keys,
    "games" => @gamelist,
)

@outfile.close
@inputfile.close