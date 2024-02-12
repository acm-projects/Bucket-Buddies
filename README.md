# Bucket-Buddies

Have you ever had a bucket list of things to do with your friends but had trouble making those dreams a reality? If only you could keep track of all the ideas and make sure you're making time to make those memories. Oh wait -- you can, with Bucket Buddies! Add ideas to a group bucket list, upvote your favorites, share availability, and solidify plans inside the app. Bucket Buddies will make sure you don't forget about those bucket list ideas OR about the plans you've already set.

## MVP 🏆

- User profiles, adding friends
- Group creation
  - Users can:
    - Add their bucket list ideas
    - Upvote their favorite ideas posted in the group
- Plan creation
  - Users can:
    - Provide their availability
    - Select a time and finalize the plan
    - Confirm whether they are attending
- Notification system
  - Reminders about:
    - Making a plan for items on the bucket list (starting with the most upvoted ideas)
    - A plan having been created, to encourage users to hop on and share their availability
    - Upcoming plans that have been finalized so that the group does not forget
- Google Calendar integration

## Stretch Goals ⏳

- Chat feature for plan discussion
- A poll feature to help users make decisions about which plans to pursue and the specific details of carrying them out
- A personal photo journal where users can upload photos or write journal entries about the things they got together and did with Bucket Buddies
- A year in review to remind users how much they enjoyed actually doing the things they wanted to do

## Milestones 📆

| Week | Task        | Front End   | Back End |
| ---- | ----------- | ---------   | -------- |
| 1    | Decide roles and tech stack, find weekly meeting time, set up environment, brainstorm ideas and create design, Figma wireframes |  |  |
| 2    | 20% | Learn how to use Flutter / React Native and create sign up / login pages | Learn how to use Firestore and set up user authentication process |
| 3/4  | 60% | Create account and friend request pages; create group pages where users can 1) create groups with friends, 2) add their bucket list items, 3) upvote items added by friends | Set up data structuring for friends / friend requests; work on storing bucket list items in friend groups and their number of upvotes |
| 5/6  | 80% | Create plan pages where users share availability, finalize a time, and confirm whether they will be attending | Push notifications with Firebase Cloud Messaging or other method; reminders about 1) doing things on the bucket list, 2) plan created (share availability now), 3) reminders as date/time approaches; Google Calendar API for gCal integration |
| 7/8  | 100%, Integration, stretch goals | Finish and finalize all screens; stretch goals; integrate | Finish and finalize notification system; stretch goals; integrate |
| 9/10 | Create and practice presentation; add finishing touches to app |  |  |

## Tech Stack 💻

- Side note: React Native + MERN Stack is also an option; higher learning curve but also more appealing on participant resumes
  - Discuss with participants Week 1
  - Will switch out Flutter/Firebase resources for MERN stack resources if this decision is reached

- Front-End: Flutter
  - Widgets for UI design and easy integration with Firebase

- Back-End: Firebase
  - Real-time updates for the collaborative features like bucket list sharing and upvoting
  - User authentication
  - Firebase Cloud Messaging for push notifications

- Resources:
  - [Flutter & Firebase Playlist](https://www.youtube.com/playlist?list=PL4cUxeGkcC9j--TKIdkb3ISfRbJeJYQwC)
  - [Flutter & Firebase with User Authentication And Firebase Cloud Messaging for Push Notifications](https://www.youtube.com/watch?v=Ob5JkM0_ppM&list=PLxefhmF0pcPm1rsPMBNaivKmr_jY2dewJ)
  - [Push Notifications](https://www.youtube.com/watch?v=k0zGEbiDJcQ)
  - [Flutter App Tutorials](https://docs.flutter.dev/codelabs)

- APIs
  - [Google Calendar API](https://developers.google.com/calendar/api/guides/overview)

## Software to Install 📂

- [Visual Studio Code](https://code.visualstudio.com/download)
- [Git](https://www.git-scm.com/downloads)
- [Flutter](https://docs.flutter.dev/get-started/install)
- [Firebase](https://firebase.google.com/docs/flutter/setup?platform=ios)

## Roadblocks and Possible Solutions 👾

- Learning curve to the technologies
  - With all of the tutorials and documentation available, we should be able to overcome this
  - Make sure participants are keeping up with learning how to use Flutter / Firebase / Git early on
- Large number of screens to implement for frontend
  - Start working on this early on and try to cut down to the minimum number possible to begin with for the MVP
- Lots of different data must be stored in database for backend (users, friends, bucket lists, created plans)
  - Start working on this early on so there is time to address any issues
  - Research best data structuring practices for these commonly implemented ideas such as friends

## Competition 📊

- Troupe
  - Exclusively focused on planning travel/trips with a group, not hangouts, dinners, and other things on a bucket list like Bucket Buddies
  - Includes trip pages, polls, voting, itinerary creation
- Howbout
  - Share calendars, find when everyone is free, chat
  - Not about creating a bucket list and making plans surrounding those ideas like Bucket Buddies is
- When2Meet
  - Share availability and find when everyone is free
  - Bucket Buddies will have many more features all inside of the app to help people make plans and do the things they’ve wanted to do

## Other Resources ✨

- [Git basics](https://www.youtube.com/watch?v=USjZcfj8yxE)
- [Figma](https://www.figma.com/)
- [Postman](https://www.postman.com/)
  - [Tutorials](https://learning.postman.com/docs/introduction/overview/)
- [Pitch](https://pitch.com/)
- [Canva](https://www.canva.com/)

<<<<<<< HEAD
- Bennett
=======
<<<<<<< HEAD
## Meet the team!
=======

- Erin Turgut
>>>>>>> 25c6418fde5d33b630f45423a843bb2899826ccf
>>>>>>> 341ab1ed1b510cdc0b8f4eb529589eee47b73d95
