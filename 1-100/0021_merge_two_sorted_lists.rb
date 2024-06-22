# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
    list = merge_list = ListNode.new
    until list1.nil? || list2.nil?
        if list1.val <= list2.val
            list = list.next = list1
            list1 = list1.next
        else
            list = list.next = list2
            list2 = list2.next
        end
    end

    list.next = list1 || list2

    merge_list.next
end
