require './a.rb'

TRUE  = -> x { -> y { x } }
FALSE = -> x { -> y { y } }
IF =
  -> b {
    -> x {
      -> y {
        b[x][y]
      }
    }
  }

# 引数がTRUEだった場合
# -> x { -> y { x } }.call(true).call(false)
# でtrueが返る
def to_boolean(proc)
  IF[proc][true][false]
end
