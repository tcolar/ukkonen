// History:
//  Feb 19 13 tcolar Creation
//

// TODO: Later optimize space use using bitarray or the like

**
** An edge in the Ukkonen tree
**
const class UEdge
{
  const Int from
  const Int to // or "length"

  new make(Int from, Int to)
  {
    this.from = from
    this.to = to
  }

  override Int compare(Obj that)
  {
    other := that as UEdge
    if(to != other.to || from != other.from) return -1
    if(from != other.from) return from <=> other.from
    return to <=> other.from
  }
}