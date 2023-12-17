.class public final Landroidx/recyclerview/widget/r$a;
.super Lm0/a;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/recyclerview/widget/r;

.field public b:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/r;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lm0/a;-><init>()V

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/r$a;->b:Ljava/util/WeakHashMap;

    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/r$a;->a:Landroidx/recyclerview/widget/r;

    .line 13
    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/r$a;->b:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lm0/a;

    .line 9
    if-eqz v0, :cond_f

    .line 11
    invoke-virtual {v0, p1, p2}, Lm0/a;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_f
    invoke-super {p0, p1, p2}, Lm0/a;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Ln0/d;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/r$a;->b:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lm0/a;

    .line 9
    if-eqz v0, :cond_f

    .line 11
    invoke-virtual {v0, p1}, Lm0/a;->getAccessibilityNodeProvider(Landroid/view/View;)Ln0/d;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_f
    invoke-super {p0, p1}, Lm0/a;->getAccessibilityNodeProvider(Landroid/view/View;)Ln0/d;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/r$a;->b:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lm0/a;

    .line 9
    if-eqz v0, :cond_e

    .line 11
    invoke-virtual {v0, p1, p2}, Lm0/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    invoke-super {p0, p1, p2}, Lm0/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 18
    :goto_11
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/r$a;->a:Landroidx/recyclerview/widget/r;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/r;->shouldIgnore()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2f

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/r$a;->a:Landroidx/recyclerview/widget/r;

    .line 11
    iget-object v0, v0, Landroidx/recyclerview/widget/r;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_2f

    .line 19
    iget-object v0, p0, Landroidx/recyclerview/widget/r$a;->a:Landroidx/recyclerview/widget/r;

    .line 21
    iget-object v0, v0, Landroidx/recyclerview/widget/r;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Ln0/c;)V

    .line 30
    iget-object v0, p0, Landroidx/recyclerview/widget/r$a;->b:Ljava/util/WeakHashMap;

    .line 32
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lm0/a;

    .line 38
    if-eqz v0, :cond_2b

    .line 40
    invoke-virtual {v0, p1, p2}, Lm0/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V

    .line 43
    goto :goto_32

    .line 44
    :cond_2b
    invoke-super {p0, p1, p2}, Lm0/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V

    .line 47
    goto :goto_32

    .line 48
    :cond_2f
    invoke-super {p0, p1, p2}, Lm0/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V

    .line 51
    :goto_32
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/r$a;->b:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lm0/a;

    .line 9
    if-eqz v0, :cond_e

    .line 11
    invoke-virtual {v0, p1, p2}, Lm0/a;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    invoke-super {p0, p1, p2}, Lm0/a;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 18
    :goto_11
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/r$a;->b:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lm0/a;

    .line 9
    if-eqz v0, :cond_f

    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lm0/a;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_f
    invoke-super {p0, p1, p2, p3}, Lm0/a;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/r$a;->a:Landroidx/recyclerview/widget/r;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/r;->shouldIgnore()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_38

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/r$a;->a:Landroidx/recyclerview/widget/r;

    .line 11
    iget-object v0, v0, Landroidx/recyclerview/widget/r;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_38

    .line 19
    iget-object v0, p0, Landroidx/recyclerview/widget/r$a;->b:Ljava/util/WeakHashMap;

    .line 21
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lm0/a;

    .line 27
    const/4 v1, 0x1

    .line 28
    if-eqz v0, :cond_24

    .line 30
    invoke-virtual {v0, p1, p2, p3}, Lm0/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2b

    .line 36
    return v1

    .line 37
    :cond_24
    invoke-super {p0, p1, p2, p3}, Lm0/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2b

    .line 43
    return v1

    .line 44
    :cond_2b
    iget-object v0, p0, Landroidx/recyclerview/widget/r$a;->a:Landroidx/recyclerview/widget/r;

    .line 46
    iget-object v0, v0, Landroidx/recyclerview/widget/r;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :cond_38
    invoke-super {p0, p1, p2, p3}, Lm0/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 60
    move-result p1

    .line 61
    return p1
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/r$a;->b:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lm0/a;

    .line 9
    if-eqz v0, :cond_e

    .line 11
    invoke-virtual {v0, p1, p2}, Lm0/a;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    invoke-super {p0, p1, p2}, Lm0/a;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 18
    :goto_11
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/r$a;->b:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lm0/a;

    .line 9
    if-eqz v0, :cond_e

    .line 11
    invoke-virtual {v0, p1, p2}, Lm0/a;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    invoke-super {p0, p1, p2}, Lm0/a;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 18
    :goto_11
    return-void
.end method
