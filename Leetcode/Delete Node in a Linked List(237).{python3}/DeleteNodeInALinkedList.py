# DeleteNodeInALinkedList

#Definition for singly-linked list.
class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None

class Solution:
    def deleteNode(self, node, x):
        """
        :type node: ListNode
        :rtype: void Do not return anything, modify node in-place instead.
        """
        head = ListNode(node[0])
        point = head
        for i in range(1, len(node)):
            point.next = ListNode(node[i])
            point = point.next
        n = 1
        for i in range(n):
            print("a")
        # node.val = node.next.val
        # node.next = node.next.next
Solution.deleteNode(Solution, [4,5,1,9], 5)