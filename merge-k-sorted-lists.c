#include <stdio.h>
#include <stdlib.h>

struct ListNode {
    int val;
    struct ListNode *next;
};

typedef struct {
    struct ListNode** nodes;
    int size;
    int capacity;
} MinHeap;

void swap(struct ListNode** a, struct ListNode** b) {
    struct ListNode* temp = *a;
    *a = *b;
    *b = temp;
}

void heapify(MinHeap* heap, const int i) {

    int smallest = i;
    int left = 2 * i + 1;
    int right = 2 * i + 2;
    
    if (left < heap->size && heap->nodes[left]->val < heap->nodes[smallest]->val)
        smallest = left;
    if (right < heap->size && heap->nodes[right]->val < heap->nodes[smallest]->val)
        smallest = right;
    
    if (smallest != i) {
        swap(&heap->nodes[i], &heap->nodes[smallest]);
        heapify(heap, smallest);
    }

}

void push(MinHeap* heap, struct ListNode* node) {
    if (heap->size == heap->capacity) return;

    heap->nodes[heap->size] = node;
    int i = heap->size++;
    
    while (i > 0 && heap->nodes[(i-1)/2]->val > heap->nodes[i]->val) {
        swap(&heap->nodes[i], &heap->nodes[(i-1)/2]);
        i = (i-1)/2;
    }
}

struct ListNode* pop(MinHeap* heap) {

    if (heap->size == 0) return NULL;

    struct ListNode* result = heap->nodes[0];
    heap->nodes[0] = heap->nodes[--heap->size];
    heapify(heap, 0);

    return result;

}

struct ListNode* mergeKLists(struct ListNode** lists, const int listsSize) {
    MinHeap heap = {malloc(listsSize * sizeof(struct ListNode*)), 0, listsSize};
    
    for (int i = 0; i < listsSize; i++)
        if (lists[i]) push(&heap, lists[i]);
    
    struct ListNode dummy = {0, NULL};
    struct ListNode* tail = &dummy;
    
    while (heap.size > 0) {
        struct ListNode* node = pop(&heap);
        tail->next = node;
        tail = node;

        if (node->next) push(&heap, node->next);
    }
    
    free(heap.nodes);

    return dummy.next;
}

struct ListNode* createNode(const int val) {

    struct ListNode* node = (struct ListNode*)malloc(sizeof(struct ListNode));
    node->val = val;
    node->next = NULL;

    return node;
}

void printList(struct ListNode* head) {
    while (head) {
        printf("%d ", head->val);
        head = head->next;
    }

    printf("\n");
}

void freeList(struct ListNode* head) {
    while (head) {
        struct ListNode* temp = head;
        head = head->next;
        free(temp);
    }
}

const int main(void) {

    struct ListNode* list1 = createNode(1);
    list1->next = createNode(4);
    list1->next->next = createNode(5);
    
    struct ListNode* list2 = createNode(1);
    list2->next = createNode(3);
    list2->next->next = createNode(4);
    
    struct ListNode* list3 = createNode(2);
    list3->next = createNode(6);
    
    struct ListNode* lists[] = {list1, list2, list3};
    int listsSize = 3;
    
    printf("Input lists:\n\n");

    for (int i = 0; i < listsSize; i++) {
        printf("List %d: ", i + 1);
        printList(lists[i]);
    }
    
    struct ListNode* merged = mergeKLists(lists, listsSize);
    
    printf("\nCombined lists: ");
    printList(merged);

    freeList(merged);
    
    return 0;

}
