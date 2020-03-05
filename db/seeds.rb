# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
Charity.destroy_all
Business.destroy_all
User.destroy_all
Tag.destroy_all

demo_user_1 = User.new(
    email: 'harry@royal.com',
    password: 'password',
    first_name: 'Harry',
    last_name: 'Sussex',
    phone_number: '0400 000 000',
    account: 'Business'
  )
demo_user_1.save!

demo_user_2 = User.new(
    email: 'gaga@lady.com',
    password: 'password',
    first_name: 'Lady',
    last_name: 'Gaga',
    phone_number: '0400 000 000',
    account: 'Charity'
  )
demo_user_2.save!

charity = Charity.new(
    name: "St. Mary's House of Welcome",
    bio: 'St Mary’s House of Welcome is a not-for-profit open access centre in the heart of Melbourne providing basic essential services to people who are homeless and experiencing poverty, severe and persistent mental health issues, and those who are extremely isolated and socially marginalised.',
    address: '165/169 Brunswick St, Fitzroy VIC 3065',
    email: 'hello@smhow.com.au',
    website: 'https://www.smhow.org.au/',
    phone_number: '(03) 9417 6497',
    user: demo_user_2
    )

  file = URI.open('https://scontent.fsyd3-1.fna.fbcdn.net/v/t1.0-9/74214113_2631606660193948_3780784278158180352_o.jpg?_nc_cat=111&_nc_sid=85a577&_nc_ohc=KpfdtO5U30YAX938gte&_nc_ht=scontent.fsyd3-1.fna&oh=bde57d1b46d10340ae099e3ae9065671&oe=5E9416A2')
  charity.photo.attach(io: file, filename: 'logo.png', content_type: 'image/png')
  charity.save!

charity = Charity.new(
  name: "Thorne Harbour Health",
  bio: 'Provides healthy and nutritional meal services including brunch, lunch & dinner, in the form of material aid for HIV positive clients attending the Centre.',
  address: '51 Commercial Rd, South Yarra VIC 3141',
  email: 'helloenquiries@thorneharbour.org',
  website: 'https://thorneharbour.org/',
  phone_number: '(03) 9863 0444',
  user: demo_user_2
  )

  file = URI.open('https://scontent.fsyd3-1.fna.fbcdn.net/v/t1.0-9/36752701_1846568438714950_7155429740067684352_n.jpg?_nc_cat=107&_nc_sid=85a577&_nc_ohc=EoUunGkui44AX-4uLe6&_nc_ht=scontent.fsyd3-1.fna&oh=bf674168e3bd7d612216225529ebe789&oe=5E9484A0')
  charity.photo.attach(io: file, filename: 'logo.png', content_type: 'image/png')
  charity.save!

# charity = Charity.new(
#   name: "Church of All Nations",
#   bio: 'A community lunch is provided as emergency relief once a week.',
#   address: '180 Palmerston Street, Carlton VIC 3053',
#   email: 'hellocontact@cancarlton.com.au',
#   website: 'www.carlton-uca.org',
#   phone_number: '(03) 9347 7077',
#   user: demo_user_2
#   )

#   file = URI.open('http://carlton-uca.org/news/wp-content/uploads/2014/03/CANLogo-300x107.jpg')
#   charity.photo.attach(io: file, filename: 'logo.png', content_type: 'image/png')
#   charity.save!

charity = Charity.new(
  name: "Lazarus Centre",
  bio: 'A free breakfast is provided as emergency relief every day for homeless people and people sleeping rough. Material aid is also provided in the form of small food parcels.',
  address: '15 Gisborne St, East Melbourne VIC 3002',
  email: 'hellostmarkscc@anglicarevic.org.au',
  website: 'https://www.stpeters.org.au/ministries',
  phone_number: '0427 054 758',
  user: demo_user_2
  )

  file = URI.open('https://scontent.fsyd3-1.fna.fbcdn.net/v/l/t1.0-9/67913931_2404623272917307_1721809263199780864_o.jpg?_nc_cat=110&_nc_sid=6e5ad9&_nc_ohc=q0JcDiNx1u4AX9Q7B2a&_nc_ht=scontent.fsyd3-1.fna&oh=664608897747ff7cd79fb536593603b8&oe=5E971031')
  charity.photo.attach(io: file, filename: 'logo.png', content_type: 'image/png')
  charity.save!

