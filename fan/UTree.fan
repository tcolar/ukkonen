// History:
//  Feb 02 13 tcolar Creation
//

**
** The Ukkonen Tree
**
class UTree
{
  ** Value for edges "end" value
  static const Int end := 0

  ** Node array, first node is the root node
  UNode[] nodes := [UNode(null)]

  ** Add a prefix(char array) to the tree
  Void addPrefix(Int[] prefix)
  {
    // Active point triple (activeNode, activeEdge, activeLength)
    Int[] activePoint := [0, end, 0]

    // How many new suffixes we need to insert
    reminder := 0

    prefix.each |c, index|
    {
      nd := nodes[activePoint[0]]
      nd.edges.add(UEdge(index, end))
    }
  }

  ** The root is always the first node
  UNode root() {return nodes.first}
}


