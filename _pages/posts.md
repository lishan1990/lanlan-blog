---
layout: page
title: 所有文章
permalink: /posts/
---

# 所有文章

按时间顺序排列的所有技术文章。

{% for post in site.posts %}
  <article class="post-listing">
    <h3>
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
    </h3>
    
    <div class="post-meta">
      <time datetime="{{ post.date | date_to_xmlschema }}">
        {{ post.date | date: "%Y年%m月%d日" }}
      </time>
      • {{ post.author | default: site.author.name }}
      {% if post.categories %}
        • 分类: 
        {% for category in post.categories %}
          <a href="{{ '/categories/' | append: category | relative_url }}">{{ category }}</a>{% unless forloop.last %}, {% endunless %}
        {% endfor %}
      {% endif %}
    </div>
    
    <div class="post-excerpt">
      {{ post.excerpt | strip_html | truncatewords: 100 }}
    </div>
    
    <div class="post-tags">
      {% for tag in post.tags %}
        <span class="tag">{{ tag }}</span>
      {% endfor %}
    </div>
    
    <a href="{{ post.url | relative_url }}" class="read-more">阅读全文 →</a>
  </article>
  
  <hr class="post-divider">
{% endfor %}

<style>
.post-listing {
  margin: 30px 0;
  padding: 20px 0;
}

.post-listing h3 {
  margin: 0 0 10px 0;
}

.post-listing h3 a {
  color: #2c3e50;
  text-decoration: none;
}

.post-listing h3 a:hover {
  color: #3498db;
}

.post-meta {
  color: #7f8c8d;
  font-size: 0.9em;
  margin-bottom: 15px;
}

.post-meta a {
  color: #3498db;
  text-decoration: none;
}

.post-meta a:hover {
  text-decoration: underline;
}

.post-excerpt {
  color: #555;
  line-height: 1.6;
  margin-bottom: 15px;
}

.post-tags {
  margin: 15px 0;
}

.tag {
  display: inline-block;
  background: #e8f4fc;
  color: #3498db;
  padding: 4px 12px;
  border-radius: 20px;
  font-size: 0.85em;
  margin-right: 8px;
  margin-bottom: 8px;
}

.read-more {
  display: inline-block;
  color: #3498db;
  text-decoration: none;
  font-weight: 500;
}

.read-more:hover {
  text-decoration: underline;
}

.post-divider {
  border: none;
  border-top: 1px solid #eaeaea;
  margin: 40px 0;
}

@media (max-width: 600px) {
  .post-listing {
    padding: 15px 0;
  }
}
</style>