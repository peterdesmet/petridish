---
title: Configuration
description: Overview of the configuration options in Petridish.
background:
  img: https://images.unsplash.com/photo-1507477338202-487281e6c27e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTkwfHxiaXJkc3xlbnwwfDB8MHx8&auto=format&fit=crop&crop=top&w=1200&h=600&q=80
  by: Mathew Schwartz
  href: https://unsplash.com/photos/5iFZBM7qgWc
permalink: /docs/configuration/
toc: true
---

<!-- Links to the repository -->
[config]: https://raw.githubusercontent.com/peterdesmet/petridish/main/_config.yml
[pages_dir]: https://github.com/peterdesmet/petridish/tree/main/pages
[pages_about]: https://raw.githubusercontent.com/peterdesmet/petridish/main/pages/about.md
[pages_archive]: https://raw.githubusercontent.com/peterdesmet/petridish/main/pages/archive.md
[pages_home]: https://raw.githubusercontent.com/peterdesmet/petridish/main/pages/home.md
[pages_team]: https://raw.githubusercontent.com/peterdesmet/petridish/main/pages/team.md
[posts_dir]: https://github.com/peterdesmet/petridish/tree/main/_posts
[data_footer]: https://raw.githubusercontent.com/peterdesmet/petridish/main/_data/footer.yml
[data_navigation]: https://raw.githubusercontent.com/peterdesmet/petridish/main/_data/navigation.yml
[data_custom_navigation]: https://raw.githubusercontent.com/peterdesmet/petridish/main/_data/custom-navigation.yml
[data_team]: https://raw.githubusercontent.com/peterdesmet/petridish/main/_data/team.yml
[posts_dmp]: https://raw.githubusercontent.com/peterdesmet/petridish/main/_posts/2019-07-08-dmp.md

## Example website

