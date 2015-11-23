ruby -rubygems -e 'require "jekyll-import";
JekyllImport::Importers::Blogger.run({
  "source"                => "blog-11-22-2015.xml",
  "no-blogger-info"       => true, # not to leave blogger-URL info (id and old URL) in the front matter
  "replace-internal-link" => true, # replace internal links using the post_url liquid tag.
  })'
