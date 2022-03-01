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
<br />
<div align="center">

<h3 align="center">Take it Teasy</h3>

  <p align="center">
    project_description
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

[![Product Name Screen Shot][product-screenshot]](https://example.com)

A backend component to a tea subscription service. This repo is designed to be consumed by a separate front end, and does not contain any views.

<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

* Ruby 2.7.2
* Rails 5.2.6
* PostgreSQL

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
Pass the following params to create the subscription:
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
Pass the following param to update the subscription status:
```ruby
params: { active: false }
```

To return a list of customers subscriptions:
```ruby
GET '/customer/:id/teas'
```
Returns subscriptions as an array of hashes.

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Your Name - [@twitter_handle](https://twitter.com/twitter_handle) - chaz.simons@gmail.com

Project Link: [https://github.com/chazsimons/tea_service_takehome](https://github.com/chazsimons/tea_service_takehome)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* []()
* []()
* []()

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/chazsimons/tea_service_takehome.svg?style=for-the-badge
[contributors-url]: https://github.com/chazsimons/tea_service_takehome/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/chazsimons/tea_service_takehome.svg?style=for-the-badge
[forks-url]: https://github.com/chazsimons/tea_service_takehome/network/members
[stars-shield]: https://img.shields.io/github/stars/chazsimons/tea_service_takehome.svg?style=for-the-badge
[stars-url]: https://github.com/chazsimons/tea_service_takehome/stargazers
[issues-shield]: https://img.shields.io/github/issues/chazsimons/tea_service_takehome.svg?style=for-the-badge
[issues-url]: https://github.com/chazsimons/tea_service_takehome/issues
[license-shield]: https://img.shields.io/github/license/chazsimons/tea_service_takehome.svg?style=for-the-badge
[license-url]: https://github.com/chazsimons/tea_service_takehome/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/chaz-simons
[product-screenshot]: images/screenshot.png
