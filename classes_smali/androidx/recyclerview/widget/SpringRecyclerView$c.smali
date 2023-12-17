.class public final Landroidx/recyclerview/widget/SpringRecyclerView$c;
.super Landroidx/recyclerview/widget/s$a;
.source "SpringRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/SpringRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic v:Landroidx/recyclerview/widget/SpringRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/SpringRecyclerView;)V
    .registers 2

    iput-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/s$a;-><init>(Landroidx/recyclerview/widget/s;)V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$100(Landroidx/recyclerview/widget/SpringRecyclerView;)Lmiuix/spring/view/SpringHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/spring/view/SpringHelper;->getHorizontalDistance()I

    move-result v1

    iget-object v2, v0, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$100(Landroidx/recyclerview/widget/SpringRecyclerView;)Lmiuix/spring/view/SpringHelper;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/spring/view/SpringHelper;->getVerticalDistance()I

    move-result v2

    iget-object v3, v0, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v3}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$200(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_8b

    if-nez v1, :cond_25

    if-eqz v2, :cond_8b

    :cond_25
    iget-object v3, v0, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    if-eqz v1, :cond_2b

    move v7, v6

    goto :goto_2c

    :cond_2b
    move v7, v5

    :goto_2c
    invoke-static {v3, v7}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$302(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z

    iget-object v3, v0, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    if-eqz v2, :cond_34

    goto :goto_35

    :cond_34
    move v6, v5

    :goto_35
    invoke-static {v3, v6}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$402(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z

    iget-object v3, v0, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/SpringRecyclerView;->setScrollState(I)V

    iput v5, v0, Landroidx/recyclerview/widget/s$a;->i:I

    iput v5, v0, Landroidx/recyclerview/widget/s$a;->h:I

    iget-object v3, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v3}, Lmiuix/overscroller/widget/OverScroller;->resetPosition()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->signum(I)I

    move-result v3

    mul-int/2addr v3, v1

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    neg-int v1, v1

    if-lez v3, :cond_56

    move v6, v1

    move v7, v6

    goto :goto_5d

    :cond_56
    if-gez p1, :cond_5b

    move v7, v1

    move v6, v4

    goto :goto_5d

    :cond_5b
    move v6, v1

    move v7, v5

    :goto_5d
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    mul-int/2addr v1, v2

    if-lez v1, :cond_68

    neg-int v1, v2

    move v8, v1

    move v9, v8

    goto :goto_6f

    :cond_68
    if-gez p2, :cond_6c

    neg-int v5, v2

    goto :goto_6d

    :cond_6c
    neg-int v4, v2

    :goto_6d
    move v8, v4

    move v9, v5

    :goto_6f
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v0, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v10

    iget-object v4, v0, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v11

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v11}, Lmiuix/overscroller/widget/OverScroller;->fling(IIIIIIIIII)V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/s$a;->b()V

    goto/16 :goto_113

    :cond_8b
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iput v5, v0, Landroidx/recyclerview/widget/s$a;->i:I

    iput v5, v0, Landroidx/recyclerview/widget/s$a;->h:I

    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->k:Landroid/view/animation/Interpolator;

    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    if-eq v1, v2, :cond_a9

    iput-object v2, v0, Landroidx/recyclerview/widget/s$a;->k:Landroid/view/animation/Interpolator;

    new-instance v1, Lmiuix/overscroller/widget/OverScroller;

    iget-object v3, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    :cond_a9
    if-eqz p1, :cond_b9

    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-static {v1}, Landroidx/recyclerview/widget/s;->access$200(Landroidx/recyclerview/widget/s;)Lmiuix/animation/utils/VelocityMonitor;

    move-result-object v1

    invoke-virtual {v1, v5}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    move-result v1

    float-to-int v1, v1

    neg-int v1, v1

    move v10, v1

    goto :goto_bb

    :cond_b9
    move/from16 v10, p1

    :goto_bb
    if-eqz p2, :cond_cb

    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-static {v1}, Landroidx/recyclerview/widget/s;->access$200(Landroidx/recyclerview/widget/s;)Lmiuix/animation/utils/VelocityMonitor;

    move-result-object v1

    invoke-virtual {v1, v6}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    move-result v1

    float-to-int v1, v1

    neg-int v1, v1

    move v11, v1

    goto :goto_cd

    :cond_cb
    move/from16 v11, p2

    :goto_cd
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    iget-object v2, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_e1

    or-int/lit8 v1, v1, 0x2

    :cond_e1
    const/4 v2, -0x1

    if-ne v1, v4, :cond_f1

    if-lez v11, :cond_e7

    move v2, v6

    :cond_e7
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-virtual {v1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    xor-int/2addr v1, v6

    iput-boolean v1, v0, Landroidx/recyclerview/widget/s$a;->n:Z

    goto :goto_ff

    :cond_f1
    if-ne v1, v6, :cond_ff

    if-lez v10, :cond_f6

    move v2, v6

    :cond_f6
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-virtual {v1, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    xor-int/2addr v1, v6

    iput-boolean v1, v0, Landroidx/recyclerview/widget/s$a;->n:Z

    :cond_ff
    :goto_ff
    iget-object v7, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v12, -0x80000000

    const v13, 0x7fffffff

    const/high16 v14, -0x80000000

    const v15, 0x7fffffff

    invoke-virtual/range {v7 .. v15}, Lmiuix/overscroller/widget/OverScroller;->fling(IIIIIIII)V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/s$a;->b()V

    :goto_113
    return-void
.end method
