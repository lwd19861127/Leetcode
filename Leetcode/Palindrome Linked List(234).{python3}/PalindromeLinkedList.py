#  Palindrome Linked List

class ListNode:
	def __init__(self, val=0, next=None):
		self.val = val
		self.next = next
		
class Solution:
	def ReverseList(self, head):
    	if not head or not head.next:
          	return head
        newHead = self.ReverseList(head.next)
        head.next.next = head
        head.next = None
        return newHead

    def isPalindrome(self, head: ListNode) -> bool:
        """
        :type head: ListNode
        :rtype: bool
        """
        slow = fast = head
        while fast and fast.next:
            slow = slow.next
            fast = fast.next.next
        if fast:
            slow = slow.next
        newHead = self.ReverseList(slow)
        while newHead:
            if head.val != newHead.val:
                return False
            head = head.next
            newHead = newHead.next
        return True
  
def main():
	list = [1,2,3,4,5]
	head = ListNode(1)
	point = head
	for i in range(1, len(list)):
		point.next = ListNode(list[i])
		point = point.next
		
	solution = Solution()
	solution.isPalindrome(head)
	
if __name__ == '__main__':
	main()

