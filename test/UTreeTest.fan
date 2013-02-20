// History:
//  Feb 12 13 tcolar Creation
//

**
** Testing according to this:
** http://stackoverflow.com/questions/9452701/ukkonens-suffix-tree-algorithm-in-plain-english/9513423#9513423
**
class UTreeTest : Test
{
  ** Test steps 1-3
  Void test1()
  {
    tree := UTree()
    verifyEq(tree.nodes.size, 1, "Initial tree should have one node (root)")
    verify(tree.root.edges.isEmpty, "Root node should have no edges initially")
    verifyRoot(tree)

    // test adding "abc"
    tree.addPrefix("abc".chars)
    verifyAbc(tree)
  }

  ** Test step 4
  Void test2()
  {
    // test adding "abcabxabcd"
    tree := UTree()
    tree.addPrefix("abcabxabcd".chars)
    //verifyAbc(tree)
  }

  Void verifyRoot(UTree tree)
  {
    verifyNotNull(tree.root, "Tree should have a root node")
    verifyNull(tree.root.char, "Root node char should be null")
    verifyNull(tree.nodes[0].char, "Root node char should be null")
  }

  Void verifyAbc(UTree tree)
  {
    verifyRoot(tree)
    verifyEq(tree.nodes.size, 1, "Adding prefix abc should still leave only 1 node (root)")
    verifyEdge(tree.nodes[0], 0, UTree.end)//a
    verifyEdge(tree.nodes[0], 1, UTree.end)//b
    verifyEdge(tree.nodes[0], 2, UTree.end)//c
    verifyFalse(tree.nodes[0].hasEdge(3, UTree.end), "Should not have such edge")
  }

  Void verifyNode(UNode node, Int val)
  {
    verifyEq(node.char, val, "Checking node has char value of $val")
  }

  Void verifyEdge(UNode node, Int from, Int to)
  {
    verify(node.hasEdge(from, to), "Checking node has edge ($from, $to)")
  }
}