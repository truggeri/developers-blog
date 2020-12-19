---
---

export const posts = [
  {% for post in site.posts %}
    {
      "date": "{{ post.date }}",
      "title": "{{ post.title }}",
      "url": "{{ post.url | relative_url }}"
    },
  {% endfor %}
];