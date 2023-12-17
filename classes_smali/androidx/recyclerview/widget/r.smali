.class public Landroidx/recyclerview/widget/r;
.super Lm0/a;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/r$a;
    }
.end annotation


# instance fields
.field private final mItemDelegate:Landroidx/recyclerview/widget/r$a;

.field public final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lm0/a;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/r;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/r;->getItemDelegate()Lm0/a;

    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_14

    .line 12
    instance-of v0, p1, Landroidx/recyclerview/widget/r$a;

    .line 14
    if-eqz v0, :cond_14

    .line 16
    check-cast p1, Landroidx/recyclerview/widget/r$a;

    .line 18
    iput-object p1, p0, Landroidx/recyclerview/widget/r;->mItemDelegate:Landroidx/recyclerview/widget/r$a;

    .line 20
    goto :goto_1b

    .line 21
    :cond_14
    new-instance p1, Landroidx/recyclerview/widget/r$a;

    .line 23
    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/r$a;-><init>(Landroidx/recyclerview/widget/r;)V

    .line 26
    iput-object p1, p0, Landroidx/recyclerview/widget/r;->mItemDelegate:Landroidx/recyclerview/widget/r$a;

    .line 28
    :goto_1b
    return-void
.end method


# virtual methods
.method public getItemDelegate()Lm0/a;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/r;->mItemDelegate:Landroidx/recyclerview/widget/r$a;

    .line 3
    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lm0/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    if-eqz v0, :cond_1c

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/r;->shouldIgnore()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1c

    .line 14
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1c

    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 29
    :cond_1c
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lm0/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/r;->shouldIgnore()Z

    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_1a

    .line 10
    iget-object p1, p0, Landroidx/recyclerview/widget/r;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1a

    .line 18
    iget-object p1, p0, Landroidx/recyclerview/widget/r;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Ln0/c;)V

    .line 27
    :cond_1a
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lm0/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_8

    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/r;->shouldIgnore()Z

    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_21

    .line 15
    iget-object p1, p0, Landroidx/recyclerview/widget/r;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_21

    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/r;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :cond_21
    const/4 p1, 0x0

    .line 35
    return p1
.end method

.method public shouldIgnore()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/r;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
