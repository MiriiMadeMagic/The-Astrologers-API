# The-Astrologers-API
Accessible Astrology API for ordinary people that want to build extraordinary apps!

I wanted to create an accessible Astrology API after I was unable to find one for my first capstone. The only decent API I could find was *severely* paywalled. I think we'd have a lot better Astrology content if we had more accessible technology Astrologers and the developers can use! So here comes me brining you **The Astrologers API**

## Story thus Far
I only have the very basic of basic schemas, data flow and an SQL file in the repo. Astrology is a practice of very complex relationships so my goal is to fine tune the basic more straightforward features - natal charts and horoscopes- then build out the application. 

* I'm planning on using Node.js for the API routes and Prisma as an ORM for the database modeling, I'm also considering using GraphQL for querying as some of the models will have to be READ ONLY (planets signs and eventually ephemeris')

* Emphemeris' and Ephemerides are essentially tables or groups of tables that contain the calculated positions for the planetary bodies for a given period of time. I'm still mulling over how I want to handle this data. Empemeris' contain so much data that it is possible that I will have to either: *keep the information in a separate database or find a secondary API that keeps this data in an easy-to-use format*
