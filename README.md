<a name="readme-top"></a>

<div align="center">

  <h3><b>Restaurant Table Reservation(Back End)</b></h3>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
    - [🚀 Kanban board](#kanban)
    - [🚀 Api documentation](#api-documentation)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

# 📖 [Restaurant Table Reservation] <a name="about-project"></a>

**[Restaurant Table Reservation]** holds the code for the backend of Restaurant table reservation app, The app allows user to register, add a table, reserve a table and delete the table or the reservation. The backend is built using Ruby On Rails and communicates with the frontend of the app to provide a seamless user experience. The backend includes functionality for user authentication, allowing only authorized users to use the application. It also includes a Postgresql database to store information about the Restaurant tables available, as well as information about user reservations.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

- Ruby
- Rails
- PostgreSQL

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **[Reserve a Table]**
- **[Add A Table]**
- **[Cancel Reservation]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Kanban board <a name="kanban"></a>

- [Link to kanBan Board](https://github.com/users/george827/projects/8)

### Initial state
![image](https://user-images.githubusercontent.com/61289730/236206465-62bfe6e2-80bf-4355-a30c-fd4aa1cbd917.PNG)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### API Documentation <a name="api-documentation"></a>

- Check [swagger documentation](https://book-a-table.onrender.com/api-docs)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- Install [ruby](https://www.ruby-lang.org/en/) on your computer or run it with docker.
- Install [Postgrsql](https://www.postgresql.org/).
- Install rails (on your terminal): gem install rails

### Setup

Clone this repository to your desired folder:

```sh
  git clone https://github.com/george827/Book-reservation-Back-End.git
  cd Book-reservation-Back-End/
```

### Install

Install this project with:

```sh
  bundle install # installs necessary project gems
```

### Usage

To run the project, execute the following command:

- First, change the username and password in the config/database.yml to your own username and password e.g.

```
username: postgres
password: 12345
```

- You may also need to change the ruby version in Gemfile depending on your current ruby version.

- Next, run the following commands to create a database, apply database migrations and run seeds file

```
rails db:create db:migrate db:seed
```

- Finally, spin up the rails server

```sh
  rails server
```

### Run tests

To run tests, run the following command:

```sh
  rspec spec
```

### Deployment

You can deploy this project using:

You can deploy this project on [render](https://render.com/):

- Follow the steps in this [documentation](https://render.com/docs/deploy-rails) to deploy a rails app.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👥 Authors <a name="authors"></a>

👤 **George kinyanjui**

- GitHub: [@george827](https://github.com/george827)
- Twitter: [@geok8376](https://twitter.com/geok8376)
- LinkedIn: [George kinyanjui](https://www.linkedin.com/in/georgekinyanjui/)

👤 **Wilson Kimiri**

- GitHub: [@willy836](https://github.com/willy836)
- Twitter: [@Kimiri836](https://twitter.com/kimiri836/)
- LinkedIn: [Wilson Kimiri](https://www.linkedin.com/in/wilson-kimiri/)

👤 **Harshita Jain**

- GitHub: [@harshitajain06](https://github.com/harshitajain06)
- Twitter: [@harshitajain06](https://twitter.com/harshitajain06)
- LinkedIn: [Harshita Jain](https://linkedin.com/in/HarshitaJain)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **[Filter users by their roles]**
- [ ] **[Update table details]**
- [ ] **[Rate the service]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/george827/Book-reservation-Back-End/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project you can give it a star ⭐️

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- This design was inspired by [Murat Korkmaz](https://www.behance.net/muratk), the author of the original design.
- I would like to thank Microverse for the guidance and provision of Ruby on Rails learning materials.
- I would like to acknowledge my coding partners [Harshita Jain](https://github.com/harshitajain06) and [Wilson Kimiri](https://github.com/willy836) for their contribution to this project. Thank you for your hard work and collaboration. You were instrumental in bringing this project to fruition.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](https://github.com/george827/Book-reservation-Back-End/blob/dev/LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
