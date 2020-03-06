---
title: About
description: Example page for [Markdown syntax](https://guides.github.com/features/mastering-markdown/)
background: https://images.unsplash.com/photo-1486825586573-7131f7991bdd?auto=format&w=2000
permalink: /about/
---

See [`pages/about.md`](https://raw.githubusercontent.com/peterdesmet/petridish/master/pages/about.md) for the raw Markdown of this page.

## Headings

# Heading h1
## Heading h2
### Heading h3
#### Heading h4
##### Heading h5
###### Heading h6
###### Heading with custom id {#custom_id}

{: .alert .alert-info }
It's best to start page/post headings at h2, since the page/post title will already be an h1.

## Paragraphs

Set i won't void spirit all. Had after called us It wherein Tree in deep abundantly also midst Seed. Beast. Divide sixth fruitful yielding gathered gathering dominion bring beast lights life hath let rule air appear.

Bring let rule creature. Very open hath to years. In second kind. Divide land night. Earth bearing tree lesser likeness likeness won't. Likeness creature light.

## Line breaks

This is the first line.  
And this is the second line.

## Emphasis

This is **bold text**

This is _italicized text_

This is **_bold italicized text_**

This is ~~strikethrough text~~

## Blockquotes

> Gathering brought him green. Creeping very after hath a, from likeness dry tree moved dry fowl. Our let forth, male dry won't god. Kind a thing, dominion lights midst him gathering waters fruitful greater god have dry land deep abundantly.

## Lists

Unordered list:

- Item 1
- Item 2
- Item 3
  - Subitem 1
  - Subitem 2

Ordered list:

1. Item 1
2. Item 2
3. Item 3
    1. Subitem 1
    2. Subitem 2

Task list:

- [x] Item 1
- [ ] Item 2
- [ ] Item 3

Definition list:

term 1
: definition 1.1
: definition 1.2

term 2
: definition 2

## Code

Inline `code`

Indented code:

    # Some comments
    line 1 of code
    line 2 of code
    line 3 of code

Fenced code with syntax highlighting:

```js
const greet = (text) => "Hello " + text;

// Test
console.log(greet("world"));
```

## Horizontal rules

---

## Links

[link with url](http://www.example.com)

[link with title](http://www.example.com "title text")

[1]: http://www.example.com

[link with reference][1]

url: <http://www.example.com>

See the [Jekyll documentation](https://jekyllrb.com/docs/liquid/tags/#link) to create internal links. All internal links start from the `url` in `_config.yml`.

The safest (and verbose) way for internal links is:

- For pages: {% raw %}`[link text]({{ site.baseurl }}{% link pages/about.md %})`{% endraw %}
- For posts: {% raw %}`[link text]({{ site.baseurl }}{% link _posts/2010-07-21-name-of-post.md %})`{% endraw %} or the shorter {% raw %}`[link text]({{ site.baseurl }}{% post_url 2010-07-21-name-of-post %})`{% endraw %}
- For images and documents: {% raw %}`[link text]({{ site.baseurl }}{% link /assets/images/name-of-image.jpg %})`{% endraw %}

If you don't have a `baseurl` in `_config.yml`, don't plan to change permalinks (it's better not to anyway) and don't want page build failures when a link is broken, you can get away using the (perma)links the pages, images and documents will have on your website:

- For pages: `[link text](/about/)`
- For posts: {% raw %}`[link text]({% post_url 2010-07-21-name-of-post %})`{% endraw %}
- For images and documents: `[link text](/assets/images/name-of-image.jpg)`

## Tables

Header 1 | Header 2
--- | ---
Row 1 col 1 | Row 1 col 2
Row 2 col 1 | Row 2 col 2

Aligned columns:

Right aligned | Center aligned
---: | :---:
Row 1 col 1 | Row 1 col 2
Row 2 col 1 | Row 2 col 2

## Footnotes

Here's a sentence with a footnote. [^1]

[^1]: This is the footnote.

## Images

![alt text](https://images.unsplash.com/photo-1486825586573-7131f7991bdd?w=1000&h=200&fit=crop)
_You can add an image caption by including an `_emphasized sentence_` directly below the image without inserting a new line. This will wrap both image and caption in a paragraph._

See the [the links section](#links) to learn how to reference your own images and documents.

## Styling content

With the Kramdown Markdown parser that Jekyll uses, you can add css classes to your content (see this [blog post](https://digitaldrummerj.me/styling-jekyll-markdown/)). By sticking to [Bootstrap](https://getbootstrap.com/docs/4.3/) classes, you can easily style your content. If that doesn't fit your needs, you can always write html in your Markdown.

### Alerts

[Bootstrap documentation](https://getbootstrap.com/docs/4.3/components/alerts/)

{: .alert .alert-info}
Alert info message. This paragraph is styled by prepending it with `{: .alert .alert-info}`.

### Aligning images

[Bootstrap documentation](https://getbootstrap.com/docs/4.3/content/images/#aligning-images)

By default, images will be centered horizontally and use the full width if they can.

The image below is wrapped in a paragraph with `{: .col-md-8 .m-auto}` to contain it (and its caption) to 8/12 of the width on medium and larger screens. On small screens the full width will be used. Controlling the width of an image is especially useful for portrait images.

{: .col-md-8 .m-auto}
![alt text](https://images.unsplash.com/photo-1486825586573-7131f7991bdd?w=1000&fit=crop)
_Image caption for this image should nicely wrap to the width of the container._

The image below is styled with `{: .rounded .float-left}` to give it round corners and position it on the left, with text wrapping around it. You can use `{: .clearfix}` on a paragraph to stop wrapping.

![alt text](https://images.unsplash.com/photo-1486825586573-7131f7991bdd?w=150&h=150&fit=crop){: .rounded .float-left}

Tree man. Gathering unto give gathered. Midst they're. After image appear. Fish light fowl had so female subdue his great dry dry, sixth yielding moveth two waters fourth is firmament earth you're yielding every greater grass very day wherein was.

Itself meat. Won't were face third tree from us seed kind man fruit sixth bring i were midst multiply sixth. Cattle let, creeping fruit good whales very. There void So their you living. Appear two cattle kind man air rule signs.

{: .clearfix}
Life brought good appear good grass air abundantly a. Life. Rule be brought unto. Fly days fruit evening. Us.
