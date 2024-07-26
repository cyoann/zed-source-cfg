name: (quoted_token) @function.call

(command
  name: (unquoted_token) @function.call
    (#not-match? @function.call "^//"))

argument: (quoted_token) @parameter

(command
  argument: (unquoted_token) @parameter
    (#not-match? @parameter "^//"))

((unquoted_token) @comment
  (#match? @comment "^//"))

";" @punctuation.delimiter
