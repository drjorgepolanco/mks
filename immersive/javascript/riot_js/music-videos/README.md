#Music Video Playlist Manager

We're going to implement a music video playlist manager.

##1.0
* Create a form for users to add a new video
* Display the list of videos in HTML
* Provide a link to each video

####Render the Video List
* In `index.html`, write a `video-list-item` template that interpolates a `title` variable, wrapped in a `h3` tag
* In `main.js`, complete the `renderVideoList` function that:
  * Iterates over each video in the `videos` array
  * Generate new HTML for each video
  * Adds the generated html to the `#video-list` div

####Link the Video
* In `index.html`, update your `video-list-item` template so that each title has an anchor tag that links to the video's youtube page.

####Creating the Form
Create an html form for a user to add a new video list item. This form should have:

* Two `<input>` tags with `type="text"`
* An appropriate `<label>` tag for each input

Create a `submit` event handler for your new form. It should:

* Prevent the form from submitting (hint: preventDefault)
* Grab the values from the **title** and **youtube id** inputs
* Add a **new object** to the `videos` array with the new title and youtube id
* Generate the new `video-list-item` html
* Add the newly generated html to the `#video-list` div