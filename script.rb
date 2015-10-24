require './downloader.rb'

# relative path you want to save to
# eg. 'folder1/subfolder'
save_location = 'usagi_drop_ost'

# the uri that you want to start to download from
uri = 'http://anime.thehylia.com/soundtracks/album/usagi-drop-original-soundtrack'

# since there will probably extraneous/irrelevant links on the page,
# specify a 'match' that pertains to the selected links
# eg. if I have two links
#        <href='https://somelink.com/coolsongs/song1'
#        <href='https://somelink.com/coolsongs/song2'
#     I will use the match ':href => /song'
match = {:href => /usagi/}

# run script
downloader = Downloader.new
downloader.download(uri, save_location, match)