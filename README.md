# Animagus
Animagus is a project web application utilizing a Rails API backend to persist game information.

## Demo

[Animagus](https://youtu.be/wRHNADaTdS0)

## Installation

Please note, this application requires both the front and backend. Click [here](https://github.com/canikwe/animagus-frontend) for instructions on installing and setting up the frontend.

### Ruby Version
* Ruby Version: ~2.3.3
* Rails Version: ~5.2.2

### Gem Installation
Once the project has been cloned onto your machine, cd into the directory and install all the Ruby gems and dependencies
```bash
bundle install
```

### Database Creation
Run the following commands in the terminal to set up the database:
```bash
rails db:create
rails db:migrate
rails db:seed
```

### Database Initialization
Run `rails s` to start the server.

![Animagus Demo](https://media.giphy.com/media/mDSPCaFWgttmLZqc2f/giphy.gif)

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
[MIT](https://choosealicense.com/licenses/mit/)
