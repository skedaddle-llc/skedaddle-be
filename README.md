# SKEDADDLE

## PITCH
A travel slash exploration app that creates a custom travel itinerary for a budgeted, eco-friendly weekend (or 3-day weekend) in a given city or locale. Either national or international depending on API availability. Results can also return parks/hiking/restaurant/museum recommendations, as well as cultural information (such as books/music/history/etc). Could include maps/graphs. Other potential directions include adventure tourism, historical tourism, etc.

Possible itinerary format - morning activity, lunch, afternoon activity, dinner

### END USER
Targeted towards budget/ecotourism travelers, etc. people who want to travel but need help deciding where to go, or just someone interested in learning more about a given place.

### PROBLEM
This app will be a one stop shop of aggregated information and create a short recommended itinerary. Could be budget/ecotourism/outdoors/cultural/etc themed. Restaurants recommended by budget, parks/museums/trails/etc could be recommended based on search criteria as well.

### FEATURES
Users can save and edit search results, maybe invite friends. Recommended parks, hiking trails, museums, restaurants. Top books/poetry/movies/music/historical information for a city/country. Cost of Living info. Pictures and links to find more information. Ability to alter results based on search criteria. Possible random/Geoguessr style itinerary generator. Could link to Airbnb/booking/skyscanner/etc.

### INTEGRATIONS
APIs - Yelp (restaurants), NPS/Travel Places/TrailAPI (parks/trails/hiking/biking), hotels/booking/skyscanner, Stretch: OpenAI to generate itinerary?


## MVP AND STRETCH GOALS

### MVP
A user will be able to register with a username, email and password and login with a username and password (with sad paths) from the homepage. They will have a dashboard with a nav bar (“my itineraries”, “skedaddle/search”, and “logout”). On the user dashboard a user can see their saved itineraries with links to their show pages and to delete them. On the search page a user can search by location and receive a generated weekend itinerary with 3 nearby restaurants and 3 nearby parks/trails, which is added to that user’s itineraries.

### STRETCH
A user can edit an itinerary (selecting what they like, removing unwanted recommendations, adding new restaurants or parks/hikes) and invite other users to it. They can search for restaurants by budget, distance, and/or rating, or hikes and parks by activities or difficulty. Users can also randomize a search.

### BIG STRETCH
Users can share and vote on which itinerary to use. Maps are incorporated. Itineraries have other sections, such as events/museums. A user can change the length of their trip (and so the length of their itinerary). Hotel/flight APIs incorporated. OpenAI itinerary generation incorporated.

<!-- TABLE OF CONTENTS -->
<h2 id="table-of-contents"> :book: Table of Contents</h2>

<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#techical-requirements"> ➤ Technical Requirements</a></li>
    <li><a href="#project-files-description"> ➤ Project Files Description</a></li>
    <li><a href="#getting-started"> ➤ Getting Started</a></li>
    <li><a href="#Endpoints"> ➤ Endpoints</a></li>
    <li><a href="#credits"> ➤ Credits</a></li>
  </ol>
 </details>
 <!-- PROJECT FILES DESCRIPTION -->
<h2 id="project-files-description"> :floppy_disk: Project Files Description</h2>

<ul>
  <li><b>app/controllers</li></b>
  <ol>
  <li>Contains several controllers that initiates API call processes through <i>movie_facade.rb</i></li></ol>
  <li><b>app/controllers/parks_facade.rb, restaurants_facade.rb</b></li><ol>
  <li>Processes data returned through <i>app/services</i></li></ol>
   <li><b>app/services</b>
    <ol>
  <li>Makes API calls via <i>Faraday</i></li></ol>
  <li><b>app/poros</b></li><ol>
  <li>Formats API data into Ruby objects</li></ol>
