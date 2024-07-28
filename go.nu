export def fetch-sgf [id: string] {
  http get $"https://igo-kifu.com/kifu/($id)" | query web --query '#__NEXT_DATA__' | get 0.0 | from json | get props.pageProps.kifu.sfg | save $"($id).sgf"
}
