def make_snippet(string)
  amount_words = string.split.length
  if amount_words > 5
    return string.split[0...5].join(" ") + "..."
  else
    string
  end
end