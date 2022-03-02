<div id="top"></div>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

<!-- PROJECT LOGO -->
![Imgur](https://i.imgur.com/L2uF2q3.jpg)
<br />
<div align="center">

<h1 align="center">Take it Teasy</h3>

  <p align="center">
    <br />
    <a href="https://github.com/chazsimons/tea_service_takehome"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/chazsimons/tea_service_takehome">View Demo</a>
    ·
    <a href="https://github.com/chazsimons/tea_service_takehome/issues">Report Bug</a>
    ·
    <a href="https://github.com/chazsimons/tea_service_takehome/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

![Imgur](https://i.imgur.com/NastyhL.png)

The backend component to a tea subscription service. This repo is designed to be consumed by a separate front end, and does not contain any views.

<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

#### Development
![Atom][Atom-img]
![Github][GitHub-img]
![PostgreSQL][PostgreSQL-img]
![Ruby on Rails][Ruby on Rails-img]
![Ruby][Ruby-img]
#### Testing
![Pry][Pry-img]
![RSPEC][RSPEC-img]
![Shoulda Matchers][Shoulda Matchers-img]
#### Principles
![OOP][OOP-img]
![MVC][MVC-img]
![REST][REST-img]
<p align="right">(<a href="#top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Setup

If you're interested in exploring this project locally, follow these steps:

- Clone and/or Fork this repository
- From the command line, install gems and set up your database:
  - ```bundle install```
  - ```rails db:migrate```
- Run your server locally:
  - ```rails s```
- Start making calls to the endpoints below

<p align="right">(<a href="#top">back to top</a>)</p>

## Endpoints

To add a new subscription:

```ruby
POST '/customers/:customer_id/teas'
```
- Pass the following params to create the subscription:
```ruby
params: { tea_id: #this is the id for the tea they're subscribing to,
          price: #whole dollar amount,
          active: #default value of true when creating,
          frequency: #weekly, biweekly, or monthly
        }
```

To cancel a subscription:
```ruby
PATCH '/subscription/:subscription_id'
```
- Pass the following param to update the subscription status:
```ruby
params: { active: false }
```

To return a list of customers subscriptions:
```ruby
GET '/customer/:id/teas'
```
- Returns subscriptions as an array of hashes.

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- CONTACT -->
## Contact

Chaz Simons - chaz.simons@gmail.com

Project Link: [https://github.com/chazsimons/tea_service_takehome](https://github.com/chazsimons/tea_service_takehome)

<p align="right">(<a href="#top">back to top</a>)</p>

[Atom-img]: https://img.shields.io/badge/Atom-66595C.svg?&style=flaste&logo=atom&logoColor=white
[Bootstrap-img]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Figaro-img]: https://img.shields.io/badge/figaro-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Git-img]: https://img.shields.io/badge/Git-F05032.svg?&style=flaste&logo=git&logoColor=white
[GitHub-img]: https://img.shields.io/badge/-GitHub-181717?style=flat&logo=github
[GraphQL-img]: https://img.shields.io/badge/-GraphQL-E10098?style=flat&logo=graphql&logoColor=light-pink
[Markdown-img]: https://img.shields.io/badge/Markdown-000000.svg??style=for-the-badge&logo=markdown&logoColor=white
[PostgreSQL-img]: https://img.shields.io/badge/PostgreSQL-4169E1.svg?&style=flaste&logo=postgresql&logoColor=white
[Postman-img]: https://img.shields.io/badge/Postman-FF6C37?style=flat&logo=postman&logoColor=red
[Rubocop-img]: https://img.shields.io/badge/rubocop-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Ruby on Rails-img]: https://img.shields.io/badge/Ruby%20On%20Rails-b81818.svg?&style=flat&logo=rubyonrails&logoColor=white

<!-- #### Languages -->
[ActiveRecord-img]: https://img.shields.io/badge/ActiveRecord-CC0000.svg?&style=flaste&logo=rubyonrails&logoColor=white
[CSS3-img]: https://img.shields.io/badge/CSS3-1572B6.svg?&style=flaste&logo=css3&logoColor=white
[HTML5-img]: https://img.shields.io/badge/HTML5-0EB201.svg?&style=flaste&logo=html5&logoColor=white
[Ruby-img]: https://img.shields.io/badge/Ruby-CC0000.svg?&style=flaste&logo=ruby&logoColor=white

<!-- #### Deployment -->
[Heroku-img]: https://img.shields.io/badge/Heroku-430098.svg?&style=flaste&logo=heroku&logoColor=white
[Circle CI-img]: https://img.shields.io/badge/-CircleCi-brightgreen.svg?logo=LOGO
[Faraday-img]: https://img.shields.io/badge/faraday-b81818.svg?&style=flaste&logo=rubygems&logoColor=white

<!-- #### Testing -->
[Capybara-img]: https://img.shields.io/badge/capybara-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Launchy-img]: https://img.shields.io/badge/launchy-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Pry-img]: https://img.shields.io/badge/pry-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[RSPEC-img]: https://img.shields.io/badge/rspec-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Shoulda Matchers-img]: https://img.shields.io/badge/shoulda--matchers-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Simplecov-img]: https://img.shields.io/badge/simplecov-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[VCR-img]: https://img.shields.io/badge/vcr-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Webmock-img]: https://img.shields.io/badge/webmock-b81818.svg?&style=flaste&logo=rubygems&logoColor=white

<!-- #### Development Principles -->
[OOP-img]: https://img.shields.io/badge/OOP-b81818.svg?&style=flaste&logo=OOP&logoColor=white
[TDD-img]: https://img.shields.io/badge/TDD-b87818.svg?&style=flaste&logo=TDD&logoColor=white
[MVC-img]: https://img.shields.io/badge/MVC-b8b018.svg?&style=flaste&logo=MVC&logoColor=white
[REST-img]: https://img.shields.io/badge/REST-33b818.svg?&style=flaste&logo=REST&logoColor=white
