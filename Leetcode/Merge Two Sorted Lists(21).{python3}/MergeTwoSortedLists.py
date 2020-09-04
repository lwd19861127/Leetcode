# Definition for singly-linked list.
class ListNode:
	def __init__(self, val=0, next=None):
		self.val = val
		self.next = next
		
class Solution:
	def mergeTwoLists(self, l1: ListNode, l2: ListNode) -> ListNode:
		if not l1:
			return l2   
		if not l2:
			return l1     
		if l1.val < l2.val:
			l1.next = self.mergeTwoLists(l1.next, l2)
			return l1
		else:
			l2.next = self.mergeTwoLists(l1, l2.next)
			return l2 
		
def main():
	list1 = [1,2,4]
	head1 = ListNode(list1[0])
	point = head1
	for i in range(1, len(list1)):
		point.next = ListNode(list1[i])
		point = point.next
	list2 = [1,5,7,8]
	head2 = ListNode(list2[0])
	point = head2
	for i in range(1, len(list2)):
		point.next = ListNode(list2[i])
		point = point.next
		
	solution = Solution()
	solution.mergeTwoLists(head1, head2)
	
if __name__ == '__main__':
	main()

