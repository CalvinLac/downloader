require ''

# relative path you want to save to
# eg. 'folder1/subfolder'
save_location = ''

# the uri that you want to start to download from
uri = ''

# since there will probably extraneous/irrelevant links on the page,
# specify a 'match' that pertains to the selected links
# eg. if I have two links
#        <a href='https://somelink.com/coolsongs/song1'>band</a>
#        <a href='https://somelink.com/coolsongs/song2'>band2</a>
#     I could use matches like :href => /song/, :text => /band/
match = {}

# run script
downloader = Downloader.new
downloader.download(uri, save_location, match)