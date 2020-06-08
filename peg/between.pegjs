Text = NotStartString 'START' s:wangString 'END' .+ {return s}
NotStartString = (!'START' .)+ {return text()}
wangString = (!'END' .)+ {return text()}
