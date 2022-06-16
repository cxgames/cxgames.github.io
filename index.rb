require 'liquid'
@gamelist = "icons/smb.jpg#games/emulators/smb.html
icons/smb2.jpg#games/emulators/smb2.html
icons/light-up.jpg#games/irishgreencitrus/light-up.html
icons/binded-defense.jpg#games/irishgreencitrus/binded-defense.html
icons/interconnected.jpg#games/irishgreencitrus/interconnected.html
icons/sonic1.jpg#games/emulators/sonic.html
icons/bobl.jpg#games/emulators/bobl.html
icons/metroid.jpg#games/emulators/metroid.html
icons/mgman.jpg#games/emulators/mgman.html
icons/doom.jpg#games/doom
icons/smb3.jpg#games/emulators/smb3.html
icons/smb3mix.jpg#games/emulators/smb3mix.html
icons/smw.jpg#games/emulators/smw.html
icons/spacegulls.jpg#games/emulators/spacegulls.html
icons/tetris.jpg#games/emulators/tetris.html
icons/allstars.jpg#games/emulators/allstars.html
icons/marioland.jpg#games/emulators/marioland.html
icons/marioland2.jpg#games/emulators/marioland2.html
icons/pkmonblue.jpg#games/emulators/pkmonblue.html
icons/pkmonred.jpg#games/emulators/pkmonred.html
icons/pkmonemerald.jpg#games/emulators/pkmonemerald.html
icons/pkmonfirered.jpg#games/emulators/pkmonfirered.html
icons/pkmonleafgreen.jpg#games/emulators/pkmonleafgreen.html
icons/pkmonruby.jpg#games/emulators/pkmonruby.html
icons/pkmonsapphire.jpg#games/emulators/pkmonsapphire.html
icons/pkmonyellow.jpg#games/emulators/pkmonyellow.html
icons/sonic2.jpg#games/emulators/sonic2.html
icons/sonic3.jpg#games/emulators/sonic3.html
icons/zelda.jpg#games/emulators/zelda.html
icons/zeldagb.jpg#games/emulators/zeldagb.html
icons/zeldaminish.jpg#games/emulators/zeldaminish.html
icons/yoshiland.jpg#games/emulators/yoshiland.html
icons/bloxorz.jpg#games/flash/bloxorz.html
icons/ssf.jpg#games/flash/ssf.html
icons/fancypantsadventure.jpg#games/flash/fancypantsadventure.html
icons/papaspizzeria.jpg#games/flash/papaspizzeria.html
icons/tanktrouble.jpg#games/flash/tanktrouble.html
icons/learntofly.jpg#games/flash/learntofly.html
icons/ufo.p8.png#games/pico8/ufo.html
icons/celeste.p8.png#games/pico8/celeste.html
icons/fnf.p8.png#games/pico8/fnf.html
icons/fuz.p8.png#games/pico8/fuz.html
icons/picodriller.p8.png#games/pico8/picodriller.html
icons/maze_game.jpg#games/emulators/maze_game.html"
.split("\n")
.map { |string| string.strip }
.map {|i| i.split("#")}


@inputfile = File.open("index.liquid")
@outfile   = File.open("index.html","w")

@template = Liquid::Template.parse(@inputfile.read)
@outfile.write @template.render(
    "gamelist" => @gamelist,
)

@outfile.close
@inputfile.close