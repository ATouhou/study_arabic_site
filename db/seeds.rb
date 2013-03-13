# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# seeds for whenever dev db data is recreated or pushing to production for the first time

#category_set = [ [ "Egypt", "Jordan", "Yemen", "Morocco", "Lebanon", "Qatar", "Oman",
#                    "United States", "United Kingdom", "Saudi Arabia", "Other" ],
#
#                 [ "Arabic Centers", "Traveling Abroad", "Sightseeing", "Roommates", "Getting Around", "Housing" ],
#
#                 [ "Grammar", "Vocabulary", "Morphology",
#                   "Verbs", "Exercises", "Rhetoric", "Poetry", "Classical Arabic", "Islamic Texts",
#                   "Books", "Programs", "Study Advice" ] ]
#
#parents = [ "Countries", "Study Abroad", "Arabic Language" ]
#
## first create parent categories
#parents.each do |parent|
#  Category.create(name: parent)
#end
#
#count = 0
#category_set.each do |set|
#  parent = parents[count]
#  set.each do |name|
#    Category.create(name: name, category_parent_id: Category.find_by_name(parent).id)
#  end
#  count += 1
#end

#create levels
levels = 
{
  "Beginner" => "Little to no prior experience", 
  "Elementary" => "Formal classes or self study equivalent to one university level year",
  "Intermediate" => "Formal classes or self study equivalent to two university level years", 
  "Advanced" =>  "Formal classes or self study equivalent to three university level years",
}
year = 0
levels.each do |key, value|
  Level.create(title: key, description: value, years_of_study: year)
  year += 1
end

# development seed data

# create cities

#city1 = City.create(name: "Cancun", country_id: Country.find_by_name("Mexico").id)
#city2 = City.create(name: "Baghdad", country_id: Country.find_by_name("Iraq").id)
#city3 = City.create(name: "Tunis", country_id: Country.find_by_name("Tunisia").id)
#city4 = City.create(name: "Cairo", country_id: Country.find_by_name("Egypt").id)
#
## create addresses
#
#address1 = Address.create(address_line: "123 Wall St", city_id: City.find_by_name("Cancun").id, country_id: Country.find_by_name("Mexico").id)    
#address2 = Address.create(address_line: "342 Corniche St", city_id: City.find_by_name("Baghdad").id, country_id: Country.find_by_name("Iraq").id)    
#address3 = Address.create(address_line: "456 Mail St.", city_id: City.find_by_name("Tunis").id, country_id: Country.find_by_name("Tunisia").id)    
#address4 = Address.create(address_line: "8349 Silk Rd.", city_id: City.find_by_name("Cairo").id, country_id: Country.find_by_name("Egypt").id)    
#
## create centers
#
#Center.create(name: "Diwan Center", description: "An excellent arabic center is the hear of Nasr City.  We offer all kinds
#              classes.  There's so much at this place!", short_term: true, long_term: true, website: "www.diwan.com",
#              email: "info@diwan.com", phone_number: "304-231-4322", user_id: User.first.id,  address_id: address1.id) 
#
#
#Center.create(name: "Nile Center", description: "Cool center located on the nile river.  Lots of restaurants and shop nearby
#              There are many students from many different cities", short_term: true, long_term: true, website: "www.nilecenter.com",
#              email: "questions@nilcenter.com", phone_number: "433-455-3232", user_id: User.first.id,  address_id: address2.id) 
#
#Center.create(name: "Sibaway Center", description: "Sibaway is a center offering classes in tajweed, fiqh, classical arabic, and other
#              disciplines to students from all around the world", short_term: true, long_term: false, website: "www.sibaway.com",
#              email: "info@sibaway.com", phone_number: "345-545-1231", user_id: User.first.id,  address_id: address3.id) 

# create forum_posts
#post1 = ForumPost.create(title: "Anbody going to Cairo summer 2013?", content: "salaams, any brothers going to Cairo this summer to study Arabic? If so, let me know and maybe we can be roomates iA", user_id: User.first.id)  
#post2 = ForumPost.create(title: "A really tough grammar question", content: "here is a very tough grammar question. Can someone help me out?", user_id: User.first.id)  

