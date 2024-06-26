# MarvelStoryExplorer
<a name="readme-top"></a>
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![LinkedIn][linkedin-shield]][linkedin-url]
<br />
<div align="center">
  <a href="">
    <img src="https://github.com/joaogdfaero/MarvelStoryExplorer/assets/103076610/939247c6-17e2-48bf-9ab7-f255004d95a9" alt="Logo" width="220" height="220">
  </a>
<h3 align="center">Marvel Story Explorer</h3>
  <p align="center">
    A Ruby on Rails app to retrieve and show data from the Marvel API.
     <br />
    <br />
    <br />
  </p>
</div>

## Project Requirements :ballot_box_with_check:
Using the [Marvel API](http://developer.marvel.com/docs), this project picks a random story and generate an HTML page with the following characteristics:

●  The story's title and description

●  A list of names and pictures of the characters that feature in the story

●  The Marvel attribution text

## Technologies
* Ruby 3.1.4
* Rails 7.0.8

## Configuration

You'll need an API key — get yours [here](http://developer.marvel.com). Create a .env file at the root of your project directory, then add your public and private keys to the .env file as following:

```ruby
PUBLIC_KEY = <your_public_key>
PRIVATE_KEY = <your_private_key>
```

## Installation
1. **Clone this repository**  
` git clone https://github.com/joaogdfaero/MarvelStoryExplorer.git`

2. **Navigate to the project folder**  
` cd MarvelStoryExplorer `

3. **Install the necessary gems**  
` bundle install`

4. **Run the application server**  
` rails s `

5. **The server will start on port: 3000 - access:**    
` http://localhost:3000 `

##
<br>Author: <strong>João Gabriel Dal Forno (joao.dal@acad.ufsm.br)</strong>

<p align="right">(<a href="#readme-top">Back to Top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/joaogdfaero/MarvelStoryExplorer.svg?style=for-the-badge
[contributors-url]: https://github.com/joaogdfaero/MarvelStoryExplorer/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/joaogdfaero/MarvelStoryExplorer.svg?style=for-the-badge
[forks-url]: https://github.com/joaogdfaero/MarvelStoryExplorer/network/members
[stars-shield]: https://img.shields.io/github/stars/joaogdfaero/MarvelStoryExplorer.svg?style=for-the-badge
[stars-url]: https://github.com/joaogdfaero/MarvelStoryExplorer/stargazers
[issues-shield]: https://img.shields.io/github/issues/joaogdfaero/MarvelStoryExplorer.svg?style=for-the-badge
[issues-url]: https://github.com/joaogdfaero/MarvelStoryExplorer/issues
[license-shield]: https://img.shields.io/github/license/joaogdfaero/MarvelStoryExplorer.svg?style=for-the-badge
[license-url]: https://github.com/joaogdfaero/MarvelStoryExplorer/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/joaogabrieldf/
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
