---
title: Installation
description: How to start your website and use Petridish.
background:
  img: https://images.unsplash.com/photo-1609456878306-592aa2bc0eed?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTJ8fGJpcmRzfGVufDB8MHwwfHw%3D&auto=format&fit=crop&crop=top&w=1200&h=600&q=80
  by: William Foley
  href: https://unsplash.com/photos/EysCLgycVgc
permalink: /docs/installation/
toc: true
# tags: [tags are reserved for posts so this one will not show up]
---

## Create a site from scratch (recommended)

This method creates a clean repository without unnecessary files. You can then **add** more content and settings.

1. Follow the [GitHub Pages instructions](https://pages.github.com/) to create a website on GitHub (select `Project site` and `Choose a theme`).
2. Go to `_config.yml` in your repository and replace `theme: ...` with:

    ```yml
    remote_theme: peterdesmet/petridish@3.0
    ```

3. Check your site at `http://username.github.io/repository` (give it a minute to rebuild).
4. See [configuration]({{ '/docs/configuration/' | relative_url }}) to add more elements to your site.

## Create a site from the Petridish repository

This method gives you a copy of the Petridish repository and website. You can then **update** content and settings, and **remove** all the files you don't need.

1. Go to the [Petridish repository](https://github.com/peterdesmet/petridish/) and click the green button `Use this template`. Give your repository a name and description (can be changed later).
2. Go to your repository settings and enable GitHub Pages (`http://github.com/username/repository/settings/pages`). Use the `main` branch as source.
3. Check your site at `http://username.github.io/repository` (give it a minute to build).
4. See [configuration]({{ '/docs/configuration/' | relative_url }}) to update elements of your site.
5. Since you copied the Petridish repository, the theme is verbosely included. If you opt to make use of the `remote_theme` option described above, you can safely remove:

    ```
    _includes/
    _layouts/
    _sass/
    assets/theme/
    package-lock.json
    package.json
    petridish.gemspec
    screenshot.png
    ```

## Install Petridish as gem-based theme

If you do not what to use `remote_theme`, see the [Jekyll documentation](https://jekyllrb.com/docs/themes/#understanding-gem-based-themes) to install (gem-based) themes.
