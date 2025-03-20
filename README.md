# Chef

Chef is a simple toy project for learning and experimenting with Ruby on Rails. The end goal is to build an application for managing recipes.

## Getting Started

Some parts of the application use JavaScript, specifically [daisyUI](https://daisyui.com/) as the component library, which needs to be built first.

### Prerequisites

You'll need to install [Bun](https://bun.sh/docs/installation) by following the official installation guide for your platform.

### Setup

Once Bun is installed, run the following commands to set up the frontend assets:

```bash
bun install
bun run build
bun run build:css
```

Then, start the Rails server:

```bash
bin/rails server
```

## Useful Links

The project uses [letter_opener](https://github.com/ryanb/letter_opener) to intercept emails in the development environment. You can access the intercepted emails at:

- [http://localhost:3000/rails/mailers](http://localhost:3000/rails/mailers)
- [http://localhost:3000/letter_opener](http://localhost:3000/letter_opener)