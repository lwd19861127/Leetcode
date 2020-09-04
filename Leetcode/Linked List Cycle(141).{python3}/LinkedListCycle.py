#  Linked List Cycle

# Definition for singly-linked list.
class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None

class Solution:
    def hasCycle(self, head: ListNode) -> bool:
        fast = slow = head
        while fast and fast.next:
            slow = slow.next
            fast = fast.next.next
            if slow == fast:
                return True
        return False
        
def main():
 		list = [1,2,3,4,5]
 		head = ListNode(1)
 		point = head
 		for i in range(1, len(list)):
 				point.next = ListNode(list[i])
 				point = point.next
 				
 		solution = Solution()
 		solution.hasCycle(head)
 				
if __name__ == '__main__':
    main()
