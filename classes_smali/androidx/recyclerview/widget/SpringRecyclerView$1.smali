.class Landroidx/recyclerview/widget/SpringRecyclerView$1;
.super Lmiuix/spring/view/SpringHelper;
.source "SpringRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/SpringRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Lmiuix/util/HapticFeedbackCompat;

.field public final synthetic b:Landroidx/recyclerview/widget/SpringRecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/SpringRecyclerView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 3
    invoke-direct {p0}, Lmiuix/spring/view/SpringHelper;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final canScrollHorizontally()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public final canScrollVertically()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public final dispatchNestedPreScroll(II[I[II)Z
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 3
    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$300(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_14

    .line 10
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->getHorizontalDistance()I

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_14

    .line 16
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 18
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$302(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z

    .line 21
    :cond_14
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 23
    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$400(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_27

    .line 29
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->getVerticalDistance()I

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_27

    .line 35
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 37
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$402(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z

    .line 40
    :cond_27
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 42
    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$500(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$d;

    .line 45
    move-result-object v1

    .line 46
    move v2, p1

    .line 47
    move v3, p2

    .line 48
    move-object v4, p3

    .line 49
    move-object v5, p4

    .line 50
    move v6, p5

    .line 51
    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/SpringRecyclerView$d;->a(II[I[II)Z

    .line 54
    move-result p1

    .line 55
    return p1
.end method

.method public final dispatchNestedScroll(IIII[II[I)V
    .registers 19

    .line 1
    move-object v0, p0

    .line 2
    move v9, p3

    .line 3
    move v10, p4

    .line 4
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 6
    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$500(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$d;

    .line 9
    move-result-object v1

    .line 10
    move v2, p1

    .line 11
    move v3, p2

    .line 12
    move v4, p3

    .line 13
    move v5, p4

    .line 14
    move-object/from16 v6, p5

    .line 16
    move/from16 v7, p6

    .line 18
    move-object/from16 v8, p7

    .line 20
    invoke-virtual/range {v1 .. v8}, Landroidx/recyclerview/widget/SpringRecyclerView$d;->b(IIII[II[I)V

    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;->springAvailable()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_91

    .line 29
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 31
    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$600(Landroidx/recyclerview/widget/SpringRecyclerView;)I

    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x2

    .line 36
    if-ne v1, v2, :cond_91

    .line 38
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 40
    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$300(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    .line 43
    move-result v1

    .line 44
    const/4 v3, 0x1

    .line 45
    const/4 v4, 0x0

    .line 46
    if-nez v1, :cond_5c

    .line 48
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;->canScrollHorizontally()Z

    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_5c

    .line 54
    if-eqz v9, :cond_5c

    .line 56
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 58
    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$700(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$c;

    .line 61
    move-result-object v1

    .line 62
    iget-object v5, v1, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 64
    invoke-static {v5, v3}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$302(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z

    .line 67
    iget-object v5, v1, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 69
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/SpringRecyclerView;->setScrollState(I)V

    .line 72
    iput v4, v1, Landroidx/recyclerview/widget/s$a;->i:I

    .line 74
    iput v4, v1, Landroidx/recyclerview/widget/s$a;->h:I

    .line 76
    iget-object v5, v1, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 78
    invoke-virtual {v5}, Lmiuix/overscroller/widget/OverScroller;->resetPosition()V

    .line 81
    iget-object v5, v1, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 83
    neg-int v6, v9

    .line 84
    iget-object v1, v1, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 86
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 89
    move-result v1

    .line 90
    invoke-virtual {v5, v4, v6, v1}, Lmiuix/overscroller/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    .line 93
    :cond_5c
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 95
    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$400(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_91

    .line 101
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;->canScrollVertically()Z

    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_91

    .line 107
    if-eqz v10, :cond_91

    .line 109
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 111
    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$700(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$c;

    .line 114
    move-result-object v1

    .line 115
    iget-object v5, v1, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 117
    invoke-static {v5, v3}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$402(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z

    .line 120
    iget-object v3, v1, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 122
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/SpringRecyclerView;->setScrollState(I)V

    .line 125
    iput v4, v1, Landroidx/recyclerview/widget/s$a;->i:I

    .line 127
    iput v4, v1, Landroidx/recyclerview/widget/s$a;->h:I

    .line 129
    iget-object v2, v1, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 131
    invoke-virtual {v2}, Lmiuix/overscroller/widget/OverScroller;->resetPosition()V

    .line 134
    iget-object v2, v1, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 136
    neg-int v3, v10

    .line 137
    iget-object v1, v1, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 139
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 142
    move-result v1

    .line 143
    invoke-virtual {v2, v4, v3, v1}, Lmiuix/overscroller/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 146
    :cond_91
    return-void
.end method

.method public final getHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final springAvailable()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 3
    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$200(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public vibrate()V
    .registers 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    const-string v0, "2.0"

    .line 3
    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_21

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->a:Lmiuix/util/HapticFeedbackCompat;

    .line 11
    if-nez v0, :cond_19

    .line 13
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->a:Lmiuix/util/HapticFeedbackCompat;

    .line 26
    :cond_19
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->a:Lmiuix/util/HapticFeedbackCompat;

    .line 28
    const/16 v1, 0xc9

    .line 30
    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    .line 33
    goto :goto_28

    .line 34
    :cond_21
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 36
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_SCROLL_EDGE:I

    .line 38
    invoke-static {v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 41
    :goto_28
    return-void
.end method
