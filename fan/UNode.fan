// History:
//  Feb 19 13 tcolar Creation
//

// TODO: Later I want to optimize te nodes and edges by using bitarrays (BoolArray)
// to try to minimize memory consumption
// but will implement first, then optimize later

**
** A Node in the (Ukkonen) tree
**
class UNode
{
  ** The char charried by this node, null for the root node
  Int? char

  UEdge[] edges := [,]

  new make(Int? char)
  {
    this.char = char
  }

  ** Return the index where we find an edge, or -1 if not found
  ** Used for testing
  internal Bool hasEdge(Int from, Int to)
  {
    edge := edges.find |e| {e.to == to && e.from == from}
    return edge != null
  }
}