---
layout: page
title: Books
permalink: /books/
---

 Current

 ["The Ageless Revolution"](https://www.barnesandnoble.com/w/the-ageless-revolution-michael-aziz-md/1145841770?ean=9780757325144){:target="_blank"} by Michael Aziz, MD. So far it's very down to earth.

["Freedom"](https://www.barnesandnoble.com/w/freedom-angela-merkel/1146307269?ean=9781250319906){:target="_blank"} by Angela Merkel - very interesting to hear about her early life so far in 50's and 60's Germany.

["The Creative Act"](https://www.barnesandnoble.com/w/the-creative-act-rick-rubin/1141404747?ean=9780593652886){:target="_blank"} by Rick Rubin. Saw a neighborhood dad read it once at a swim meet a few years ago and finally decided to dive in. I like that it level sets that anyone and everyone is an artist, participting in the act of creating, whether they know it or not.

["Don't Think of an Elephant"](https://www.barnesandnoble.com/w/dont-think-of-an-elephant-george-lakoff/1110948013?ean=2940171140052){:target="_blank"} by George Lakoff. This has been extremly eye opening as to the moral frames from conservatives that have dominated recent headlines, and the alternative frames tha progressives can offer to counteract this singular way of thinking about the world. Highly recommended. I didn't realize there was a more recent version until writing this! So looks like I've got my next audiobook picked out.

## Recent

- [The Good Gut: Taking Control of Your Weight, Your Mood, and Your Long Term Health](https://www.barnesandnoble.com/w/the-good-gut-justin-sonnenburg/1120625403){:target="_blank"}
- Metabolical: The Lure and the Lies of Processed Food, Nutrition, and Modern Medicine
- Good Energy: The Suprising Connection Between Metabolism and Limitless Health
- Outlive: The Science and Art of Longevity

## Early Years

- The Seven Habits of Highly Effective People
- How to Win Friends and Influence People
  
{% for item in site.culturelogue %}
{% if item.permalink contains "/culturelogue/books/" and item.url != page.url %}
- **[{{ item.title }}]({{ item.url }})**
{% endif %}
{% endfor %}