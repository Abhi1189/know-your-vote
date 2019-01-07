# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Topic.delete_all
Quote.delete_all
Party.delete_all

parties = Party.create!([
  {id: 1, name: 'Green Party', Leadername: 'Elizabeth May', Image_Url: 'https://i.ibb.co/N2n8bVL/Elizabeth-may.jpg'},
  {id: 2, name: 'New Democratic Party', Leadername: 'Jagmeet Singh', Image_Url: 'https://i.ibb.co/fXv6nkM/Jagmeet-Singh.jpg'},
  {id: 3, name: 'Liberal Party', Leadername: 'Justin Trudeau', Image_Url: 'https://i.ibb.co/YpSWTJg/justin-trudeau.jpg'},
  {id: 4, name: 'Conservative Party', Leadername: 'Andrew Scheer', Image_Url: 'https://i.ibb.co/YBp05Ss/andrew-scheer.jpg'}
  ])

grn = parties[0].id
ndp = parties[1].id
lib = parties[2].id
cp = parties[3].id

quotes = Quote.create!([
  {text: "Canada needs a domestic energy strategy and a real climate plan that makes sense.",
  party_id: grn},
  {text: "If young people aged 18 to 21 are forced to buy pot from criminals, it will not help us eliminate the black market",
  party_id: lib},
  {text: "Government policies and services continue to be pervaded by prejudice, and too many Canadians who identify as LGBTQI2S+ find themselves the targets of structural discrimination... This has to end, starting with concrete moves by the federal government.",
  party_id: ndp},
  {text:"Right now we're focused on fighting against the carbon tax.",
  party_id: cp},

  {text: "I don't see the relevance of (the role of the British Monarchy in Canada)... We've got a democracy, we're proud of our democracy... I think we should focus on that.",
  party_id: ndp},
  {text: "We continue to pursue our policies of openness towards immigration, refugees, without compromising security.", party_id: lib},
  {text:"I'm an authentic person, I am pro-life, you know, I've always expressed that and absolutely been consistent on that.",
  party_id: cp},
  {text: "Once you get rid of the first past the post voting system... you allow people to vote for what they want.", party_id: grn},

  {text: "We are an open, compassionate country that understands that welcoming in immigrants and refugees is a benefit to our communities, to our country, to our world. But that we have rules and a rigorous immigration system that is applied and will continue to be applied in every single case.",
  party_id: lib},
  {text: "(speaking on the importance of diversification of the Canadian economy) We (Canadians) should never have thought it was smart economic practice to put all our eggs in the bitumen basket.",
  party_id: grn},
  {text:"We are going to now start to see the consequences of the legalization of marijuana... and we're going to propose changes to the regime based on the feedback that we see.",
  party_id: cp},
  {text: "We should be supporting, caring for, and helping people that are struggling with addiction, mental health, and poverty, instead of criminalizing them.",
  party_id: ndp},

  {text: "Lowering taxes for middle class and raising them on wealthiest 1%,... Has led to significant economic growth because people who have more money in their pockets and spend it instead of stashing it away or investing it, actually contribute to economic activity in significant ways.",
  party_id: lib},
  {text: "We need real climate action and we need it now.",
  party_id: grn},
  {text: "To me, poverty, mental health, and addictions don't sound like a criminal justice problem. They sound like a social justice problem that should be dealt with like a social justice problem. And that's why I'm calling for the decriminalization of all personal possession offences when it comes to drugs",
  party_id: ndp},
  {text:"The Liberals would love to have people believe that the choice is a carbon tax or nothing. I reject that.", party_id: cp},

  {text: "(Wealth inequality)... creates a society that's less vibrant, less civically engaged, not as safe, not as inclusive. I think (wealth inequality) hurts all of us.",
  party_id: ndp},
  {text: "There has been a failure of public policy - the prohibition of marijuana has not worked in this country... By controlling and regulating the sale of marijuana, we know that we're going to make it more difficult for young people to access it,(and) we're going to remove the profits from the pockets of criminal organizations.",
  party_id: lib},
  {text: "The underpinnings of our program are that we modernize our economy by working towards the post-carbon future.", party_id: grn},
  {text:"I... recognize the fundamental equality between men and women.",
  party_id: cp}
  ])

