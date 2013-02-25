xml.instruct!
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do
  sitemap.resources.each do |resource|
    xml.url do
      xml.loc "https://#{site_url}#{resource.url}"
      xml.lastmod File.mtime(resource.source_file).xmlschema
      xml.changefreq "weekly"
      xml.priority 0.8
    end if resource.page?
  end
end