charity = Charity.new(
  name: "Ozanam House ",
  bio: 'Material aid in the form of free tea, coffee, breakfast and lunch is available five days a week for those who are homeless.',
  address: '191 Flemington Road, North Melbourne VIC 3051',
  email: 'hello@vincentcare.org.au',
  website: 'http://www.vincentcare.org.au/',
  phone_number: '(03) 8327 7400',
  user: demo_user_2
  )

  file = URI.open('https://scontent.fsyd3-1.fna.fbcdn.net/v/t1.0-9/43053750_1017212411784536_1355451469133774848_o.png?_nc_cat=111&_nc_sid=85a577&_nc_ohc=oukIfsVfQb8AX-IsQke&_nc_ht=scontent.fsyd3-1.fna&oh=484ebc2ff0d2c73a3f7739f8f159e7c2&oe=5E8605FB')
  charity.photo.attach(io: file, filename: 'logo.png', content_type: 'image/png')
  charity.save!

charity = Charity.new(
  name: "Lighthouse Cafe",
  bio: 'Provides material aid in the form of a community breakfast and lunch as well as support for people who are homeless, at risk of homelessness or those who are vulnerable living in the metropolitan Melbourne area.',
  address: 'Level 1, 69 Bourke Street, Melbourne, VIC 3000',
  email: 'hello@aus.salvationarmy.org',
  website: 'https://www.salvationarmy.org.au/melbourne614/',
  phone_number: '1800 266 686',
  user: demo_user_2
  )

  file = URI.open('https://www.salvationarmy.org.au/scribe/themes/unify/images/tsr-logo.png')
  charity.photo.attach(io: file, filename: 'logo.png', content_type: 'image/png')
  charity.save!

charity = Charity.new(
  name: "From Us 2 You",
  bio: 'Volunteers provide healthy and nutritious, hot cooked meals for people who are homeless or at risk of homelessness in metropolitan Melbourne. Material aid in the form of toiletries, blankets, tarps, gloves and scarves are also available.',
  address: 'Flinders St & Spencer St, Docklands VIC 3008',
  email: 'fromus2youmelbourne@hotmail.org',
  website: '',
  phone_number: '0412 042 069',
  user: demo_user_2
  )

  file = URI.open('https://assets.change.org/photos/7/df/wy/FaDFWykEkmllRNt-800x450-noPad.jpg?1490670977')
  charity.photo.attach(io: file, filename: 'logo.png', content_type: 'image/png')
  charity.save!

# charity = Charity.new(
#   name: "The Big Umbrella",
#   bio: 'Operating both locally and internationally, we address issues impacting on the marginalised, those affected by human rights abuses, exploitation, forced labour and homelessness.',
#   address: '80 Harbour Esplanade, Docklands VIC 3008',
#   email: 'hello@thebigumbrella.org',
#   website: 'https://thebigumbrella.org/',
#   phone_number: '(03) 9670 8339',
#   user: demo_user_2
#   )

#   file = URI.open('https://thebigumbrella.org/wp-content/uploads/2016/11/logo-40.png')
#   charity.photo.attach(io: file, filename: 'logo.png', content_type: 'image/png')
#   charity.save!

charity = Charity.new(
  name: "Feed Appeal",
  bio: 'We’re Feed. And we exist to feed Australians in need.',
  address: '1-7 South Audley Street, Abbotsford VIC 3067',
  email: 'hello@feedappeal.org.au',
  website: 'https://www.feedappeal.org.au/',
  phone_number: '1300 421 041',
  user: demo_user_2
  )

  file = URI.open('https://www.feedappeal.org.au/wp-content/uploads/2019/04/FeedLogo_WebSize.png')
  charity.photo.attach(io: file, filename: 'logo.png', content_type: 'image/png')
  charity.save!

charity = Charity.new(
  name: "Melbourne City Mission",
  bio: 'We exist so that people can lead positive lives, to create their best future, their way.',
  address: '164-180 Kings Way, South Melbourne VIC 3205',
  email: 'hello@mcm.com.au',
  website: 'https://www.mcm.org.au/',
  phone_number: '(03) 9977 0000',
  user: demo_user_2
  )

  file = URI.open('https://www.mcm.org.au/-/media/mcm/global/header/mcm.svg?la=en&mh=250&hash=9D010243E6EA7E67BB7081C9D2FD1AA1C089072D')
  charity.photo.attach(io: file, filename: 'logo.png', content_type: 'image/png')
  charity.save!

