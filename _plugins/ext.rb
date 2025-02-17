Jekyll::Hooks.register :site, :post_read do |site|
  site.collections.each do |name, collection|
    next if name == "posts"  # Skip posts since Chirpy already processes them

    collection.docs.each do |doc|
      if doc.data['categories']
        doc.data['categories'].each do |category|
          site.categories[category] ||= []  # Initialize array if it doesn't exist
          site.categories[category] << doc
        end
      end

      if doc.data['tags']
        doc.data['tags'].each do |tag|
          site.tags[tag] ||= []  # Initialize array if it doesn't exist
          site.tags[tag] << doc
        end
      end
    end
  end
end
