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


## ENDPOINTS

### [TRAILAPI city/activity search](https://rapidapi.com/trailapi/api/trailapi/)
* `https://trailapi-trailapi.p.rapidapi.com/activity/?q-country_cont=&q-city_cont=Denver`
* Authorization: X-RapidAPI-Key HEADER
* Params: q-activities_activity_type_name_eq (search activities), lat, lon, limit, country_cont (search country), state_cont (search state), radius (from lat/lon), q-city_cont (city search)

### [YELP BUSINESS](https://www.yelp.com/developers/documentation/v3/business_search)
* `https://api.yelp.com/v3/businesses/search?term=restaurants&location=Denver&sort_by=distance`
* Authorization: bearer token
* Params: term (restaurants, parks, etc), location (city/address/etc), latitude, longitude, radius, categories, limit, sort_by (rating/distance/etc), price (1 = $, 2 = $$, etc)