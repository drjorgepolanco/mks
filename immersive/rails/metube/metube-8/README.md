#Metube 0.8
###API Integration & Model Callbacks


This basic Video Sharing App has been developed following the **ninth lesson** on [Rails](http://rubyonrails.org/) at [**MakerSquare**](http://www.makersquare.com/).

Base code taken from **github:** [makersquare/metube-cohort3](https://github.com/makersquare/metube-cohort3/tree/i-start).

API's are simply a way to interact with other software. Many of the projects you encounter over the course of this program and beyond will involve interacting with APIs to access data.

#####Purpose:

Interacting with the **Youtube API** to grab data related to particular videos and learn how to use **Active Record Callbacks** to automatically trigger methods when an object is saved.

#####Topics:
- Get confortable with accessing the **Youtube API**.
- Use **model callbacks** to call particular methods upon record creation.
- Gem [Unirest](http://unirest.io/ruby.html).
- Dynamically set record data based in API calls.
- **Securely store API** keys as environment variables using **Figaro**.

#####Goal:
- The goal is to use the Youtube API to set the `description` and `title` for every video we upload based on the `youtube_id`.

#####Challenges:
- Connect the Youtube API to Rails App.
- Dynamically call video `description` based on `youtube_id`.
- Dynamically call video `title` based on `youtube_id`.
- Install gem 'figaro' and store private key to avoid pushing to Github. 

