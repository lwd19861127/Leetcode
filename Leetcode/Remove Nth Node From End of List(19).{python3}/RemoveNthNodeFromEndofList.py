# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def removeNthFromEnd(self, head: ListNode, n: int) -> ListNode:
        point1 = head
        point2 = head
        for i in range(n):
            point2 = point2.next
        while point2 != None and point2.next != None:
            point1 = point1.next
            point2 = point2.next
        if point2 != None:
            point1.next = point1.next.next
        else:
            head = head.next
        return head
