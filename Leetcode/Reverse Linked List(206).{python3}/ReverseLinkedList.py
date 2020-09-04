# Definition for singly-linked list.
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
        
class Solution:
    def reverseList(self, head: ListNode) -> ListNode:
        if not head or not head.next:
          return head
        newHead = self.reverseList(head.next)
        head.next.next = head
        head.next = None
        return newHead
        
def main():
 		list = [1,2,3,4,5]
 		head = ListNode(1)
 		point = head
 		for i in range(1, len(list)):
 				point.next = ListNode(list[i])
 				point = point.next
 				
 		solution = Solution()
 		solution.reverseList(head)
 				
if __name__ == '__main__':
    main()
