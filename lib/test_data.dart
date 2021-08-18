import 'package:friend_maker/blueprints/blueprints.dart';

// user(s) > friend(s) > message(s)

// List<FriendsBlueprint> friends = [
//   new FriendsBlueprint(
//       username: "username", id: "asd", lastMessage: "lastMessage"),
//   new FriendsBlueprint(username: "no name", id: "rad", lastMessage: "go away"),
//   new FriendsBlueprint(
//       username: "mike wojaosaki", id: "adf", lastMessage: "RUN!!!!"),
//   new FriendsBlueprint(
//       username: "singwithaashish", id: "gbd", lastMessage: "have a nice day"),
//   new FriendsBlueprint(
//       username: "username", id: "asd", lastMessage: "lastMessage"),
//   new FriendsBlueprint(username: "no name", id: "rad", lastMessage: "go away"),
//   new FriendsBlueprint(
//       username: "mike wojaosaki", id: "adf", lastMessage: "RUN!!!!"),
//   new FriendsBlueprint(
//       username: "singwithaashish", id: "gbd", lastMessage: "have a nice day"),
//   new FriendsBlueprint(
//       username: "username", id: "asd", lastMessage: "lastMessage"),
//   new FriendsBlueprint(username: "no name", id: "rad", lastMessage: "go away"),
//   new FriendsBlueprint(
//       username: "mike wojaosaki", id: "adf", lastMessage: "RUN!!!!"),
//   new FriendsBlueprint(
//       username: "singwithaashish", id: "gbd", lastMessage: "have a nice day")
// ];

