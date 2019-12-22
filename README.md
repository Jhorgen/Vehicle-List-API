# Vehicle list API

This is the backend to my Turbo Performance react application. It features hard coded vehicle data that can be searched through and used to make calculations via the front-end. Next, I plan to build a web scraper to gather the remainder of the data required to complete the database.

Example entry:

  ```
  make: "Honda",
  model: "Accord V Wagon",
  year: 1997,
  trim: "2.2 i ES",
  horsepower: 150,
  torque: 146,
  number_of_cylinders: 4,
  engine_displacement 2.2,
  valves_per_cylinder: 4
  ```


## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.


### Setup & Deployment

You can view the live application here: https://sleepy-waters-58808.herokuapp.com/api/v1/vehicles

Or download and install it locally.

```
$cd vehicle_list

$bundle i

$rake db: create

$rake db: migrate

$rails s

visit http://localhost:3000/api/v1/vehicles
``` 

## Built With

* [Ruby on Rails](https://rubyonrails.org/)

## Authors

* **Josh Horgen**

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
