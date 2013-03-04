
!!!!!!!!!!
Note: this is totally uncomplete - Work in progress !
!!!!!!!!!!

This is an implementation of a Ukkonen tree in Fantom.

Implemented and tested according to this "spec" :

http://stackoverflow.com/questions/9452701/ukkonens-suffix-tree-algorithm-in-plain-english/9513423#9513423

A Ukkonen tree behaves like a suffix tree(trie) however it has several enhancements :
1) Construction is O(n) or O(nLogn) whereas a regular suffix tree can be O(n2) or even O(n3)
2) Greatly minimized memory use.

It is good for Indexing / Searching text and also good to find "near matches" / string patterns and such.

See much more detailed info aout the algorithm here:

http://iveney.wordpress.com/2011/08/31/suffix-tree-an-illustration-of-the-algorithm/

http://cs.au.dk/~mailund/slides/Ukkonen-2005.pdf

http://www.cs.helsinki.fi/u/ukkonen/SuffixT1withFigs.pdf

http://stackoverflow.com/questions/10097323/ukkonen-suffix-tree-procedure-canonize-unclearok

http://www.cs.helsinki.fi/u/ukkonen/Erice2005.ppt

http://www.cise.ufl.edu/~sahni/dsaaj/enrich/c16/suffix.htm

http://www.cs.ucf.edu/~shzhang/Combio11/lec3.pdf

http://www.allisons.org/ll/AlgDS/Tree/Suffix/



