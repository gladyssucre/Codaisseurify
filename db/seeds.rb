Song.destroy_all
Artist.destroy_all

maroon5 = Artist.create!(name: "Maroon 5", image: "https://res.cloudinary.com/drp9nvz64/image/upload/t_media_lib_thumb/v1507967051/Maroon5_nexeyz.jpg", bio: "Maroon 5 is an American pop rock band that originated in Los Angeles, California.[9][10] It currently consists of lead vocalist Adam Levine, keyboardist and rhythm guitarist Jesse Carmichael, bassist Mickey Madden, lead guitarist James Valentine, drummer Matt Flynn, keyboardist PJ Morton and multi-instrumentalist Sam Farrar.")

ladygaga = Artist.create!(name: "Lady Gaga", image: "https://res.cloudinary.com/drp9nvz64/image/upload/t_media_lib_thumb/v1507967049/Lady_Gaga_gnx0uy.jpg", bio: "Stefani Joanne Angelina Germanotta (born March 28, 1986), known professionally as Lady Gaga, is an American singer, songwriter, and actress. A popular contemporary recording artist, she is known for experimenting with new musical ideas and images and for her unconventionality and provocative work.")

aliciakeys = Artist.create!(name: "Alicia Keys", image: "https://res.cloudinary.com/drp9nvz64/image/upload/t_media_lib_thumb/v1507967050/AliciaKeys_xxqi7m.jpg", bio: "Alicia Augello Cook (born January 25, 1981), known professionally as Alicia Keys, is an American singer, songwriter, record producer, pianist, actress, and activist. Keys debut album, Songs in A Minor was released in 2001, producing her first Billboard Hot 100 number-one single Fallin, and selling over 12 million copies worldwide.")

dmb = Artist.create!(name: "Dave Matthews Band", image: "https://res.cloudinary.com/drp9nvz64/image/upload/t_media_lib_thumb/v1507967054/DMB_coti7n.jpg", bio: "Dave Matthews Band, also known by the initialism DMB, is an American rock band that was formed in Charlottesville, Virginia in 1991. The founding members were singer-songwriter and guitarist Dave Matthews, bassist Stefan Lessard, drummer and backing vocalist Carter Beauford, and saxophonist LeRoi Moore. The Dave Matthews Band is known for their annual summer-long tours of the United States and Europe, featuring lengthy improvisational renditions of their songs, accompanied by an elaborate video and lighting show.")

dmb1 = Song.create!(
name: "Crash Into Me",
album: "Crash",
year: 1996,
lyrics: "https://www.azlyrics.com/lyrics/davematthewsband/crashintome.html", artist: dmb)

dmb2 = Song.create!(name: "Crash Into Me", album: "Big Whiskey & the GrooGrux King", year: 2009 , lyrics: "https://www.azlyrics.com/lyrics/davematthewsband/divein.html", artist: dmb)

dmb3 = Song.create!(name: "Ants Marching", album: "Remember Two Things", year: 1993, lyrics: "https://www.azlyrics.com/lyrics/davematthewsband/antsmarching.html", artist: maroon5)

ak1 = Song.create!(name: "Girl on Fire", album: "Girl on Fire", year: 2012, lyrics: "https://play.google.com/music/preview/Tdj7222t4kesys2neyvck7fhmn4?lyrics=1&utm_source=google&utm_medium=search&utm_campaign=lyrics&pcampaignid=kp-songlyrics", artist: aliciakeys)

ak2 = Song.create!(name: "If I Ain't Got You", album: "The Diary of Alicia Keys", year: 2003, lyrics: "https://www.azlyrics.com/lyrics/aliciakeys/ifiaintgotyou.html", artist: aliciakeys )

lg1 = Song.create!(name: "Poker Face", album: "The Fame", year: 2008, lyrics: "https://www.azlyrics.com/lyrics/ladygaga/pokerface.html", artist: ladygaga)

lg2 = Song.create!(name: "Alejandro", album: "The Fame Monster", year: 2009, lyrics: "https://www.azlyrics.com/lyrics/ladygaga/alejandro.html", artist: ladygaga)

maroon51 = Song.create!(name: "What Lovers Do", album: "Red Pill Blues", year: 2017, lyrics: "https://www.azlyrics.com/lyrics/maroon5/whatloversdo.html", artist: maroon5)

maroon52 = Song.create!(name: "Sunday Morning", album: "Songs About Jane", year: 2002, lyrics: "https://www.azlyrics.com/lyrics/maroon5/sundaymorning.html", artist: maroon5)
