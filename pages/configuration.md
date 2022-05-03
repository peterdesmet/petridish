---
title: Configuration
description: >
  Overview of the configuration options in Petridish.
background: https://images.unsplash.com/photo-1507477338202-487281e6c27e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTkwfHxiaXJkc3xlbnwwfDB8MHx8&auto=format&fit=crop&crop=top&w=1200&h=600&q=80
permalink: /configuration/
toc: true
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
[posts_dmp]: https://raw.githubusercontent.com/peterdesmet/petridish/master/_posts/2019-07-08-dmp.md

## Example website

If you want to learn by example, this website uses Petridish. Browse the [Petridish repository](https://github.com/peterdesmet/petridish) to see how things are configured.

## Site-wide configuration

Your site's configuration is controlled by [`_config.yml`][config]. Set at least a title and maybe some social profiles.

## Pages

Create [pages](https://jekyllrb.com/docs/pages/) as Markdown files in your repository (e.g. [`about.md`][pages_about] for [this page](/about/)).

Pages can have the following [front matter](https://jekyllrb.com/docs/front-matter/) (only `title` is required):

```yml
---
title: Title for the page
description: Description that will appear below the title in the banner
background: /assets/images/banner_background_image.jpg
permalink: /about/
toc: false
comments: false # See posts
---

Our project ...

```

Pages will use `layout: default` by default.

`title` will appear on the page itself, but you can use a different (e.g. shorter) name in [navigation](#navigation).

`background` can be a [local][pages_home] or [remote][pages_about] image. It will be cropped vertically. For faster page loads, reduce image sizes to less than 1MB (e.g. by reducing resolution to 72dpi and/or width to 2000px).

To add a table of content based on the h2 and h3 headers of your page (like on this configuration page), add `toc: true`. The width of the page is unaffected by the table of content. The table of content is disabled by default.

For easier maintenance, organize your pages in a [`pages/`][pages_dir] directory and set their [permalink](https://jekyllrb.com/docs/permalinks/#front-matter).

## Home page

To enable options for your [home page](/) (source [`home.md`][pages_home]), add the following front matter:

```yml
layout: home
```

In `_config.yml` you can now define:

```yml
posts_on_home: 3                        # Show x number of latest posts on homepage, can be 0
tweets_on_home: true                    # Show Twitter feed of twitter_username on homepage
```

For easier maintenance, move/rename your `index.md` to `pages/home.md` and set its `permalink` to `/`.

## Team page

To enable your [team page](/team/) (source [`team.md`][pages_team]), add the following front matter:

```yml
layout: team
```

Then create a [`_data/team.yml`][data_team] file to list team members.

## Archive page

To enable your [news / blog / archive page](/blog/) (source [`archive.md`][pages_archive]) - i.e. the page listing all posts - add the following front matter:

```yml
layout: archive
```

And enable post categories by repeating the permalink for your archive page in  `_config.yml`:

```yml
archive_permalink: /blog/               # Permalink of page using archive.html layout, required when using post categories
```

To see blog posts, you'll have to create some. ☺️

## Blog posts

Create [posts](https://jekyllrb.com/docs/posts/) as `yyyy-mm-dd-title.md` Markdown files in the [`_posts/`][posts_dir] directory (e.g. [`2019-07-08-dmp.md`][posts_dmp] for [this post](/blog/2019/dmp/)).

Posts can have the following [front matter](https://jekyllrb.com/docs/front-matter/) (only `title` is required):

```yml
---
title: "Title for the post: wrap in quotes if it contains special characters"
description: Description that will appear below the title in the banner
background: /assets/images/banner_background_image.jpg
author: [Author 1, Author 2]
categories: [Category 1, Category 2]
toc: false # See pages
comments: false
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

## Markdown options

See the [Markdown guide]({{ '/markdown/' | relative_url }}) for an overview of the Markdown syntax you can use in pages and posts.

## Navigation

Create a [`_data/navigation.yml`][data_navigation] file and add pages in the order you want to include them in your top site navigation. You can also include dropdown menus.

## Colors & font

Customize colors, font type and corners in `_config.yml`:

```yml
colors:
  links: "#007bff"                      # Color for links: use a readable color that contrasts well with dark text
  banner: "#007bff"                     # Background color for page banners: use color that contrasts well with white
  footer: "#6c757d"                     # Background color for footer: use color that contrasts well with white
font_serif: true                        # Font type for page content: serif (default) or slightly smaller sans-serif
rounded_corners: true                   # Enable (default) rounded corners on boxes and buttons
```

## Logo & favicon

Add a logo by uploading it to `assets/` and referencing it in `_config.yml`:

```yml
logo: /assets/images/logo.png  # Logo in navbar, will be displayed with 30px height
```

Add a favicon by adding a `favicon.ico` file to the root of your repository.

## Footer

Add social icons to the footer by adding your (project's) social profiles in `_config.yml`:

```yml
email: your.email@example.com
twitter_username: your_twitter_username
github_username: your_github_username
```

Create a [`_data/footer.yml`][data_footer] file to further customize your footer with text, links and/or a disclaimer.

## Testing your site locally

All the above settings can be directly made in your GitHub repository in your browser, but especially during setup it is more convenient to make those changes locally, render your website locally and then push your changes to GitHub.

1. [Clone your repository](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository) to your computer.
2. Place a [`Gemfile`](https://github.com/peterdesmet/petridish/blob/master/Gemfile) in your repository root, with the content:

    ```
    gem "github-pages", group: :jekyll_plugins
    ```

3. Place a `.gitignore` in your repository root, with the content:

    ```
    # Jekyll
    _site/
    .sass-cache/
    .jekyll-cache/
    .jekyll-metadata
    ```

4. [Install Jekyll](https://jekyllrb.com/docs/#instructions). Skip the step to make a new site.
5. Serve your site with `bundle exec jekyll serve`.
6. Make changes and see the effect at `http://localhost:4000/`.
7. Push your changes to GitHub.
