
[1mFrom:[0m /mnt/c/Users/jdegr/dev/flatiron/labs/modification-nested-routes-lab-online-web-sp-000/app/controllers/songs_controller.rb @ line 54 SongsController#edit:

    [1;34m44[0m: [32mdef[0m [1;34medit[0m
    [1;34m45[0m:   [32mif[0m params[[33m:artist_id[0m]
    [1;34m46[0m:     artist = [1;34;4mArtist[0m.find_by([35mid[0m: params[[33m:artist_id[0m])
    [1;34m47[0m:     binding.pry
    [1;34m48[0m: 
    [1;34m49[0m:     [32mif[0m artist.nil?
    [1;34m50[0m:       binding.pry
    [1;34m51[0m: 
    [1;34m52[0m:       redirect_to artists_path(artist), [35malert[0m: [31m[1;31m"[0m[31mArtist_not_found.[1;31m"[0m[31m[0m
    [1;34m53[0m:     [32melse[0m
 => [1;34m54[0m:       binding.pry
    [1;34m55[0m:       @song = artist.songs.find_by([35mid[0m: params[[33m:id[0m])
    [1;34m56[0m:       redirect_to artist_songs_path(@song), [35malert[0m: [31m[1;31m"[0m[31mSong_not_found.[1;31m"[0m[31m[0m [32mif[0m @song.nil?
    [1;34m57[0m:     [32mend[0m
    [1;34m58[0m:   [32melse[0m
    [1;34m59[0m:     @song = [1;34;4mSong[0m.find(params[[33m:id[0m])
    [1;34m60[0m:   [32mend[0m
    [1;34m61[0m: [32mend[0m

