# petridish 🧫

Petridish is a Jekyll theme for research project websites. Or your personal blog or lab website. 👩‍🔬 It's mobile-friendly (thanks to [Bootstrap 4](https://getbootstrap.com/docs/4.3/)), free, and designed to work well with [GitHub Pages](https://pages.github.com/).

## Preview

[Demo website](https://peterdesmet.github.io/petridish)

[![screenshot](screenshot.png)](https://peterdesmet.github.io/petridish)

## Installation

**Easiest setup**

1. Follow the [GitHub Pages instructions](https://pages.github.com/) to create a website on GitHub (select `Project site` and `Choose a theme`)
2. Go to `_config.yml` in your repository and replace `theme: ...` with:

    ```yml
    remote_theme: peterdesmet/petridish
    ```

3. Check your website at `http://username.github.io/repository` (it can take a minute for it to rebuild)
4. See the usage instructions below to customize your website

**Advanced setup**

If you do not what to use `remote_theme`, see the [Jekyll documentation](https://jekyllrb.com/docs/themes/#understanding-gem-based-themes) on how to install (gem-based) themes.

## Usage

The easiest way to figure out the usage might be to peek at the [Petridish repository](https://github.com/peterdesmet/petridish) to see how things are configured for the [Petridish demo website](https://peterdesmet.github.io/petridish).

### Pages (to be completed)

- Create pages
- YAML frontmatter: `title`, `description`, `permalink`
- Background image

### Home page (to be completed)

- `layout: home`
- `tweets_on_home: true`
- `posts_on_home: 3`

### Team page (to be completed)

- `layout: team`
- `_data/team.yml`

### Archive page (to be completed)

- `layout: archive`
- `archive_permalink: /blog/` for working categories

### Blog posts (to be completed)

- Default Jekyll
- YAML frontmatter: `author`, `categories`

### Navigation

Create a [`_data/navigation.yml`](_data/navigation.yml) file to list pages in the [top navigation](https://peterdesmet.github.io/petridish/).

### Logo & colours

Customize your website with a logo and different colours, by defining these in `_config.yml`:

```yml
logo: /assets/img/petri-dish_1f9eb.png  # Logo in navbar, will be displayed with 30px height
colors:
  links: "#007bff"                      # Color for links: use a readable color that contrasts well with dark text
  banner: "#007bff"                     # Background color for page banners: use color that contrasts well with white
  footer: "#6c757d"                     # Background color for footer: use color that contrasts well with white
rounded_corners: true                   # Enable (default) rounded corners on boxes and buttons
```

### Footer

Add social icons to the footer by adding your (project's) social profiles in `_config.yml`:

```yml
email: your.email@example.com
twitter_username: your_twitter_username
github_username: your_github_username
```

Create a [`_data/footer.yml`](_data/footer.yml) file to add text, links and/or a disclaimer to the [footer](https://peterdesmet.github.io/petridish/).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/peterdesmet/petridish. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

[MIT License](LICENSE)