List<Map> news = [
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "AJ Willingham, CNN",
    "title":
        "5 things to know for August 17: Afghanistan, coronavirus, extreme weather, cybersecurity, India",
    "description":
        "Here's what else you need to know to Get Up to Speed and On with Your Day.",
    "url":
        "https://www.cnn.com/2021/08/17/us/five-things-august-17-trnd/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210816164353-02-taliban-afghanistan-unf-super-tease.jpg",
    "publishedAt": "2021-08-17T10:29:42Z",
    "content":
        "(CNN)Grace has strengthened into a tropical storm again, threatening the Caribbean with mudslides and flooding. That includes vulnerable Haiti, which just suffered an earthquake and may now face driv… [+4908 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Julie Appleby, Kaiser Health News",
    "title":
        "For unvaccinated people on the fence, work hurdles could change their minds",
    "description":
        "As employers create safety protocols for workers who refuse vaccination, we ask experts if they really work. Or is the point to pressure employees into getting a shot?",
    "url":
        "https://www.cnn.com/2021/08/17/health/unvaccinated-workers-covid-partner-khn-wellness/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210816060932-02-vaccine-protest-0724-file-super-tease.jpg",
    "publishedAt": "2021-08-17T10:24:01Z",
    "content":
        "(CNN)With the Deltavariant surging, a growing number of employers are tiring of merely cajoling workers to get vaccinated and are following President Joe Biden's protocol for federal workers: Either … [+6798 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Ashley Strickland, CNN",
    "title": "This meteor shower's 'fizzing' asteroid acts like a comet",
    "description":
        "Phaethon, the source of the Geminid meteor shower, has intrigued scientists for years because it's an asteroid that behaves like a comet. New research may reveal the reason why this oddball gets so bright as it approaches the sun: fizzing sodium.",
    "url":
        "https://www.cnn.com/2021/08/17/world/phaethon-asteroid-sodium-geminid-scn/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210816165638-phaethon-asteroid-nasa-illustration-super-tease.jpg",
    "publishedAt": "2021-08-17T10:23:19Z",
    "content":
        "(CNN)Phaethon, the source of the Geminid meteor shower, has intrigued scientists for years because it's an asteroid that behaves like a comet. New research may reveal the reason why this oddball gets… [+4557 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "John Duffy, CNN",
    "title":
        "How to help struggling college freshman boys who hide failure, according to an expert",
    "description":
        "Freshman boys may give off the appearance of being successful, but sometimes they can be concealing academic failures and poor habits like smoking and drinking too much.",
    "url":
        "https://www.cnn.com/2021/08/17/health/college-freshman-boys-smoking-drinking-wellness/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210811152002-02-college-drinking-stock-super-tease.jpg",
    "publishedAt": "2021-08-17T10:21:46Z",
    "content":
        "Psychologist John Duffy, author of \"Parenting the New Teen in the Age of Anxiety,\" practices in Chicago. He specializes in work with teens, parents, couples and families. \r\n (CNN)When a young man I w… [+7442 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Opinion by Peter Bergen, CNN National Security Analyst",
    "title": "Opinion: The big hole in Biden's Afghan speech",
    "description":
        "Peter Bergen writes that President Joe Biden speech to the nation on Monday was deeply flawed. While Biden painted an image that his hands were tied by the agreement reached between the Trump administration and the Taliban, there are multiple reasons which wo…",
    "url":
        "https://www.cnn.com/2021/08/17/opinions/afghanistan-us-withdrawal-biden-bergen/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210816150025-01-biden-arrives-white-house-0816-super-tease.jpg",
    "publishedAt": "2021-08-17T10:11:21Z",
    "content":
        "Peter Bergen is CNN's national security analyst, a vice president at New America and a professor of practice at Arizona State University. Bergen has reported from Afghanistan since 1993. His new book… [+3041 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Tamara Hardingham-Gill, CNN",
    "title": "The underwater forest growing in the Med",
    "description":
        "The Museum of Underwater Sculpture in Cyprus (Musan,) which cost €1 million (\$1.1million) to bring to life, is made up of 93 sculptures by Jason deCaires Taylor, who aims to put the focus on \"re-wilding our natural spaces\" and \"re-reforesting areas of barren …",
    "url":
        "https://www.cnn.com/travel/article/inside-museum-of-underwater-sculpture-in-cyprus/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210811132427-06b-museum-of-underwater-sculpture-ayia-napa-restricted-super-tease.jpg",
    "publishedAt": "2021-08-17T09:02:48Z",
    "content":
        "(CNN) The artist behind the world's first underwater sculpture park has just unveiled his latest sub-aquatic project -- a spectacular sunken forest located off the coast of Pernera beach in Ayia Napa… [+5074 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author":
        "Anna Coren, Sandi Sidhu, Abdul Basir Bina and Hilary Whiteman, CNN",
    "title":
        "The Taliban knocked on her door 3 times. The fourth time, they killed her",
    "description":
        "• How US veterans feel about the war in Afghanistan ending\n• Calm and fear in Kabul as jubilant Taliban celebrate their victory\n• In pictures: The Taliban take over Afghanistan",
    "url":
        "https://www.cnn.com/2021/08/17/asia/afghanistan-women-taliban-intl-hnk-dst/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210816213948-displaced-afghan-women-super-tease.jpg",
    "publishedAt": "2021-08-17T08:14:27Z",
    "content":
        "By Anna Coren, Sandi Sidhu, Abdul Basir Bina and Hilary Whiteman, CNN\r\nUpdated 4:14 AM ET, Tue August 17, 2021\r\n (CNN)Najia was at home with her three young sons and daughter in a small village in no… [+8393 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Madeline Holcombe, CNN",
    "title":
        "Grace restrengthens into a tropical storm as it threatens the Caribbean with flooding and mudslides",
    "description":
        "Grace is once again at tropical storm strength, with the potential to pelt the still-recovering Haiti with wind, rain, floods and mudslides.",
    "url":
        "https://www.cnn.com/2021/08/17/weather/tropical-storm-grace-tuesday/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210817003806-07-haiti-earthquake-0816-super-tease.jpg",
    "publishedAt": "2021-08-17T07:56:25Z",
    "content":
        "(CNN)Grace is once again at tropical storm strength, with the potential to pelt the still-recovering Haiti with wind, rain, floods and mudslides.\r\nTropical Storm Grace was about 230 miles east of Mon… [+1524 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Madeline Holcombe, CNN",
    "title":
        "Grace restrengthens into a tropical storm as it threatens the Caribbean with flooding and mudslides",
    "description":
        "Grace is once again at tropical storm strength, with the potential to pelt the still-recovering Haiti with wind, rain, floods and mudslides.",
    "url":
        "https://www.cnn.com/2021/08/17/weather/tropical-storm-grace-tuesday/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210817003806-07-haiti-earthquake-0816-super-tease.jpg",
    "publishedAt": "2021-08-17T07:56:25Z",
    "content":
        "(CNN)Grace is once again at tropical storm strength, with the potential to pelt the still-recovering Haiti with wind, rain, floods and mudslides.\r\nTropical Storm Grace was about 230 miles east of Mon… [+1524 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Julia Hollingsworth and Chandler Thornton, CNN",
    "title":
        "New Zealand announces it's locking down the entire country ... over one Covid case",
    "description":
        "New Zealand's Prime Minister Jacinda Ardern has announced a nationwide lockdown after the country confirmed one coronavirus case -- the first locally transmitted Covid-19 case in the community since February.",
    "url":
        "https://www.cnn.com/2021/08/17/asia/new-zealand-lockdown-one-case-intl-hnk/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210817024902-jacinda-ardern-presser-0817-super-tease.jpg",
    "publishedAt": "2021-08-17T07:38:45Z",
    "content":
        "(CNN)New Zealand's Prime Minister Jacinda Ardern has announced a nationwide lockdown after the country confirmed one coronavirus case -- the first locally transmitted Covid-19 case in the community s… [+2591 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Madeline Holcombe and Joe Sutton",
    "title":
        "Wildfire conditions expected to continue in the West through next month as dozens of fires are burning in the US",
    "description":
        "More than 25,000 wildland firefighters, support personnel and incident management teams are battling dozens of large fires across the US, and the potential for additional significant fires is expected to continue for another month, the National Interagency Fi…",
    "url":
        "https://www.cnn.com/2021/08/17/weather/us-western-wildfires-tuesday/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210817021030-02-dixie-fire-0816-super-169.jpg",
    "publishedAt": "2021-08-17T07:16:57Z",
    "content":
        "More than 25,000 wildland firefighters, support personnel and incident management teams are battling dozens of large fires across the US, and the potential for additional significant fires is expecte… [+2953 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": null,
    "title": null,
    "description":
        "President Biden addressed the nation Monday, the publishers of The New York Times, The Wall Street Journal, and The Washington Post issued an open-letter to him on behalf of their \"brave Afghan colleagues\" who have \"worked tirelessly\" to assist the newspapers…",
    "url":
        "https://view.newsletters.cnn.com/messages/16291735616496a364f2024e7/raw",
    "urlToImage": null,
    "publishedAt": "2021-08-17T06:25:09Z",
    "content":
        "Oliver Darcy here at 12:10am ET on Tuesday, August 16...\r\nEvacuating Afghan journalists\r\nNews organizations are working around the clock to not only deliver the cascade of news out of Afghanistan to … [+2601 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Madeline Holcombe, CNN",
    "title":
        "US students can get back to school safely. Here are the ways to do it, expert says",
    "description":
        "Early school year Covid-19 outbreaks have sent many students back into quarantine, but health experts say the academic upheaval can be addressed if more local leaders get on board with masking in classrooms.",
    "url":
        "https://www.cnn.com/2021/08/17/health/us-coronavirus-tuesday/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210817002905-first-day-school-ca-0816-super-tease.jpg",
    "publishedAt": "2021-08-17T05:57:54Z",
    "content":
        "(CNN)Early school year Covid-19 outbreaks have sent many students back into quarantine, but health experts say the academic upheaval can be addressed if more local leaders get on board with masking i… [+5975 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Ronald Brownstein",
    "title":
        "'Breaking point': Why the red state/blue city conflict is peaking over masks",
    "description":
        "Political and population trends are colliding as the steadily escalating tension between red states and their blue cities across the Sun Belt is reaching a breaking point over the volatile issue of school masking.",
    "url":
        "https://www.cnn.com/2021/08/17/politics/2020-census-red-states-blue-cities/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210816162256-texas-school-masks-0816-super-169.jpg",
    "publishedAt": "2021-08-17T04:02:21Z",
    "content":
        "Political and population trends are colliding as the steadily escalating tension between red states and their blue cities across the Sun Belt is reaching a breaking point over the volatile issue of s… [+18813 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author":
        "By <a href=\"/profiles/joshua-berlinger\">Joshua Berlinger</a> and <a href=\"/profiles/brad-lendon\">Brad Lendon</a>, CNN",
    "title": "The latest on Afghanistan",
    "description":
        "The Taliban continues solidify their control of Afghanistan as the US ends its military's combat mission in the country. Follow here for the latest news.",
    "url":
        "https://www.cnn.com/world/live-news/afghanistan-taliban-us-news-08-17-21/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210816165235-11-taliban-afghanistan-unf-super-tease.jpg",
    "publishedAt": "2021-08-17T04:02:10Z",
    "content":
        "The Taliban has swiftly regained control of Afghanistan 20 years after US forces began Operation Enduring Freedom (OEF). \r\nThe United States linked the September 11, 2001 terrorist attacks to al Qaed… [+4495 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Kaitlan Collins, CNN",
    "title":
        "Biden administration expected to advise Covid booster shots for most Americans",
    "description":
        "Top health officials in the Biden administration are coalescing around an agreement that most Americans should get Covid booster shots eight months after becoming fully vaccinated, two sources familiar with the discussions tell CNN.",
    "url":
        "https://www.cnn.com/2021/08/16/politics/covid-19-booster-shots-biden-administration/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210401061941-01-moderna-covid-19-vaccine-texas-0329-super-tease.jpg",
    "publishedAt": "2021-08-17T03:27:04Z",
    "content":
        "Washington (CNN)Top health officials in the Biden administration are coalescing around an agreement that most Americans should get Covid booster shots eight months after becoming fully vaccinated, tw… [+2975 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Jill Martin, CNN",
    "title":
        "Naomi Osaka pauses press conference in tears after exchange with reporter",
    "description":
        "Naomi Osaka, preparing to compete in her first tennis tournament since the Tokyo Olympics, briefly took a break during a pre-tournament news conference on Monday after she started crying.",
    "url":
        "https://www.cnn.com/2021/08/16/tennis/naomi-osaka-pauses-press-conference-spt-intl/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210728151301-naomi-osaka-0725-super-tease.jpg",
    "publishedAt": "2021-08-17T03:19:39Z",
    "content":
        "(CNN)Naomi Osaka, preparing to compete in her first tennis tournament since the Tokyo Olympics, briefly took a break during a pre-tournament news conference on Monday after she started crying.\r\nThe n… [+7356 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Geneva Sands, CNN",
    "title":
        "Volunteers solicited from DHS immigration agency for Afghanistan support",
    "description":
        "The Biden administration asked federal employees from US Citizenship and Immigration Services to volunteer for assignments to support the relocation of Afghans who helped the United States, according to a notification sent to part of the workforce Monday and …",
    "url":
        "https://www.cnn.com/2021/08/16/politics/afghans-relocation-united-states/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210816223352-uscis-dhs-office-file-super-tease.jpg",
    "publishedAt": "2021-08-17T02:50:41Z",
    "content":
        "Washington (CNN)The Biden administration asked federal employees from US Citizenship and Immigration Services to volunteer for assignments to support the relocation of Afghans who helped the United S… [+3042 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Opinion by Jason Amerine",
    "title":
        "Opinion: Afghanistan's collapse was not pre-ordained. It was willful abandonment",
    "description":
        "Green Beret Lt. Col. (ret.) Jason Amerine writes that the disastrous withdrawal of the US from Afghanistant didn't have to happen this way, and was a consequence of US policy mistakes going back to the Bush administration.",
    "url":
        "https://www.cnn.com/2021/08/16/opinions/afghanistan-collapse-abandonment-jason-amerine/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210816193015-amerine-team-super-tease.jpg",
    "publishedAt": "2021-08-17T02:08:04Z",
    "content":
        "Lieutenant Colonel (retired) Jason Amerine is a 1993 graduate of the United States Military Academy with a Bachelor of Science in Arabic. He commanded a special forces team in Afghanistan after the t… [+8196 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Mallory Simon and Steve Almasy, CNN",
    "title":
        "Florida school district with thousands in isolation or quarantine calls emergency board meeting",
    "description":
        "About a week after classes started, one Tampa-area school system has called an emergency meeting to discuss Covid-19 mitigation measures after about 6,000 people were told to isolate or quarantine.",
    "url":
        "https://www.cnn.com/2021/08/16/us/florida-covid-schools-emergency-meeting/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210816215019-hillsborough-county-public-schools-super-tease.jpg",
    "publishedAt": "2021-08-17T02:06:46Z",
    "content":
        "(CNN)About a week after classes started, one Tampa-area school system has called an emergency meeting to discuss Covid-19 mitigation measures after about 6,000 people were told to isolate or quaranti… [+734 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Laura Ly, CNN",
    "title": "Lawsuit alleges Bob Dylan sexually abused a 12-year-old in 1965",
    "description":
        "A lawsuit filed in New York City claims that legendary singer-songwriter Bob Dylan sexually abused a 12-year-old girl in 1965, according to court documents filed Friday.",
    "url":
        "https://www.cnn.com/2021/08/16/entertainment/bob-dylan-sexual-abuse-lawsuit/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210816212342-01-bob-dylan-file-1966-super-tease.jpg",
    "publishedAt": "2021-08-17T01:41:53Z",
    "content":
        "(CNN)A lawsuit filed in New York City claims that legendary singer-songwriter Bob Dylan sexually abused a 12-year-old girl in 1965, according to court documents filed Friday. \r\nThe now-68-year-old wo… [+2492 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Ivan Watson, Masoud Popalzai and Sanjiv Talreja",
    "title": "How this Muppet is changing lives in war-torn Afghanistan",
    "description":
        "When the Afghan Muppet named Zari makes an appearance at an orphanage on the outskirts of Kabul, the faces of the children light up in wonder.",
    "url":
        "https://www.cnn.com/2016/09/22/asia/afghanistan-sesame-street-zari/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/160815131719-image1-super-169.jpeg",
    "publishedAt": "2021-08-17T01:22:05Z",
    "content":
        "Zari is the first and only Afghan Muppet on the country's version of Sesame Street\r\nHer puppeteer said she wants to show people that a girl can \"do anything she wants\"\r\nWhen the Afghan Muppet named Z… [+4907 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Jacqui Palumbo, CNN",
    "title": "The 'ecosexuals' hosting joyful weddings to the Earth",
    "description":
        "When long-time partners Annie Sprinkle and Beth Stephens married the Earth in 2008, it was an exuberant affair in the verdant redwoods of Santa Cruz, California, attended by more than 300 green-garbed, jubilant guests.",
    "url":
        "https://www.cnn.com/style/article/ecosexual-annie-sprinkle-beth-stephens-new-book/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210813132632-01-ecosexual-weddings-annie-sprinkle-beth-stephens-book-super-tease.jpg",
    "publishedAt": "2021-08-17T01:21:19Z",
    "content":
        "artsPublished 17th August 2021\r\nWhen long-time partners Annie Sprinkle and Beth Stephens married the Earth in 2008, it was an exuberant affair in the verdant redwoods of Santa Cruz, California, atten… [+6901 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Rebekah Riess and Amir Vera",
    "title":
        "Tennessee investigators determine dog muzzle sent to former state vaccine manager was ordered with her own credit card",
    "description":
        "Dr. Michelle Fiscus tweeted that she didn't send the muzzle to herself.",
    "url":
        "https://www.cnn.com/2021/08/16/us/tennessee-vaccine-manager-dog-muzzle-case-closed/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210715074755-dr-michelle-fiscus-coronavirus-tennessee-super-169.jpg",
    "publishedAt": "2021-08-17T01:10:30Z",
    "content":
        "A state investigation into a dog muzzle that was sent to Tennessees former vaccine manager closed Monday after it was found the muzzle was ordered with the officials own credit card. \r\nDr. Michelle F… [+2886 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Kevin Liptak, Jeff Zeleny and Kaitlan Collins, CNN",
    "title": "Inside Biden's defiant Afghanistan response",
    "description":
        "By the time images of desperate Afghans clinging to American warplanes began emerging from Kabul on Monday morning, President Joe Biden had conceded to aides he had little choice but to interrupt his stay at Camp David to return to the White House.",
    "url":
        "https://www.cnn.com/2021/08/16/politics/white-house-afghanistan-biden-crises/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210816162517-03-biden-afghanistan-remarks-0816-super-tease.jpg",
    "publishedAt": "2021-08-17T00:42:32Z",
    "content":
        "WASHINGTON (CNN)By the time images of desperate Afghans clinging to American warplanes began emerging from Kabul on Monday morning, President Joe Biden had conceded to aides he had little choice but … [+9634 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "By Forrest Brown, CNN",
    "title": "Want to go to a US national park? You must bring a face mask",
    "description":
        "If you want to visit one of America's national parks, there's an essential item you must bring: face masks. Visitors are now required to wear a mask inside all NPS buildings and even in crowded outdoor spots, even if fully vaccinated.",
    "url":
        "https://www.cnn.com/travel/article/national-park-service-new-mask-rules/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/200805110317-yosemite-national-park-0708-super-tease.jpg",
    "publishedAt": "2021-08-17T00:08:18Z",
    "content":
        "(CNN) If you want to visit one of America's national parks, there's an essential item you must bring: face masks.\r\nVisitors, employees and contractors are now required to wear a mask inside all NPS b… [+2563 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Rebekah Riess, CNN",
    "title":
        "Investigation underway after paratrooper found dead in his Fort Bragg barracks room",
    "description":
        "An investigation is underway after an 82nd Airborne Division paratrooper was found unresponsive in his barracks room on Fort Bragg and pronounced dead on Friday, a release from the 82nd Airborne Division public affairs office said.",
    "url":
        "https://www.cnn.com/2021/08/16/politics/fort-bragg-investigation/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210816191706-mikel-rubino-super-tease.jpg",
    "publishedAt": "2021-08-16T23:36:40Z",
    "content":
        "(CNN)An investigation is underway after an 82nd Airborne Division paratrooper was found unresponsive in his barracks room on Fort Bragg and pronounced dead on Friday, a release from the 82nd Airborne… [+783 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Analysis by Chris Cillizza, CNN Editor-at-large",
    "title": "Why Wisconsin will be the next front in the Big Lie fight",
    "description":
        "The Big Lie just won't die. No matter what the ridiculous audit process of the 2020 vote in Arizona produces -- and we are expecting to know sometime in the next few weeks -- the next front in the effort to claim that the presidential election was stolen from…",
    "url":
        "https://www.cnn.com/2021/08/16/politics/wisconsin-big-lie-trump/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210114174923-lockhart-big-lie-op-ed-super-tease.jpg",
    "publishedAt": "2021-08-16T22:30:30Z",
    "content":
        "THE POINT -- NOW ON YOUTUBE! \r\nIn each episode of his weekly YouTube show, Chris Cillizza will delve a little deeper into the surreal world of politics. Click to subscribe!"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": null,
    "title": "In pictures: The Taliban take over Afghanistan",
    "description":
        "• US veterans are disappointed with how the war in Afghanistan is ending -- and fearful for their Afghan allies\n• Calm and fear in Kabul as jubilant Taliban celebrate their victory",
    "url":
        "https://www.cnn.com/2021/08/16/middleeast/gallery/taliban-afghanistan/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210816165158-12-taliban-afghanistan-unf-restricted-super-tease.jpg",
    "publishedAt": "2021-08-16T22:08:17Z",
    "content":
        "Taliban fighters sit inside the presidential palace in Kabul, Afghanistan, on Sunday, August 15. The palace was handed over to the Taliban after being vacated hours earlier by Afghan government offic… [+1366 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Jen Reeder",
    "title":
        "It was easier to donate a kidney to my husband than to keep him safe during the pandemic",
    "description":
        "Jen Reeder writes, please don't betray vulnerable Americans and the people who love them. Please get vaccinated.",
    "url":
        "https://www.cnn.com/2021/08/16/opinions/kidney-transplant-covid-opinion-reeder/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210816163517-kidney-transplant-covid-opinion-reeder-super-169.jpg",
    "publishedAt": "2021-08-16T21:24:12Z",
    "content":
        "Editors Note: Jen Reeder is an award-winning freelance journalist, former president of the Dog Writers Association of America and founder of Rock 1 Kidney, a nonprofit that shares stories of ways peo… [+6547 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "By Marnie Hunter, CNN",
    "title": "CDC adds 4 destinations to 'very high' Covid-19 travel risk list",
    "description":
        "Turkey and Montenegro are now among the highest-risk destinations for travelers, according to the US Centers for Disease Control and Prevention's regularly revised travel advisories list. They come in at \"Level 4,\" the highest risk level.",
    "url":
        "https://www.cnn.com/travel/article/cdc-very-high-risk-travel-destinations-august-16/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210816154333-turkey-bodrum-june-2021-super-tease.jpg",
    "publishedAt": "2021-08-16T20:04:22Z",
    "content":
        "(CNN) Turkey and Montenegro are now among the highest-risk destinations for travelers, according to the US Centers for Disease Control and Prevention's regularly revised travel advisories list.\r\nTrav… [+2098 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Jacob Krol",
    "title": "These \$15 faceplates let you customize your Ring Doorbell",
    "description":
        "In the world of smart doorbells, Ring makes a ton of models and offers a package that has become quite popular amongst consumers. Not to mention that Ring's Video Doorbell Pro 2 is our pick for best doorbell, and the Video Doorbell 4 is the best wireless door…",
    "url":
        "https://www.cnn.com/2021/08/16/cnn-underscored/best-ring-video-doorbell-interchangeable-faceplates/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210816144304-ring-video-doorbell-lead-super-169.jpg",
    "publishedAt": "2021-08-16T19:40:33Z",
    "content":
        "In the world of smart doorbells, Ring makes a ton of models and offers a package that has become quite popular amongst consumers. Not to mention that Rings Video Doorbell Pro 2 is our pick for best d… [+2347 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Rachel Ramirez, CNN",
    "title":
        "First-ever water cuts expected for Colorado River in historic drought",
    "description":
        "Additional cuts — each tier with worsening impact on agriculture and municipal water — are expected if Lake Mead continues to fall.",
    "url":
        "https://www.cnn.com/2021/08/16/us/lake-mead-colorado-river-water-shortage/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210816123306-hoover-dam-colorado-river-nevada-0719-file-super-tease.jpg",
    "publishedAt": "2021-08-16T19:29:19Z",
    "content":
        "(CNN)The federal government on Monday is expected to declare a water shortage on the Colorado River for the first time, triggering mandatory water consumption cuts for states in the Southwest, as cli… [+4147 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Tierney Sneed, CNN",
    "title":
        "New York man pleads guilty to posting threats against Warnock and Congress",
    "description":
        "A New York man has pleaded guilty after posting online violent threats against Congress and newly elected Georgia Democratic Sen. Raphael Warnock in the lead-up to and during the January 6 insurrection, federal prosecutors announced Monday.",
    "url":
        "https://www.cnn.com/2021/08/16/politics/new-york-man-guilty-plea-warnock/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210302170558-sen-raphael-warnock-10-senate-seats-super-tease.jpg",
    "publishedAt": "2021-08-16T19:28:32Z",
    "content":
        "(CNN)A New York man has pleaded guilty after posting online violent threats against Congress and newly elected Georgia Democratic Sen. Raphael Warnock in the lead-up to and during the January 6 insur… [+2841 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Jennifer Yellin",
    "title": "The best thermometers of 2021",
    "description":
        "In our search for the best thermometers, CNN Underscored tested 15. Aside from evaluating the readings, we also considered ease of use, speed of readings and other nice-to-have options, ultimately finding three thermometers that stood out.",
    "url":
        "https://www.cnn.com/2021/08/16/cnn-underscored/best-thermometer/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210317113623-best-thermometers-lead-super-169.jpg",
    "publishedAt": "2021-08-16T19:18:09Z",
    "content":
        "As mercury thermometers are a thing of the past, you no longer have to wait several minutes to read a small red line. Instead, there are now five different types of thermometers rectal, oral, axillar… [+32268 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Paul LeBlanc, CNN",
    "title":
        "Former Michigan Rep. Paul Mitchell dies at 64 after cancer battle",
    "description":
        "Paul Mitchell, a former US congressman from Michigan who championed Republican priorities before leaving the party over its embrace of election lies, died on Sunday following a battle with cancer. He was 64.",
    "url":
        "https://www.cnn.com/2021/08/16/politics/paul-mitchell-dies/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210803150015-rep-paul-mitchell-file-restricted-super-tease.jpg",
    "publishedAt": "2021-08-16T19:13:03Z",
    "content":
        "(CNN)Paul Mitchell, a former US congressman from Michigan who championed Republican priorities before leaving the party over its embrace of election lies, died on Sunday following a battle with cance… [+1607 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Ian Berry and Kerry Flynn, CNN Business",
    "title":
        "How newspaper front pages covered the fall of Afghanistan to Taliban forces",
    "description":
        "Falls. Collapses. Chaos. Those are some of the words splashed across the front pages of newspapers in the US and around the world after the Taliban took control of Afghanistan's capital city, Kabul.",
    "url":
        "https://www.cnn.com/2021/08/16/media/front-pages-afghanistan-taliban/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210816104655-20210816-front-pages-super-tease.jpg",
    "publishedAt": "2021-08-16T18:48:10Z",
    "content":
        "By Ian Berry and Kerry Flynn, CNN Business\r\nUpdated 2:48 PM ET, Mon August 16, 2021"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Jennifer Gray, CNN meteorologist",
    "title": "Named tropical systems line up right on cue",
    "description":
        "If it seems like the tropics went from 0 to 60 in the blink of an eye, you're right. Almost as if someone turned on a light switch.",
    "url":
        "https://www.cnn.com/2021/08/16/weather/hurricane-forecast-heat-earthquake-update-wxn/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210816124853-weather-fred-grace-satellite-20210816-super-tease.jpg",
    "publishedAt": "2021-08-16T18:21:45Z",
    "content":
        "CNN Weather is launching a weekly column, publishing Mondays with the weather news you should be aware of and the week's hurricane outlook. Find updates each week here.\r\n (CNN)If it seems like the tr… [+6377 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Jeffrey Toobin, CNN",
    "title": "Attorney General Merrick Garland, don't prosecute Donald Trump",
    "description":
        "During his presidency, Trump violated many unwritten norms that govern the conduct of presidents, writes Jeffrey Toobin, and one of the most important such transgressions was his refusal to concede defeat when he lost the election. But there are other norms, …",
    "url":
        "https://www.cnn.com/2021/08/16/opinions/donald-trump-attorney-general-garland-toobin/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210811193752-trump-super-tease.jpg",
    "publishedAt": "2021-08-16T18:12:27Z",
    "content":
        "Jeffrey Toobin is chief legal analyst for CNN and the author of \"The Nine\" and \"The Oath.\" The opinions expressed in this commentary are his own. View more opinion at CNN.\r\n (CNN)Did Donald Trump com… [+6396 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Kristin Magaldi",
    "title": "Here's what the Underscored editors bought for days of deals",
    "description":
        "In case you missed it, our very first Days of Deals event is happening now — a two-day exclusive promotion featuring savings on 35 brands and products that we can't get enough of, exclusively for Underscored readers.",
    "url":
        "https://www.cnn.com/2021/08/16/cnn-underscored/editors-picks-days-of-deals/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210816081057-editors-pick-day-of-deals-lead-super-169.jpg",
    "publishedAt": "2021-08-16T17:21:17Z",
    "content":
        "In case you missed it, our very first Days of Deals event is happening now a two-day exclusive promotion featuring savings on 35 brands and products that we cant get enough of, exclusively for Unders… [+4534 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Brian Fung, CNN Business",
    "title":
        "Colonial Pipeline says ransomware attack also led to personal information being stolen",
    "description":
        "The ransomware attack that forced Colonial Pipeline, one of the largest fuel pipelines in the United States, to go offline this spring also compromised the personal information of nearly 6,000 individuals, a company spokesperson told CNN Business.",
    "url":
        "https://www.cnn.com/2021/08/16/tech/colonial-pipeline-ransomware/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210510160035-01-colonial-pipeline-new-jersey-0510-super-tease.jpg",
    "publishedAt": "2021-08-16T17:10:49Z",
    "content":
        "(CNN Business)The ransomware attack that forced Colonial Pipeline, one of the largest fuel pipelines in the United States, to go offline this spring alsocompromised the personal information of nearly… [+1967 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Artemis Moshtaghian, CNN",
    "title":
        "Cuomo announces New York healthcare workers must be vaccinated against Covid-19",
    "description":
        "The New York State Department of Health issued an order Monday requiring all healthcare workers be vaccinated against Covid-19 by September 27, according to a statement released by outgoing Gov. Andrew Cuomo's office.",
    "url":
        "https://www.cnn.com/2021/08/16/us/new-york-healthcare-vaccine/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210802113120-new-york-mobile-pharmacy-vaccine-073021-file-super-tease.jpg",
    "publishedAt": "2021-08-16T17:10:02Z",
    "content":
        "(CNN)The New York State Department of Health issued an order Monday requiring all healthcare workers be vaccinated against Covid-19 by September 27, according to a statement released by outgoing Gov.… [+1616 chars]"
  }
];
