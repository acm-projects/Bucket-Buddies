f
![bucketbuds](https://github.com/acm-projects/Bucket-Buddies/assets/94258142/666a065d-bc28-4e89-973c-83d0119da3ef)

# Bucket-Buddies

Have you ever had a bucket list of things to do with your friends but had trouble making those dreams a reality? If only you could keep track of all the ideas and make sure you're making time to make those memories. Oh wait -- you can, with Bucket Buddies! Add ideas to a group bucket list, upvote your favorites, share availability, and solidify plans inside the app. Bucket Buddies will make sure you don't forget about those bucket list ideas OR about the plans you've already set.

## MVP 🏆

- User profiles
- Adding friends
- Creation of shared bucket lists
  - Any user in the group can add bucket list ideas
  - Any user can upvote their favorite ideas in the shared list
  - Popular ideas are made obvious
- Chat function for users to discuss plans
- Built in availability sharing to find meeting times
- When an idea is being turned into a plan
  - Availability sharing will be prompted
  - A date and time will be finalized
  - Users will be prompted to confirm whether they are attending
- Notification system
  - Reminders about:
    - Chat messages
    - Highly upvoted ideas needing to be finalized into plans
    - A plan having been created, prompting users to hop on and share their availability
    - Upcoming plans that have been finalized so that the group does not forget

## Stretch Goals ⏳

- Google Calendar integration
- Idea generator where users can input locations and it will generate popular activities nearby
- A photo archive where users can upload photos of the things they did
- Invite/shortcut link to drop in other chats to get people to switch over to Bucket Buddies for planning
- Personal bucket lists with private and public ideas

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
- Jonathan

## Meet the team!

- Erin Turgut
- Andrew Alexander
- Bennett Feigenbaum
- Jonathan Lee