If you want to learn by example, this website uses Petridish. Browse the [Petridish repository](https://github.com/peterdesmet/petridish) to see how things are configured.

## Site-wide configuration

Your site's configuration is controlled by [`_config.yml`][config]. Set at least a title and maybe some social profiles.

## Pages

Create [pages](https://jekyllrb.com/docs/pages/) as Markdown files in your repository (e.g. [`about.md`][pages_about] for [this page]({{ '/about/' | relative_url }})).

Pages can have the following [front matter](https://jekyllrb.com/docs/front-matter/) (only `title` is required):

```yml
---
title: Title for the page
description: Description that will appear below the title in the banner
background: /assets/images/banner_background_image.jpg
permalink: /about/
toc: false
comments: false # See posts
published: true # See posts
---

Our project ...

```

Pages will use `layout: default` by default.

`title` will appear on the page itself, but you can use a different (e.g. shorter) name in [navigation](#navigation).

`background` can be a [local][pages_home] or [remote][pages_about] image. It will be cropped vertically. For faster page loads, reduce image sizes to less than 1MB (e.g. by reducing resolution to 72dpi and/or width to 2000px).

`background` can also be provided with attribution information:

```yml
background:
  img: https://images.unsplash.com/photo-1507477338202-487281e6c27e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTkwfHxiaXJkc3xlbnwwfDB8MHx8&auto=format&fit=crop&crop=top&w=1200&h=600&q=80
  by: Mathew Schwartz # Creator of the image
  href: https://unsplash.com/photos/5iFZBM7qgWc # Link to the original source
```

To add a table of content based on the h2 and h3 headers of your page (like on this configuration page), add `toc: true`. The width of the page is unaffected by the table of content. The table of content is disabled by default.

If you only have a few pages (less than 20), organize them in a [`pages/`][pages_dir] directory and set their [permalink](https://jekyllrb.com/docs/permalinks/#front-matter).

## Organizing pages

If your site has many pages, you can organize them in a directory structure, e.g.:

```yml
# As named files                      # As directories with index.md
about.md                              about/index.md
courses.md                            courses/
courses/                                index.md
  2021.md                               2021/
  2021/                                   index.md
    course-1.md                           course-1/index.md
    course-2.md                           course-2/index.md
    exercises.md                          exercises/index.md
  2022.md                               2022/
  2022/                                   index.md
    course-1.md                           course-1/index.md
    course-2.md                           course-2/index.md
    exercises.md                          exercises/index.md
```

Starting the directory structure from the root of your repository has the advantage (in both approaches) that the default permalink of the pages will be their path, e.g. `https://example.org/courses/2022/course-1/`.

To provide better access to deeper sections your site (e.g. the pages in `courses/2022`), setup a custom [navigation](#navigation).

{:.alert .alert-warning}
> You could also organize pages as [Collections](https://jekyllrb.com/docs/collections/), but note that:
> - Pages in a collection are not part of `site.pages`.
> - Pages in a collection will not use `layout: default` by default, so you need to set this in the front matter (defaults).
> - The `:path` placeholder of collection items _includes_ the filename, while it doesn't for pages. So `_my_collection/subdirectory/index.md` with permalink `/:collection/:path/` will result in the page being served from `/my_collection/subdirectory/index/index.html`.
> - Defaults for custom page attributes (like `toc: true`) cannot be set as part of the collection, only as [front matter defaults](https://jekyllrb.com/docs/step-by-step/09-collections/#front-matter-defaults).
> - [Custom sorting](https://jekyllrb.com/docs/collections/#custom-sorting-of-documents) is only available in Jekyll 4.0, which is not yet supported on GitHub Pages.

## Home page

To enable options for your [home page](/) (source [`home.md`][pages_home]), add the following front matter:

```yml
layout: home
```

In `_config.yml` you can now define:

```yml
posts_on_home: 3                        # Show x number of latest posts on homepage, can be 0
tweets_on_home: true                    # Show Twitter feed of social.twitter on homepage
```

For easier maintenance, move/rename your `index.md` to `pages/home.md` and set its `permalink` to `/`.

## Team page

To enable your [team page](/team/) (source [`team.md`][pages_team]), add the following front matter:

```yml
layout: team
```

Then create a [`_data/team.yml`][data_team] file to list team members. For multiple team pages (e.g. keynote speakers at a conference), create e.g. a `_data/conf_2022_team.yml` and reference it in front matter as `team: conf_2022_team`.

## Archive page

To create an [overview page]({{ '/blog/' | relative_url }}) (source [`archive.md`][pages_archive]) of all blog posts (i.e. an archive, news, or blog page), add the following front matter:

```yml
layout: archive
```

And enable post tags by repeating the permalink for your archive page in `_config.yml`:

```yml
archive_permalink: /blog/               # Permalink of page using the archive.html layout, required when using post tags
```

This will also enable an RSS feed icon in the footer. To see blog posts, you'll have to create some. ☺️

## Blog posts

Create [posts](https://jekyllrb.com/docs/posts/) as `yyyy-mm-dd-title.md` Markdown files in the [`_posts/`][posts_dir] directory (e.g. [`2019-07-08-dmp.md`][posts_dmp] for [this post]({{ '/blog/2019/dmp/' | relative_url }})).

Posts can have the following [front matter](https://jekyllrb.com/docs/front-matter/) (only `title` is required):

```yml
---
title: "Title for the post: wrap in quotes if it contains special characters"
description: Description that will appear below the title in the banner
background: /assets/images/banner_background_image.jpg
author: [Author 1, Author 2]
tags: [Tag 1, Tag 2]
toc: false # See pages
comments: false
published: true
---

We are happy to announce ...

```

Posts can be shown on an [archive page](#archive-page) and on the [home page](#home-page).

Posts will use `layout: default` by default.

To enable post comments, add your site to [Disqus](https://disqus.com/) and reference it in `_config.yml`:

```yml
social:
  disqus: disqus_sitename               # Enable Disqus comments from disqus_sitename.disqus.com
```

Then add `comments: true` to each post where you want comments. Comments are disabled by default.

To hide a post (e.g. a draft), add [`published: false`](https://jekyllrb.com/docs/front-matter/#predefined-global-variables). Drafts can also be stored in [`_drafts`](https://jekyllrb.com/docs/posts/#drafts), but `published: false` is easier to track in git and can be used for pages as well. Posts and pages are published by default.

To change the permalink of all posts from the default `yyyy/mm/dd/title.html` to e.g. `blog/{filename}/` without having to add a `permalink` to each post, set a [front matter default](https://jekyllrb.com/docs/step-by-step/09-collections/#front-matter-defaults) in `_config.yml`. Defaults can also be used to e.g. enable comments for all posts:

```yml
defaults:
  -
    scope:
      path: ""
      type: "posts"
    values:
      permalink: "/blog/:slug/"         # Use /blog/{filename}/ as permalink for all posts
      comments: true                    # Enable comments for all posts
```

## Markdown options

See the [Markdown guide]({{ '/docs/markdown/' | relative_url }}) for an overview of the Markdown syntax you can use in pages and posts.

## Navigation

Create a [`_data/navigation.yml`][data_navigation] file and add pages in the order you want to include them in your top site navigation. You can also include dropdown menus.

Since the top site navigation only allows for 2 levels, deeper pages are a bit harder to access. You can solve this by creating a custom top navigation for that section of the site. Taking the `courses/2022` example mentioned [here](#organizing-pages):

1. Create a separate [`_data/course_2022_navigation.yml`][data_custom_navigation].
2. Add `navigation: course_2022_navigation` to the front matter of each page or (recommended) set it as front matter default in `_config.yml`:

    ```yml
    defaults:
      - scope:
          path: "courses/2022"
        values:
          navigation: "course_2022_navigation"
    ```

3. That section of the site will now have its [own top navigation]({{ '/docs/custom-navigation/' | relative_url }}). Users will always be able to go back to the main site by clicking the site title.

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
logo: /assets/images/logo.png           # Logo in navbar, will be displayed with 30px height
```

Add a favicon by adding a `favicon.ico` file to the root of your repository.

## Footer

Add social icons to the footer by adding your (project's) social profiles in `_config.yml`:

```yml
social:
  email: name@example.com
  twitter: twitter_username
  github: github_username               # Can also be a github_username/repository
  mastodon: https://mastodon.social/@mastodon_username
  facebook: https://www.facebook.com/groups/group_id/
```

Create a [`_data/footer.yml`][data_footer] file to further customize your footer with text, links and/or a disclaimer.

## Edit link

Invite contributions by adding an "edit this page" link in the footer, in `_config.yml`:

```yml
github_edit: true
```

This assumes your repository is public, with `main` as default branch. Use `github_edit: my_branch` if you use another branch. You will be able to directly edit the file, users without rights will have to fork your repository and create a pull request.

## Testing your site locally

All the above settings can be directly made in your GitHub repository in your browser, but especially during setup it is more convenient to make those changes locally, render your site locally and then push your changes to GitHub.

1. [Clone your repository](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository) to your computer.
2. Place a [`Gemfile`](https://github.com/peterdesmet/petridish/blob/main/Gemfile) in your repository root, with the content:

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
