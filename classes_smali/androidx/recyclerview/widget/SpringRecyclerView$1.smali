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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/SpringRecyclerView;)V
    .registers 2

    iput-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-direct {p0}, Lmiuix/spring/view/SpringHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public final canScrollHorizontally()Z
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final canScrollVertically()Z
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final dispatchNestedPreScroll(II[I[II)Z
    .registers 13

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$300(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->getHorizontalDistance()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$302(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z

    :cond_14
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$400(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->getVerticalDistance()I

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$402(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z

    :cond_27
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$500(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$d;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/SpringRecyclerView$d;->a(II[I[II)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedScroll(IIII[II[I)V
    .registers 19

    move-object v0, p0

    move v9, p3

    move v10, p4

    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$500(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$d;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroidx/recyclerview/widget/SpringRecyclerView$d;->b(IIII[II[I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;->springAvailable()Z

    move-result v1

    if-eqz v1, :cond_91

    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$600(Landroidx/recyclerview/widget/SpringRecyclerView;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_91

    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$300(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_5c

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_5c

    if-eqz v9, :cond_5c

    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$700(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$c;

    move-result-object v1

    iget-object v5, v1, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v5, v3}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$302(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z

    iget-object v5, v1, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/SpringRecyclerView;->setScrollState(I)V

    iput v4, v1, Landroidx/recyclerview/widget/s$a;->i:I

    iput v4, v1, Landroidx/recyclerview/widget/s$a;->h:I

    iget-object v5, v1, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v5}, Lmiuix/overscroller/widget/OverScroller;->resetPosition()V

    iget-object v5, v1, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    neg-int v6, v9

    iget-object v1, v1, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v5, v4, v6, v1}, Lmiuix/overscroller/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    :cond_5c
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$400(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    move-result v1

    if-nez v1, :cond_91

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_91

    if-eqz v10, :cond_91

    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$700(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$c;

    move-result-object v1

    iget-object v5, v1, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v5, v3}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$402(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z

    iget-object v3, v1, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/SpringRecyclerView;->setScrollState(I)V

    iput v4, v1, Landroidx/recyclerview/widget/s$a;->i:I

    iput v4, v1, Landroidx/recyclerview/widget/s$a;->h:I

    iget-object v2, v1, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v2}, Lmiuix/overscroller/widget/OverScroller;->resetPosition()V

    iget-object v2, v1, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    neg-int v3, v10

    iget-object v1, v1, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v2, v4, v3, v1}, Lmiuix/overscroller/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    :cond_91
    return-void
.end method

.method public final getHeight()I
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public final springAvailable()Z
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$200(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    move-result v0

    return v0
.end method

.method public vibrate()V
    .registers 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-string v0, "2.0"

    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->a:Lmiuix/util/HapticFeedbackCompat;

    if-nez v0, :cond_19

    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    iget-object v1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->a:Lmiuix/util/HapticFeedbackCompat;

    :cond_19
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->a:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    goto :goto_28

    :cond_21
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b:Landroidx/recyclerview/widget/SpringRecyclerView;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_SCROLL_EDGE:I

    invoke-static {v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    :goto_28
    return-void
.end method