# business = Business.new(
#   name: 'Strange Love',
#   bio: 'Our Lo-Cal Sodas are Naturally Lower in Sugar, with No Added Sweeteners. We create the Drink Drink Drinkers Drink. Premium Mixers.',
#   address: '32 Wellington St, Flemington VIC 3031',
#   email: 'hello@strangelove.com.au',
#   phone_number: '1300 712 081',
#   website: 'https://strangelove.com.au/',
#   industry: 'Retail Trade',
#   user: demo_user_2
#   )

#   file = URI.open('https://cdn.shopify.com/s/files/1/1668/6293/t/6/assets/logo-white-br.png?18')
#   business.photo.attach(io: file, filename: 'logo.png', content_type: 'image/png')
#   business.save!

business = Business.new(
  name: 'Teta Mona',
  bio: 'Lebanese Soul Food',
  address: '100A Lygon St, Brunswick East VIC 3057',
  email: 'hello@tetamona.com.au',
  phone_number: '(03) 9380 6680',
  website: 'https://www.facebook.com/tetamona/',
  industry: 'Hospitality',
  user: demo_user_2
  )

  file = URI.open('https://scontent.fsyd3-1.fna.fbcdn.net/v/t1.0-9/10341966_686383201403530_3764190454237019576_n.jpg?_nc_cat=110&_nc_sid=2d5d41&_nc_ohc=nG0WmeaU2EIAX8IvvZl&_nc_ht=scontent.fsyd3-1.fna&oh=f653d2f0e4a2141a720674f4fbb5c585&oe=5E83F641')
  business.photo.attach(io: file, filename: 'logo.png', content_type: 'image/png')
  business.save!

# business = Business.new(
#   name: 'Crown Casino',
#   bio: 'Crown Melbourne offers a dazzling array of gaming options in a vibrant and sophisticated setting, providing an experience unparalleled in Melbourne.',
#   address: '8 Whiteman St, Southbank VIC 3006',
#   email: 'hello@crown.com.au',
#   phone_number: '03 9292 6235',
#   website: 'https://www.crownmelbourne.com.au/casino',
#   industry: 'Hospitality',
#   user: demo_user_2
#   )

#   file = URI.open('https://www.crownmelbourne.com.au/CrownWebsite/images/logos/crown.png')
#   business.photo.attach(io: file, filename: 'logo.png', content_type: 'image/png')
#   business.save!

# business = Business.new(
#   name: 'Black Truffle',
#   bio: 'With our unique and refined catering menus driven by the seasons it is little wonder that Black Truffle stands out as Melbourne’s leading corporate catering company. Over our 25 years of operation we have successfully catered events, functions, and conferences of all sizes.',
#   address: '130 Cromwell St, Collingwood VIC 3066',
#   email: 'hello@blacktruffle.net.au',
#   phone_number: '(03) 9419 9290',
#   website: 'https://www.blacktruffle.net.au/',
#   industry: 'Hospitality',
#   user: demo_user_2
#   )

#   file = URI.open('https://www.blacktruffle.net.au/wp-content/uploads/2018/04/logo_02.png')
#   business.photo.attach(io: file, filename: 'logo.png', content_type: 'image/png')
#   business.save!

business = Business.new(
  name: 'Woolumbi Farm',
  bio: 'We are a family run farm in Tyabb, on the Mornington Peninsula, Kenneth and Sonya created Woolumbi Farm from their passion for delicious food and the believe the true paddock to plate experience is second to none.',
  address: '233 Coolart Rd, Tyabb VIC 3913',
  email: 'hello@woolumbifarm.org',
  phone_number: '03 4545 2334',
  website: 'https://woolumbi.com/',
  industry: 'Agriculture',
  user: demo_user_2
  )

  file = URI.open('https://woolumbi.com/wp-content/uploads/2019/05/logo.svg')
  business.photo.attach(io: file, filename: 'logo.png', content_type: 'image/png')
  business.save!

# business = Business.new(
#   name: 'PwC',
#   bio: 'PricewaterhouseCoopers is a multinational professional services network of firms operating as partnerships under the PwC brand. The term "PwC" may be used to refer to an individual member firm within the PwC network, or to several or all of them collectively.',
#   address: '2 Riverside Quay, Southbank VIC 3006',
#   email: 'hello@pwc.org',
#   phone_number: '(03) 8603 1000',
#   website: 'https://www.pwc.com.au/',
#   industry: 'Professional and Technical Services',
#   user: demo_user_2
#   )

