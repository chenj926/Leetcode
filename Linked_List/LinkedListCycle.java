
import java.util.ArrayList;

import javax.crypto.Mac;



public class LinkedListCycle {
        /**
     * Definition for singly-linked list.*/
     class ListNode {
        int val;
        ListNode next;
        ListNode(int x) {
            val = x;
            next = null;
        }
      }
     
    public class Solution {
        public boolean hasCycle(ListNode head) {
            if (head == null) {
                return false;
            }

            ListNode walker = head;  // slow pointer
            ListNode runner = head;  // fast pointer

            while(runner.next != null && runner.next.next != null) {
                walker = walker.next;
                runner = runner.next.next;
                if (walker == runner) {
                    return true;
                }
            }
            return false;
        }
    }

}