topics = Topic.create!([
  {name: "Legalized Cannabis", description: "Bacon ipsum dolor amet brisket cupim picanha shank andouille pork loin. Picanha ham chicken, landjaeger kielbasa drumstick pig chuck rump prosciutto meatloaf beef ribs pork loin venison. Pork brisket short loin strip steak, swine pork chop spare ribs bresaola pancetta filet mignon andouille ground round kielbasa hamburger picanha. Beef ribs tenderloin bresaola, sausage buffalo pig cupim biltong meatloaf fatback turkey cow turducken swine.",
  good: "People don't expect government to solve all their problems. They stood on the Edmund Pettus Bridge, as the blows of billy clubs rained down. There was even a time when the Christian Coalition determined that its number one legislative priority was tax cuts for the rich. But we can only achieve it together.",
  bad: "Louis, and thousands more like her, who has the grades, has the drive, has the will, but doesn't have the money to go to college. But we cannot walk away this time. These challenges are not all of government's making.
  ",
  photo_url: "https://i.ibb.co/74f0L8w/cannabis.jpg"
  },
  {name: "Keystone XL Pipeline", description: "Value-added put a record on and see who dances you better eat a reality sandwich before you walk back in that boardroom, and goalposts strategic high-level 30,000 ft view for data-point, and execute . Nail jelly to the hothouse wall run it up the flag pole i’ve been doing some research this morning and we need to better UI, for manage expectations. Draft policy ppml proposal rock Star/Ninja, for meeting assassin.",
  good: "People don't expect government to solve all their problems. They stood on the Edmund Pettus Bridge, as the blows of billy clubs rained down. There was even a time when the Christian Coalition determined that its number one legislative priority was tax cuts for the rich. But we can only achieve it together.",
  bad: "Louis, and thousands more like her, who has the grades, has the drive, has the will, but doesn't have the money to go to college. But we cannot walk away this time. These challenges are not all of government's making.
  ",
  photo_url: "https://i.ibb.co/nfCQvGd/keystone.jpg"
},
  {name: "Carbon Tax", description: "Hodor HodorHodor Hodor Hodor HodorHodor Hodor Hodor Hodor Hold the dooooooooorrrrr!",
  good: "People don't expect government to solve all their problems. They stood on the Edmund Pettus Bridge, as the blows of billy clubs rained down. There was even a time when the Christian Coalition determined that its number one legislative priority was tax cuts for the rich. But we can only achieve it together.",
  bad: "Louis, and thousands more like her, who has the grades, has the drive, has the will, but doesn't have the money to go to college. But we cannot walk away this time. These challenges are not all of government's making.
  ",
  photo_url: "https://i.ibb.co/gJQczGX/carbon-tax.jpg"
  },
  {name: "Subsidized Housing", description: "At every opportunity, they've told evangelical Christians that Democrats disrespect their values and dislike their Church, while suggesting to the rest of the country that religious Americans care only about issues like abortion and gay marriage; school prayer and intelligent design. He simply says to everyone in the room, I am here because of Ashley. But I will also renew the tough, direct diplomacy that can prevent Iran from obtaining nuclear weapons and curb Russian aggression. They have killed people of different faiths - more than any other, they have killed Muslims.",
  good: "People don't expect government to solve all their problems. They stood on the Edmund Pettus Bridge, as the blows of billy clubs rained down. There was even a time when the Christian Coalition determined that its number one legislative priority was tax cuts for the rich. But we can only achieve it together.",
  bad: "Louis, and thousands more like her, who has the grades, has the drive, has the will, but doesn't have the money to go to college. But we cannot walk away this time. These challenges are not all of government's making.
  ",
  photo_url: "https://i.ibb.co/N7vVD5S/housing-large.jpg"
  },
  {name: "Proportional Representation", description: "Take five, punch the tree, and come back in here with a clear head baseline the procedure and samepage your department, yet run it up the flag pole and driving the initiative forward or when does this sunset? . Synergestic actionables this proposal is a win-win situation which will cause a stellar paradigm shift, and produce a multi-fold increase in deliverables let's schedule a standup during the sprint to review our kpis.",
  good: "People don't expect government to solve all their problems. They stood on the Edmund Pettus Bridge, as the blows of billy clubs rained down. There was even a time when the Christian Coalition determined that its number one legislative priority was tax cuts for the rich. But we can only achieve it together.",
  bad: "Louis, and thousands more like her, who has the grades, has the drive, has the will, but doesn't have the money to go to college. But we cannot walk away this time. These challenges are not all of government's making.
  ",
  photo_url: "https://i.ibb.co/D45Zrnd/prop-rep.jpg"
  },
  {name: "Prince Eric's Hair", description: "Somewhere there's a girl, Who's like the shimmer of the wind upon the water, somewhere there's a girl, Who's like the glimmer of the sunlight on the sea, Somewhere there's a girl, Who's like a swell of endless music, Somewhere she is singing, And her song is meant for me.",
  good: "People don't expect government to solve all their problems. They stood on the Edmund Pettus Bridge, as the blows of billy clubs rained down. There was even a time when the Christian Coalition determined that its number one legislative priority was tax cuts for the rich. But we can only achieve it together.",
  bad: "Louis, and thousands more like her, who has the grades, has the drive, has the will, but doesn't have the money to go to college. But we cannot walk away this time. These challenges are not all of government's making.
  ",
  photo_url: "https://i.ibb.co/LRVFFDm/eric.jpg"
  },
  ])

results = Result.create!([
  {grn: 2, ndp: 3, lib: 3, cp: 1},
  {grn: 2, ndp: 3, lib: 3, cp: 2},
  {grn: 6, ndp: 2, lib: 0, cp: 0},
  {grn: 4, ndp: 1, lib: 1, cp: 1},
  {grn: 2, ndp: 2, lib: 4, cp: 0},
  {grn: 0, ndp: 1, lib: 0, cp: 6},
  {grn: 0, ndp: 3, lib: 1, cp: 3},
  {grn: 1, ndp: 1, lib: 5, cp: 2},
  {grn: 0, ndp: 5, lib: 2, cp: 3},
  ])
