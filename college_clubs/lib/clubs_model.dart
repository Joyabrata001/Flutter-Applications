class Club {
  final String name;
  final String oneliner;
  final String logo;
  final String description;
  final List<String> activities;
  final List<String> clubHeads;

  Club({
    required this.name,
    required this.oneliner,
    //required this.logo,
    this.logo = 'assets/default_logo.png', // set a default logo
    required this.description,
    required this.activities,
    required this.clubHeads,
  });
}


final List<Club> clubs = [
  Club(
    name: 'Math Club',
    oneliner: 'For those who love math',
    //logo: 'assets/default_logo.png',
    logo: 'assets/math_club_logo.png',
    description: 'The Math Club is a place for students who enjoy math to come together and explore complex mathematical concepts. We discuss and solve problems related to various fields of math, and also participate in regional math competitions.',
    activities: ['Math quiz competition', 'Math workshop', 'Guest speaker series', 'Math tutoring'],
    clubHeads: ['John Doe', 'Jane Smith'],
  ),
  Club(
    name: 'Science Club',
    oneliner: 'For those who love science',
    //logo: 'assets/default_logo.png',
    logo: 'assets/science_club_logo.png',
    description: 'The Science Club is a community of students who share a love of science. We explore various branches of science, conduct experiments, and engage in scientific discussions. Our goal is to foster a passion for science among our members and inspire them to pursue careers in science.',
    activities: ['Science fair', 'Science quiz competition', 'Science workshops', 'Field trips'],
    clubHeads: ['David Lee', 'Emily Johnson'],
  ),
  Club(
    name: 'Coding Club',
    oneliner: 'For those who love coding',
    //logo: 'assets/default_logo.png',
    logo: 'assets/coding_club_logo.png',
    description: 'The Coding Club is a place for students who are passionate about coding and programming. We hold coding workshops and hackathons, and participate in coding competitions. Our goal is to enhance our coding skills and explore the latest trends in technology.',
    activities: ['Coding workshops', 'Hackathons', 'Coding competitions', 'Tech talks'],
    clubHeads: ['Tom Wilson', 'Sarah Brown'],
  ),
  Club(
    name: 'Art Club',
    oneliner: 'For those who love art',
    //logo: 'assets/default_logo.png',
    logo: 'assets/art_club_logo.png',
    description: 'The Art Club is a community of students who love creating art. We explore various art forms such as painting, drawing, sculpting, and digital art. We also hold exhibitions and art workshops to showcase our work and inspire others to create art.',
    activities: ['Art exhibitions', 'Art workshops', 'Drawing competitions', 'Art history lectures'],
    clubHeads: ['Sophie Thompson', 'Michael Chen'],
  ),
  Club(
    name: 'Debate Club',
    oneliner: 'For those who love to argue',
    //logo: 'assets/default_logo.png',
    logo: 'assets/debate_club_logo.png',
    description: 'The Debate Club is a place for students who love to engage in debates and discussions. We explore various topics and issues, and hold formal debates and informal discussions. Our goal is to develop critical thinking skills and learn how to effectively communicate our ideas.',
    activities: ['Debate competitions', 'Group discussions', 'Guest speaker series', 'Mock debates'],
    clubHeads: ['Daniel Kim', 'Amanda Lee'],
  ),
  Club(
    name: 'Environmental Club',
    oneliner: 'For those who love the environment',
    //logo: 'assets/default_logo.png',
    logo: 'assets/environmental_club_logo.png',
    description: 'The Environmental Club is a community of students who are passionate about the environment and sustainability. We organize events and activities to raise awareness about environmental issues, and also engage in environmental projects and initiatives. Our goal is to create a sustainable future for our planet.',
    activities: ['Environmental cleanups', 'Eco-friendly workshops', 'Environmental talks', 'Sustainability projects'],
    clubHeads: ['Olivia Johnson', 'Alex Kim'],
  ),
  Club(
    name: 'Chess Club',
    oneliner: 'For those who love playing chess',
    //logo: 'assets/default_logo.png',
    logo: 'assets/chess_club_logo.png',
    description: 'The Chess Club is for anyone interested in playing chess. We welcome players of all levels, from beginners to advanced players. Our meetings include casual games, tutorials, and discussions about chess strategy.',
    activities: ['Weekly chess tournaments', 'Chess strategy workshops', 'Casual chess games'],
    clubHeads: ['John Doe', 'Jane Smith']
  ),
  Club(
    name: 'Dance Club',
    oneliner: 'For those who love to dance',
    //logo: 'assets/default_logo.png',
    logo: 'assets/dance_club_logo.png',
    description: 'The Dance Club is for anyone who loves to dance. We welcome dancers of all levels, from beginners to advanced dancers. Our meetings include dance lessons, dance parties, and performances.',
    activities: ['Dance lessons', 'Dance parties', 'Performances'],
    clubHeads: ['Sara Lee', 'David Brown']
  ),
  Club(
    name: 'Film Club',
    oneliner: 'For those who love movies',
    //logo: 'assets/default_logo.png',
    logo: 'assets/film_club_logo.png',
    description: 'The Film Club is for anyone interested in watching and discussing movies. We welcome movie lovers of all genres and levels of expertise. Our meetings include movie screenings, discussions, and guest speakers.',
    activities: ['Movie screenings', 'Discussions', 'Guest speakers'],
    clubHeads: ['Michael Smith', 'Emily Johnson']
  ),
  Club(
    name: 'Entrepreneurship Club',
    oneliner: 'For those who want to start their own business',
    logo: 'assets/default_logo.png',
    //logo: 'assets/entrepreneurship_club_logo.png',
    description: 'The Entrepreneurship Club is for anyone interested in starting their own business. We welcome aspiring entrepreneurs of all levels of experience. Our meetings include workshops, guest speakers, and discussions on various topics related to entrepreneurship.',
    activities: ['Workshops', 'Guest speakers', 'Discussions'],
    clubHeads: ['Alex Chen', 'Michelle Lee']
  ),
  Club(
    name: 'Music Club',
    oneliner: 'For those who love music',
    logo: 'assets/default_logo.png',
    //logo: 'assets/music_club_logo.png',
    description: 'The Music Club is a community of students who share a passion for music. We explore various genres and styles of music, and hold concerts and performances. Our goal is to enhance our musical skills and share our love of music with others.',
    activities: ['Music performances', 'Music workshops', 'Jam sessions', 'Karaoke nights'],
    clubHeads: ['Avery Rodriguez', 'Ethan Nguyen'],
  ),
  Club(
    name: 'Robotics Club',
    oneliner: 'For those who love robots and technology',
    logo: 'assets/default_logo.png',
    //logo: 'assets/robotics_club_logo.png',
    description: 'The Robotics Club is a place for students who are interested in building and programming robots. We work on various projects such as robot design, automation, and artificial intelligence. Our goal is to explore the latest advances in robotics technology and develop our skills in this field.',
    activities: ['Robotics competitions', 'Robotics workshops', 'Coding sessions', 'Guest speaker series'],
    clubHeads: ['Liam Patel', 'Abby Thompson'],
  ),
  Club(
    name: 'Literature Club',
    oneliner: 'For those who love to read and write',
    logo: 'assets/default_logo.png',
    //logo: 'assets/literature_club_logo.png',
    description: 'The Literature Club is a community of students who love to read and write. We explore various genres of literature, and hold book clubs, creative writing workshops, and literary events. Our goal is to develop our reading and writing skills and share our love of literature with others.',
    activities: ['Book clubs', 'Creative writing workshops', 'Literary events', 'Guest author series'],
    clubHeads: ['Mia Johnson', 'Noah Kim'],
  ),
  Club(
    name: 'Volunteering Club',
    oneliner: 'For those who want to make a difference',
    logo: 'assets/default_logo.png',
    //logo: 'assets/volunteering_club_logo.png',
    description: 'The Volunteering Club is for students who want to give back to their community. We organize various volunteer opportunities, such as serving at soup kitchens, organizing charity events, and participating in environmental initiatives. Our goal is to make a positive impact on our community and develop leadership skills.',
    activities: ['Community service projects', 'Charity events', 'Environmental initiatives', 'Leadership training'],
    clubHeads: ['Emma Lee', 'Ryan Patel'],
  ),
  Club(
    name: 'Fashion Club',
    oneliner: 'For those who love fashion',
    logo: 'assets/default_logo.png',
    //logo: 'assets/fashion_club_logo.png',
    description: 'The Fashion Club is a place for students who are interested in fashion and design. We explore various trends and styles, and hold fashion shows, design workshops, and guest speaker events. Our goal is to enhance our fashion skills and develop our creativity in this field.',
    activities: ['Fashion shows', 'Design workshops', 'Guest speaker series', 'Fashion photography'],
    clubHeads: ['Chloe Kim', 'Aiden Patel'],
  ),
  Club(
    name: 'Laughing Club',
    oneliner: 'For those who love to laugh',
    logo: 'assets/default_logo.png',
    description: 'The Laughing Club is for anyone who loves to laugh. We organize events and activities to bring people together and create a positive, lighthearted atmosphere. Our goal is to spread joy and happiness.',
    activities: ['Comedy shows', 'Improv workshops', 'Laughter yoga'],
    clubHeads: ['Lisa Johnson', 'Mike Smith'],
  ),
  
  Club(
    name: 'Photography Club',
    oneliner: 'For those who love photography',
    logo: 'assets/default_logo.png',
    description: 'The Photography Club is for anyone who loves photography. We explore various aspects of photography, including composition, lighting, and editing. Our goal is to develop our photography skills and create stunning images.',
    activities: ['Photography workshops', 'Photo walks', 'Exhibitions', 'Photo contests'],
    clubHeads: ['Emily Davis', 'Mark Wilson'],
  ),
  
  Club(
    name: 'Gaming Club',
    oneliner: 'For those who love gaming',
    logo: 'assets/default_logo.png',
    description: 'The Gaming Club is for anyone who loves to play games. We explore various types of games, including board games, card games, and video games. Our goal is to create a fun and inclusive gaming community.',
    activities: ['Gaming tournaments', 'Game nights', 'Gaming workshops'],
    clubHeads: ['Adam Lee', 'Sophia Chen'],
  ),
  
  Club(
    name: 'Adventure Club',
    oneliner: 'For those who love adventure',
    logo: 'assets/default_logo.png',
    description: 'The Adventure Club is for anyone who loves to explore and seek adventure. We organize outdoor activities and trips, including hiking, camping, and rock climbing. Our goal is to challenge ourselves and create unforgettable experiences.',
    activities: ['Hiking trips', 'Camping trips', 'Rock climbing', 'Adventure races'],
    clubHeads: ['David Kim', 'Julia Brown'],
  ),
];