#   file = URI.open('https://scontent.fsyd3-1.fna.fbcdn.net/v/t1.0-9/549928_10150683690312978_1582285604_n.jpg?_nc_cat=107&_nc_sid=85a577&_nc_ohc=v6xlWJ0qIpcAX_KdxXC&_nc_ht=scontent.fsyd3-1.fna&oh=c5bbeb0b6f9e38644ad4f4c552b89a91&oe=5E843ECB')
#   business.photo.attach(io: file, filename: 'logo.png', content_type: 'image/png')
#   business.save!

# business = Business.new(
#   name: 'Grand Hyatt Melbourne',
#   bio: 'Grand Hyatt Melbourne is a unique, purpose built facility, catering for residential conferences, seminars, product launches, exhibitions, meetings and events.',
#   address: '123 Collins St, Melbourne VIC 3000',
#   email: 'hello@granhyatt.net',
#   phone_number: '03 9657 1234',
#   website: 'https://www.hyatt.com/en-US/hotel/australia/grand-hyatt-melbourne/melbo/special-events',
#   industry: 'Hospitality',
#   user: demo_user_2
#   )

#   file = URI.open('https://cdn.shopify.com/s/files/1/1668/6293/t/6/assets/logo-white-br.png?18')
#   business.photo.attach(io: file, filename: 'logo.png', content_type: 'image/png')
#   business.save!

# business = Business.new(
#   name: 'Farm Vigano',
#   bio: 'Dedicated to preserving the art of true Italian food + culture.',
#   address: '10 Bushmans Way, South Morang VIC 3752',
#   email: 'hello@framvigano.org',
#   phone_number: '(03) 9407 1212',
#   website: 'http://farmvigano.com.au/',
#   industry: 'Hospitality',
#   user: demo_user_2
#   )

#   file = URI.open('https://farmvigano.com.au/wp-content/uploads/2019/03/farm_vigano_logo_green.png')
#   business.photo.attach(io: file, filename: 'logo.png', content_type: 'image/png')
#   business.save!

# business = Business.new(
#   name: 'The Farm Cafe at Collingwood Childrens’ Farm',
#   bio: 'ABUNDANT FOOD. GORGEOUS STYLING. ANY VENUE. MADE IN MELBOURNE.',
#   address: '18 St Heliers St, Abbotsford VIC 3067',
#   email: 'hello@thefarmcafe.net',
#   phone_number: '(03) 9415 6581',
#   website: 'https://www.farmcafe.com.au/',
#   industry: 'Hospitality',
#   user: demo_user_2
#   )

#   file = URI.open('https://static1.squarespace.com/static/52ac1e31e4b04dd8c25afc1e/t/5b3c2701f950b77f5166648c/1581564968134/?format=1000w')
#   business.photo.attach(io: file, filename: 'logo.png', content_type: 'image/png')
#   business.save!

business = Business.new(
  name: 'Bank of Melbourne',
  bio: 'Bank of Melbourne is a financial institution operating in Victoria, Australia. A subsidiary of the Westpac Group, it was re-established as a separate entity, and re-commenced operations on 25 July 2011.',
  address: '100 Collins St, Melbourne VIC 3000',
  email: 'hello@bankofmelbourne.online',
  phone_number: '03 9098 9797',
  website: 'https://www.bankofmelbourne.com.au/',
  industry: 'Professional and Technical Services',
  user: demo_user_2
  )

  file = URI.open('https://scontent.fsyd3-1.fna.fbcdn.net/v/t1.0-9/56161600_2712678245440344_1320714366349213696_n.jpg?_nc_cat=1&_nc_sid=85a577&_nc_ohc=pBnTOWNcOK4AX-J1uiT&_nc_ht=scontent.fsyd3-1.fna&oh=1d9a74618b43f01077766c051c9c26c2&oe=5E9442AA')
  business.photo.attach(io: file, filename: 'logo.png', content_type: 'image/png')
  business.save!

tags_array = ["Gluten-Free", "Dairy-Free", "Lactose-Free", "Halal", "Kosher",
  "Vegetarian", "Vegan", "Packaged Food", "Prepared Meal", "Fruit", "Vegetable",
  "Sugar-Free", "Sweet", "Drink", "Canned Food", "Pickles and Preserves",
  "Long-Lasting", "Dairy", "Snack", "Nut-Free", "Meat", "Fish", "Poultry",
  "Grains", "Baked Goods", "Condiments", "Breakfast", "Soup", "Low Sodium"]

tags_array.each do |tag_name|
  tag = Tag.new
  tag.name = tag_name
  tag.save!
end