# create categories_categorizables
#CategoriesCategorizable.create(category_id: Category.find_by_name("Egypt").id, categorizable_id: post1.id, categorizable_type: "ForumPost")
#CategoriesCategorizable.create(category_id: Category.find_by_name("Grammar").id, categorizable_id: post2.id, categorizable_type: "ForumPost")

# create reviews

# create resources










# create country list
#Country.create(:id=>1,:iso=>"AD",:name=>"Andorra")
#Country.create(:id=>2,:iso=>"AE",:name=>"United Arab Emirates")
#Country.create(:id=>3,:iso=>"AF",:name=>"Afghanistan")
#Country.create(:id=>4,:iso=>"AG",:name=>"Antigua and Barbuda")
#Country.create(:id=>5,:iso=>"AI",:name=>"Anguilla")
#Country.create(:id=>6,:iso=>"AL",:name=>"Albania")
#Country.create(:id=>7,:iso=>"AM",:name=>"Armenia")
#Country.create(:id=>8,:iso=>"AO",:name=>"Angola")
#Country.create(:id=>9,:iso=>"AQ",:name=>"Antarctica")
#Country.create(:id=>10,:iso=>"AR",:name=>"Argentina")
#Country.create(:id=>11,:iso=>"AS",:name=>"American Samoa")
#Country.create(:id=>12,:iso=>"AT",:name=>"Austria")
#Country.create(:id=>13,:iso=>"AU",:name=>"Australia")
#Country.create(:id=>14,:iso=>"AW",:name=>"Aruba")
#Country.create(:id=>15,:iso=>"AX",:name=>"Aland Islands")
#Country.create(:id=>16,:iso=>"AZ",:name=>"Azerbaijan")
#Country.create(:id=>17,:iso=>"BA",:name=>"Bosnia and Herzegovina")
#Country.create(:id=>18,:iso=>"BB",:name=>"Barbados")
#Country.create(:id=>19,:iso=>"BD",:name=>"Bangladesh")
#Country.create(:id=>20,:iso=>"BE",:name=>"Belgium")
#Country.create(:id=>21,:iso=>"BF",:name=>"Burkina Faso")
#Country.create(:id=>22,:iso=>"BG",:name=>"Bulgaria")
#Country.create(:id=>23,:iso=>"BH",:name=>"Bahrain")
#Country.create(:id=>24,:iso=>"BI",:name=>"Burundi")
#Country.create(:id=>25,:iso=>"BJ",:name=>"Benin")
#Country.create(:id=>26,:iso=>"BL",:name=>"Saint Barthelemy")
#Country.create(:id=>27,:iso=>"BM",:name=>"Bermuda")
#Country.create(:id=>28,:iso=>"BN",:name=>"Brunei")
#Country.create(:id=>29,:iso=>"BO",:name=>"Bolivia")
#Country.create(:id=>30,:iso=>"BQ",:name=>"Bonaire, Saint Eustatius and Saba ")
#Country.create(:id=>31,:iso=>"BR",:name=>"Brazil")
#Country.create(:id=>32,:iso=>"BS",:name=>"Bahamas")
#Country.create(:id=>33,:iso=>"BT",:name=>"Bhutan")
#Country.create(:id=>34,:iso=>"BV",:name=>"Bouvet Island")
#Country.create(:id=>35,:iso=>"BW",:name=>"Botswana")
#Country.create(:id=>36,:iso=>"BY",:name=>"Belarus")
#Country.create(:id=>37,:iso=>"BZ",:name=>"Belize")
#Country.create(:id=>38,:iso=>"CA",:name=>"Canada")
#Country.create(:id=>39,:iso=>"CC",:name=>"Cocos Islands")
#Country.create(:id=>40,:iso=>"CD",:name=>"Democratic Republic of the Congo")
#Country.create(:id=>41,:iso=>"CF",:name=>"Central African Republic")
#Country.create(:id=>42,:iso=>"CG",:name=>"Republic of the Congo")
#Country.create(:id=>43,:iso=>"CH",:name=>"Switzerland")
#Country.create(:id=>44,:iso=>"CI",:name=>"Ivory Coast")
#Country.create(:id=>45,:iso=>"CK",:name=>"Cook Islands")
#Country.create(:id=>46,:iso=>"CL",:name=>"Chile")
#Country.create(:id=>47,:iso=>"CM",:name=>"Cameroon")
#Country.create(:id=>48,:iso=>"CN",:name=>"China")
#Country.create(:id=>49,:iso=>"CO",:name=>"Colombia")
#Country.create(:id=>50,:iso=>"CR",:name=>"Costa Rica")
#Country.create(:id=>51,:iso=>"CU",:name=>"Cuba")
#Country.create(:id=>52,:iso=>"CV",:name=>"Cape Verde")
#Country.create(:id=>53,:iso=>"CW",:name=>"Curacao")
#Country.create(:id=>54,:iso=>"CX",:name=>"Christmas Island")
#Country.create(:id=>55,:iso=>"CY",:name=>"Cyprus")
#Country.create(:id=>56,:iso=>"CZ",:name=>"Czech Republic")
#Country.create(:id=>57,:iso=>"DE",:name=>"Germany")
#Country.create(:id=>58,:iso=>"DJ",:name=>"Djibouti")
#Country.create(:id=>59,:iso=>"DK",:name=>"Denmark")
#Country.create(:id=>60,:iso=>"DM",:name=>"Dominica")
#Country.create(:id=>61,:iso=>"DO",:name=>"Dominican Republic")
#Country.create(:id=>62,:iso=>"DZ",:name=>"Algeria")
#Country.create(:id=>63,:iso=>"EC",:name=>"Ecuador")
#Country.create(:id=>64,:iso=>"EE",:name=>"Estonia")
#Country.create(:id=>65,:iso=>"EG",:name=>"Egypt")
#Country.create(:id=>66,:iso=>"EH",:name=>"Western Sahara")
#Country.create(:id=>67,:iso=>"ER",:name=>"Eritrea")
#Country.create(:id=>68,:iso=>"ES",:name=>"Spain")
#Country.create(:id=>69,:iso=>"ET",:name=>"Ethiopia")
#Country.create(:id=>70,:iso=>"FI",:name=>"Finland")
#Country.create(:id=>71,:iso=>"FJ",:name=>"Fiji")
#Country.create(:id=>72,:iso=>"FK",:name=>"Falkland Islands")
#Country.create(:id=>73,:iso=>"FM",:name=>"Micronesia")
#Country.create(:id=>74,:iso=>"FO",:name=>"Faroe Islands")
#Country.create(:id=>75,:iso=>"FR",:name=>"France")
#Country.create(:id=>76,:iso=>"GA",:name=>"Gabon")
#Country.create(:id=>77,:iso=>"GB",:name=>"United Kingdom")
#Country.create(:id=>78,:iso=>"GD",:name=>"Grenada")
#Country.create(:id=>79,:iso=>"GE",:name=>"Georgia")
#Country.create(:id=>80,:iso=>"GF",:name=>"French Guiana")
#Country.create(:id=>81,:iso=>"GG",:name=>"Guernsey")
#Country.create(:id=>82,:iso=>"GH",:name=>"Ghana")
#Country.create(:id=>83,:iso=>"GI",:name=>"Gibraltar")
#Country.create(:id=>84,:iso=>"GL",:name=>"Greenland")
#Country.create(:id=>85,:iso=>"GM",:name=>"Gambia")
#Country.create(:id=>86,:iso=>"GN",:name=>"Guinea")
#Country.create(:id=>87,:iso=>"GP",:name=>"Guadeloupe")
#Country.create(:id=>88,:iso=>"GQ",:name=>"Equatorial Guinea")
#Country.create(:id=>89,:iso=>"GR",:name=>"Greece")
#Country.create(:id=>90,:iso=>"GS",:name=>"South Georgia and the South Sandwich Islands")
#Country.create(:id=>91,:iso=>"GT",:name=>"Guatemala")
#Country.create(:id=>92,:iso=>"GU",:name=>"Guam")
#Country.create(:id=>93,:iso=>"GW",:name=>"Guinea-Bissau")
#Country.create(:id=>94,:iso=>"GY",:name=>"Guyana")
#Country.create(:id=>95,:iso=>"HK",:name=>"Hong Kong")
#Country.create(:id=>96,:iso=>"HM",:name=>"Heard Island and McDonald Islands")
#Country.create(:id=>97,:iso=>"HN",:name=>"Honduras")
#Country.create(:id=>98,:iso=>"HR",:name=>"Croatia")
#Country.create(:id=>99,:iso=>"HT",:name=>"Haiti")
#Country.create(:id=>100,:iso=>"HU",:name=>"Hungary")
#Country.create(:id=>101,:iso=>"ID",:name=>"Indonesia")
#Country.create(:id=>102,:iso=>"IE",:name=>"Ireland")
#Country.create(:id=>103,:iso=>"IL",:name=>"Israel")
#Country.create(:id=>104,:iso=>"IM",:name=>"Isle of Man")
#Country.create(:id=>105,:iso=>"IN",:name=>"India")
#Country.create(:id=>106,:iso=>"IO",:name=>"British Indian Ocean Territory")
#Country.create(:id=>107,:iso=>"IQ",:name=>"Iraq")
#Country.create(:id=>108,:iso=>"IR",:name=>"Iran")
#Country.create(:id=>109,:iso=>"IS",:name=>"Iceland")
#Country.create(:id=>110,:iso=>"IT",:name=>"Italy")
#Country.create(:id=>111,:iso=>"JE",:name=>"Jersey")
#Country.create(:id=>112,:iso=>"JM",:name=>"Jamaica")
#Country.create(:id=>113,:iso=>"JO",:name=>"Jordan")
#Country.create(:id=>114,:iso=>"JP",:name=>"Japan")
#Country.create(:id=>115,:iso=>"KE",:name=>"Kenya")
#Country.create(:id=>116,:iso=>"KG",:name=>"Kyrgyzstan")
#Country.create(:id=>117,:iso=>"KH",:name=>"Cambodia")
#Country.create(:id=>118,:iso=>"KI",:name=>"Kiribati")
#Country.create(:id=>119,:iso=>"KM",:name=>"Comoros")
#Country.create(:id=>120,:iso=>"KN",:name=>"Saint Kitts and Nevis")
#Country.create(:id=>121,:iso=>"KP",:name=>"North Korea")
#Country.create(:id=>122,:iso=>"KR",:name=>"South Korea")
#Country.create(:id=>123,:iso=>"XK",:name=>"Kosovo")
#Country.create(:id=>124,:iso=>"KW",:name=>"Kuwait")
#Country.create(:id=>125,:iso=>"KY",:name=>"Cayman Islands")
#Country.create(:id=>126,:iso=>"KZ",:name=>"Kazakhstan")
#Country.create(:id=>127,:iso=>"LA",:name=>"Laos")
#Country.create(:id=>128,:iso=>"LB",:name=>"Lebanon")
#Country.create(:id=>129,:iso=>"LC",:name=>"Saint Lucia")
#Country.create(:id=>130,:iso=>"LI",:name=>"Liechtenstein")
#Country.create(:id=>131,:iso=>"LK",:name=>"Sri Lanka")
#Country.create(:id=>132,:iso=>"LR",:name=>"Liberia")
#Country.create(:id=>133,:iso=>"LS",:name=>"Lesotho")
#Country.create(:id=>134,:iso=>"LT",:name=>"Lithuania")
#Country.create(:id=>135,:iso=>"LU",:name=>"Luxembourg")
#Country.create(:id=>136,:iso=>"LV",:name=>"Latvia")
#Country.create(:id=>137,:iso=>"LY",:name=>"Libya")
#Country.create(:id=>138,:iso=>"MA",:name=>"Morocco")
#Country.create(:id=>139,:iso=>"MC",:name=>"Monaco")
#Country.create(:id=>140,:iso=>"MD",:name=>"Moldova")
#Country.create(:id=>141,:iso=>"ME",:name=>"Montenegro")
#Country.create(:id=>142,:iso=>"MF",:name=>"Saint Martin")
#Country.create(:id=>143,:iso=>"MG",:name=>"Madagascar")
#Country.create(:id=>144,:iso=>"MH",:name=>"Marshall Islands")
#Country.create(:id=>145,:iso=>"MK",:name=>"Macedonia")
#Country.create(:id=>146,:iso=>"ML",:name=>"Mali")
#Country.create(:id=>147,:iso=>"MM",:name=>"Myanmar")
#Country.create(:id=>148,:iso=>"MN",:name=>"Mongolia")
#Country.create(:id=>149,:iso=>"MO",:name=>"Macao")
#Country.create(:id=>150,:iso=>"MP",:name=>"Northern Mariana Islands")
#Country.create(:id=>151,:iso=>"MQ",:name=>"Martinique")
#Country.create(:id=>152,:iso=>"MR",:name=>"Mauritania")
#Country.create(:id=>153,:iso=>"MS",:name=>"Montserrat")
#Country.create(:id=>154,:iso=>"MT",:name=>"Malta")
#Country.create(:id=>155,:iso=>"MU",:name=>"Mauritius")
#Country.create(:id=>156,:iso=>"MV",:name=>"Maldives")
#Country.create(:id=>157,:iso=>"MW",:name=>"Malawi")
#Country.create(:id=>158,:iso=>"MX",:name=>"Mexico")
#Country.create(:id=>159,:iso=>"MY",:name=>"Malaysia")
#Country.create(:id=>160,:iso=>"MZ",:name=>"Mozambique")
#Country.create(:id=>161,:iso=>"NA",:name=>"Namibia")
#Country.create(:id=>162,:iso=>"NC",:name=>"New Caledonia")
#Country.create(:id=>163,:iso=>"NE",:name=>"Niger")
#Country.create(:id=>164,:iso=>"NF",:name=>"Norfolk Island")
#Country.create(:id=>165,:iso=>"NG",:name=>"Nigeria")
#Country.create(:id=>166,:iso=>"NI",:name=>"Nicaragua")
#Country.create(:id=>167,:iso=>"NL",:name=>"Netherlands")
#Country.create(:id=>168,:iso=>"NO",:name=>"Norway")
#Country.create(:id=>169,:iso=>"NP",:name=>"Nepal")
#Country.create(:id=>170,:iso=>"NR",:name=>"Nauru")
#Country.create(:id=>171,:iso=>"NU",:name=>"Niue")
#Country.create(:id=>172,:iso=>"NZ",:name=>"New Zealand")
#Country.create(:id=>173,:iso=>"OM",:name=>"Oman")
#Country.create(:id=>174,:iso=>"PA",:name=>"Panama")
#Country.create(:id=>175,:iso=>"PE",:name=>"Peru")
#Country.create(:id=>176,:iso=>"PF",:name=>"French Polynesia")
#Country.create(:id=>177,:iso=>"PG",:name=>"Papua New Guinea")
#Country.create(:id=>178,:iso=>"PH",:name=>"Philippines")
#Country.create(:id=>179,:iso=>"PK",:name=>"Pakistan")
#Country.create(:id=>180,:iso=>"PL",:name=>"Poland")
#Country.create(:id=>181,:iso=>"PM",:name=>"Saint Pierre and Miquelon")
#Country.create(:id=>182,:iso=>"PN",:name=>"Pitcairn")
#Country.create(:id=>183,:iso=>"PR",:name=>"Puerto Rico")
#Country.create(:id=>184,:iso=>"PS",:name=>"Palestinian Territory")
#Country.create(:id=>185,:iso=>"PT",:name=>"Portugal")
#Country.create(:id=>186,:iso=>"PW",:name=>"Palau")
#Country.create(:id=>187,:iso=>"PY",:name=>"Paraguay")
#Country.create(:id=>188,:iso=>"QA",:name=>"Qatar")
#Country.create(:id=>189,:iso=>"RE",:name=>"Reunion")
#Country.create(:id=>190,:iso=>"RO",:name=>"Romania")
#Country.create(:id=>191,:iso=>"RS",:name=>"Serbia")
#Country.create(:id=>192,:iso=>"RU",:name=>"Russia")
#Country.create(:id=>193,:iso=>"RW",:name=>"Rwanda")
#Country.create(:id=>194,:iso=>"SA",:name=>"Saudi Arabia")
#Country.create(:id=>195,:iso=>"SB",:name=>"Solomon Islands")
#Country.create(:id=>196,:iso=>"SC",:name=>"Seychelles")
#Country.create(:id=>197,:iso=>"SD",:name=>"Sudan")
#Country.create(:id=>198,:iso=>"SE",:name=>"Sweden")
#Country.create(:id=>199,:iso=>"SG",:name=>"Singapore")
#Country.create(:id=>200,:iso=>"SH",:name=>"Saint Helena")
#Country.create(:id=>201,:iso=>"SI",:name=>"Slovenia")
#Country.create(:id=>202,:iso=>"SJ",:name=>"Svalbard and Jan Mayen")
#Country.create(:id=>203,:iso=>"SK",:name=>"Slovakia")
#Country.create(:id=>204,:iso=>"SL",:name=>"Sierra Leone")
#Country.create(:id=>205,:iso=>"SM",:name=>"San Marino")
#Country.create(:id=>206,:iso=>"SN",:name=>"Senegal")
#Country.create(:id=>207,:iso=>"SO",:name=>"Somalia")
#Country.create(:id=>208,:iso=>"SR",:name=>"Suriname")
#Country.create(:id=>209,:iso=>"ST",:name=>"Sao Tome and Principe")
#Country.create(:id=>210,:iso=>"SV",:name=>"El Salvador")
#Country.create(:id=>211,:iso=>"SX",:name=>"Sint Maarten")
#Country.create(:id=>212,:iso=>"SY",:name=>"Syria")
#Country.create(:id=>213,:iso=>"SZ",:name=>"Swaziland")
#Country.create(:id=>214,:iso=>"TC",:name=>"Turks and Caicos Islands")
#Country.create(:id=>215,:iso=>"TD",:name=>"Chad")
#Country.create(:id=>216,:iso=>"TF",:name=>"French Southern Territories")
#Country.create(:id=>217,:iso=>"TG",:name=>"Togo")
#Country.create(:id=>218,:iso=>"TH",:name=>"Thailand")
#Country.create(:id=>219,:iso=>"TJ",:name=>"Tajikistan")
#Country.create(:id=>220,:iso=>"TK",:name=>"Tokelau")
#Country.create(:id=>221,:iso=>"TL",:name=>"East Timor")
#Country.create(:id=>222,:iso=>"TM",:name=>"Turkmenistan")
#Country.create(:id=>223,:iso=>"TN",:name=>"Tunisia")
#Country.create(:id=>224,:iso=>"TO",:name=>"Tonga")
#Country.create(:id=>225,:iso=>"TR",:name=>"Turkey")
#Country.create(:id=>226,:iso=>"TT",:name=>"Trinidad and Tobago")
#Country.create(:id=>227,:iso=>"TV",:name=>"Tuvalu")
#Country.create(:id=>228,:iso=>"TW",:name=>"Taiwan")
#Country.create(:id=>229,:iso=>"TZ",:name=>"Tanzania")
#Country.create(:id=>230,:iso=>"UA",:name=>"Ukraine")
#Country.create(:id=>231,:iso=>"UG",:name=>"Uganda")
#Country.create(:id=>232,:iso=>"UM",:name=>"United States Minor Outlying Islands")
#Country.create(:id=>233,:iso=>"US",:name=>"United States")
#Country.create(:id=>234,:iso=>"UY",:name=>"Uruguay")
#Country.create(:id=>235,:iso=>"UZ",:name=>"Uzbekistan")
#Country.create(:id=>236,:iso=>"VA",:name=>"Vatican")
#Country.create(:id=>237,:iso=>"VC",:name=>"Saint Vincent and the Grenadines")
#Country.create(:id=>238,:iso=>"VE",:name=>"Venezuela")
#Country.create(:id=>239,:iso=>"VG",:name=>"British Virgin Islands")
#Country.create(:id=>240,:iso=>"VI",:name=>"U.S. Virgin Islands")
#Country.create(:id=>241,:iso=>"VN",:name=>"Vietnam")
#Country.create(:id=>242,:iso=>"VU",:name=>"Vanuatu")
#Country.create(:id=>243,:iso=>"WF",:name=>"Wallis and Futuna")
#Country.create(:id=>244,:iso=>"WS",:name=>"Samoa")
#Country.create(:id=>245,:iso=>"YE",:name=>"Yemen")
#Country.create(:id=>246,:iso=>"YT",:name=>"Mayotte")
#Country.create(:id=>247,:iso=>"ZA",:name=>"South Africa")
#Country.create(:id=>248,:iso=>"ZM",:name=>"Zambia")
#Country.create(:id=>249,:iso=>"ZW",:name=>"Zimbabwe")
#Country.create(:id=>250,:iso=>"CS",:name=>"Serbia and Montenegro")


