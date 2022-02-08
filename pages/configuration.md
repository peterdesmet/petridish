---
title: Configuration
description: >
  This page list all the configuration options you have in Petridish.
background: https://images.unsplash.com/photo-1480506132288-68f7705954bd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80
permalink: /configuration/
---

<!-- Links to the repository -->
[config]: https://raw.githubusercontent.com/peterdesmet/petridish/master/_config.yml
[pages_dir]: https://github.com/peterdesmet/petridish/tree/master/pages
[pages_about]: https://raw.githubusercontent.com/peterdesmet/petridish/master/pages/about.md
[pages_archive]: https://raw.githubusercontent.com/peterdesmet/petridish/master/pages/archive.md
[pages_home]: https://raw.githubusercontent.com/peterdesmet/petridish/master/pages/home.md
[pages_team]: https://raw.githubusercontent.com/peterdesmet/petridish/master/pages/team.md
[posts_dir]: https://github.com/peterdesmet/petridish/tree/master/_posts
[data_footer]: https://raw.githubusercontent.com/peterdesmet/petridish/master/_data/footer.yml
[data_navigation]: https://raw.githubusercontent.com/peterdesmet/petridish/master/_data/navigation.yml
[data_team]: https://raw.githubusercontent.com/peterdesmet/petridish/master/_data/team.yml

### Petridish site example

If you want to learn by example, this website uses Petridish. Browse the [Petridish repository](https://github.com/peterdesmet/petridish) to see how things are configured.

### Site-wide configuration

Your site's configuration is controlled by [`_config.yml`][config]. Set at least a title and maybe some social profiles.

### Pages

Create [pages](https://jekyllrb.com/docs/pages/) as Markdown files in your repository (e.g. [`about.md`][pages_about]).

Pages can have the following [front matter](https://jekyllrb.com/docs/front-matter/) (only `title` is required):

```yml
---
title: Title for the page
description: Description that will appear below the title in the banner
background: /assets/images/banner_background_image.jpg
permalink: /about/
---

Our project ...

```

`title` will appear on the page itself, but you can use a different (e.g. shorter) name in [navigation](#navigation).

`background` can be a [local][pages_home] or [remote][pages_about] image. It will be cropped vertically. For faster page loads, reduce image sizes to less than 1MB (e.g. by reducing resolution to 72dpi and/or width to 2000px).

Pages will use `layout: default` by default.

For easier maintenance, organize your pages in a [`pages/`][pages_dir] directory and set their [permalink](https://jekyllrb.com/docs/permalinks/#front-matter).

### Home page

To enable options for your [homepage][pages_home], add the following front matter:

```yml
layout: home
```

In `_config.yml` you can now define:

```yml
posts_on_home: 3                        # Show x number of latest posts on homepage, can be 0
tweets_on_home: true                    # Show Twitter feed of twitter_username on homepage
```

For easier maintenance, move/rename your `index.md` to [`pages/home.md`][pages_home] and set its `permalink` to `/`.

### Team page

To enable your [team page][pages_team], add the following front matter:

```yml
layout: team
```

Then create a [`_data/team.yml`][data_team] file to list [team members](https://peterdesmet.github.io/petridish/team/).

### Archive page

To enable your [news / blog / archive page][pages_archive] (i.e. the page listing all posts), add the following front matter:

```yml
layout: archive
```

And enable post categories by repeating the permalink for your archive page in  `_config.yml`:

```yml
archive_permalink: /blog/               # Permalink of page using archive.html layout, required when using post categories
```

To see blog posts, you'll have to create some. ☺️

### Blog posts

Create [posts](https://jekyllrb.com/docs/posts/) as `yyyy-mm-dd-title.md` Markdown files in the [`_posts/`][posts_dir] directory.

Posts can have the following [front matter](https://jekyllrb.com/docs/front-matter/) (only `title` is required):

```yml
---
title: "Title for the post: wrap in quotes if it contains special characters"
description: Description that will appear below the title in the banner
background: /assets/images/banner_background_image.jpg
author: [Author 1, Author 2]
categories: [Category 1, Category 2]
comments: true
---

We are happy to announce ...

```

Posts can be shown on an [archive page](#archive-page) and on the [home page](#home-page).

Posts will use `layout: default` by default.

To enable post comments, add your site to [Disqus](https://disqus.com/) and add `comments: true` to each post where you want comments. Comments are disabled by default.

To change the permalink of all posts from the default `yyyy/mm/dd/title.html` to e.g. `blog/{filename}/` without having to add a `permalink` to each post, set a [front matter default](https://jekyllrb.com/docs/step-by-step/09-collections/#front-matter-defaults) in `_config.yml`:

```yml
defaults:
  -
    scope:
      path: ""
      type: "posts"
    values:
      permalink: "/blog/:slug/"         # Use /blog/{filename}/ as permalink for all posts
```

### Markdown options

See the [Markdown guide](/markdown) for an overview of the Markdown syntax you can use in pages and posts.

### Navigation

Create a [`_data/navigation.yml`][data_navigation] file. Add pages in the order you want to include them in your top site navigation. You can also include dropdown menus.

### Colors & logo

Customize colors and corners in `_config.yml`:

```yml
colors:
  links: "#007bff"                      # Color for links: use a readable color that contrasts well with dark text
  banner: "#007bff"                     # Background color for page banners: use color that contrasts well with white
  footer: "#6c757d"                     # Background color for footer: use color that contrasts well with white
rounded_corners: true                   # Enable (default) rounded corners on boxes and buttons
```

Add a logo by uploading it to `assets/` and referencing it in `_config.yml`:

```yml
logo: /assets/images/logo.png  # Logo in navbar, will be displayed with 30px height
```

### Footer

Add social icons to the footer by adding your (project's) social profiles in `_config.yml`:

```yml
email: your.email@example.com
twitter_username: your_twitter_username
github_username: your_github_username
```

Create a [`_data/footer.yml`][data_footer] file to further customize your footer with text, links and/or a disclaimer.
