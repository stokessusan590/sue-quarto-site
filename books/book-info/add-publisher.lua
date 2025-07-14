local pandoc = require 'pandoc'

function Meta(meta)
  if meta.publisher and meta.year then
    local publisher_text = pandoc.utils.stringify(meta.publisher)
    local year_text = pandoc.utils.stringify(meta.year)
    -- Combine publisher and year into a single string
    local combined_text = publisher_text .. ", " .. year_text
    -- Replace meta.date with combined text (so it shows wherever date normally shows)
    meta.date = pandoc.MetaInlines({pandoc.Str(combined_text)})
  end
  return meta
end