</ul>
<!-- TECHNICAL REQUIREMENTS -->
<h2 id="techical-requirements"> 💻 Technical Requirements</h2>
<ul>
  <li>Ruby 2.7.4</li>
  <li>Rails 5.2.6</li>
  <li>RSpec-Rails 5.1.2</li>
  <li>Faraday</li>
  <li>Figaro</li>
  <li>Webmock</li>
  <li>VCR</li>
  <li>Capybara</li>
  <li>SimpleCov</li>
  <li>Launchy</li>
  <li>Orderly</li>
  <li>Shoulda-Matchers</li>
  </ul>
  
  <!-- Endpoints -->
<h2 id="Endpoints"> :book: Endpoints</h2>

### [TRAILAPI city/activity search](https://rapidapi.com/trailapi/api/trailapi/)
* `https://trailapi-trailapi.p.rapidapi.com/activity/?q-country_cont=&q-city_cont=Denver`
* Authorization: X-RapidAPI-Key HEADER
* Authorization: X-RapidAPI-Key HEADER
* Params: q-activities_activity_type_name_eq (search activities), lat, lon, limit, country_cont (search country), state_cont (search state), radius (from lat/lon), q-city_cont (city search)

### [YELP BUSINESS](https://www.yelp.com/developers/documentation/v3/business_search)
* `https://api.yelp.com/v3/businesses/search?term=restaurants&location=Denver&sort_by=distance`
* Authorization: bearer token
* Params: term (restaurants, parks, etc), location (city/address/etc), latitude, longitude, radius, categories, limit, sort_by (rating/distance/etc), price (1 = $, 2 = $$, etc)
  
  <!-- GETTING STARTED -->
<h2 id="getting-started"> :book: Getting Started</h2>

<p><b>1. </b> Create a new directory on your computer where you'd like the program to live.</p>
<pre><code>$ mkdir /your_folder/skedaddle-be</code></pre>

<p><b>2. </b> Navigate into the recently created directory.</p>
<pre><code>$ cd /your_folder/skedaddle-be</code></pre>
<p><b>3. </b> Copy the repository by clicking on the code button on Github repo page (using SSH).</p>

![183747041-40f47875-442e-4008-8d00-8c45bf2731fe](https://user-images.githubusercontent.com/95776577/183752233-c9130b38-ce16-4b4c-aeb4-fdf0d0d4a137.png)

<p><b>4. </b> Clone the recently copied repository information into your currenty directory.</p>
<pre><code>$ git clone git@github.com:JohnSantosuosso/skedaddle-be.git</code></pre>

<p><b>5. </b> Open the repository in your preferred IDE.  If you are using VSCode, use the code command shown below:</p>
<pre><code>$ code .</code></pre>

<p><b>6. </b> Install dependencies found in Gemfile</a>.</p>
<pre><code>$ bundle install</code></pre>

<p><b>7. </b> Inside your project directory, install <a href="https://github.com/laserlemon/figaro"> Figaro</a> via your terminal.</p>
<pre><code>$ bundle exec figaro install</code></pre>

<p><b>8. </b> Install <a href="https://lostisland.github.io/faraday/"> Faraday</a>.</p>
<pre><code>$ bundle exec faraday install</code></pre>

<p><b>9. </b> Add API key to config/applicalion.yml</a>.</p>
<pre><code>$ trail_api_key: XXXXX, yelp_api_key: XXXXX</code></pre>

<p><b>10. </b> Run migrations</p>
<pre><code>$ rails db:{create,migrate,seed}</code></pre>

<!-- CREDITS -->
<h2 id="credits"> :scroll: Credits</h2>
<h3>Drew MacNicholas</h3>

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/dmacnicholas)
[![LinkedIn Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/drew-macnicholas-20b75660/)
<h3>Wesley Miranda</h3>

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/wes30303)
[![LinkedIn Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/wesley-miranda-80a725196/)
<h3>Eli Sachs</h3>

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/easachs)
[![LinkedIn Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/easachs/)
<h3>John Santosuosso</h3>

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/JohnSantosuosso)
[![LinkedIn Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/john-santosuosso/)
<h3>Nickolas Jones</h3>

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/nlj77)
[![LinkedIn Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/nickolas-jones-523b66b7/)
