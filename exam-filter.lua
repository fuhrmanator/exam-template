function Div(el)
  return {pandoc.RawBlock("latex", "\\begin{" .. el.classes[1] .. "}"), el,
          pandoc.RawBlock("latex", "\\end{" .. el.classes[1] .. "}")}
end

function Str(e)
  local matches = {}
  -- print(e.text)
  for k, v in string.gmatch(e.text, "_([qp]){(.+)}") do
      if v == "0.5" then 
          v = "\\half"
      end
      matches[k] = v
      -- print(k, v)
  end

  if e.text == "_q" then
      texstring = "\\question"
  elseif e.text == "_p" then
      texstring = "\\part"
  elseif matches["q"] then
      texstring = "\\question[" .. matches["q"] .. "]"
  elseif matches["p"] then
      texstring = "\\part[" .. matches["p"] .. "]"
  else
      return e
  end
  return pandoc.RawInline("latex", texstring)
end
