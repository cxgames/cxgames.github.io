require 'liquid'
require 'yaml'

@configfile = YAML.load_file("emulators.yml")

###
@inputfile = File.open("emulators.liquid")

@template = Liquid::Template.parse(@inputfile.read)

@configfile.each do |gamename, gamedata|
    htmlcode = @template.render(
        "gamename" => gamename,
        "game" => gamedata
    )
    outfile   = File.open("#{gamename}.html","w")
    outfile.write htmlcode
    outfile.close
end