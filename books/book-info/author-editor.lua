function Meta(meta)
  if meta.booktype and meta.booktype == "volume" and meta.author then
    -- Save the original author field
    meta.editor = meta.author
    meta.author = nil
  end
  return meta
end
