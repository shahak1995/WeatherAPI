# WeatherAPI
### Description
This Service Object Model helps to call the weather API using the HTTParty, gets the data from the website and retrieves it by turning parsing it into a JSON file. Once this is retrieved, the test are done to check each of the elements within the hashes and arrays of the data to see if it is the right data type. Once all the test is done, through the use of RSpec, the test are run to see if they pass or not through the use of Red and Green; Red being a failure and Green being it has passed.

### Languages used
* Ruby

### How to download
1. Git clone 'https://github.com/shahak1995/WeatherAPI'
2. Run 'bundle' in the terminal to install the gems
3. Run 'rspec'

### How to use
1. Open the folder through a code editor of your choice
2. In the terminal run bundle to install all of your gems which will create a Gemfile.lock file with all of your dependancies 
3. Generate your own API Key from the OpenWeather website and include it in the .env file
4. Run RSpec in the terminal to test if you test code have passed or not by putting into the terminal 'rspec'
5. If the test are green, then the test have passed and are working correctly
6. If the test are red, then the test have failed and theres either something wrong with the test code or the method being called

### Challenges (you can include images and code block here)
1. Testing the five day weather forecast data
2. Doing the loops for the spec and service files
3. Hiding the API Key through the use of ENV and calling it from the .env file

### Learning points
1. Make sure the loops are called properly
2. Hide the api key with the right location of where its suppose to be
3. Oraganising priorities within the code