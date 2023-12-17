.class public final Landroidx/recyclerview/widget/f$c;
.super Landroidx/recyclerview/widget/f$g;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/f;->select(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Landroidx/recyclerview/widget/RecyclerView$b0;

.field public final synthetic p:Landroidx/recyclerview/widget/f;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/f;Landroidx/recyclerview/widget/RecyclerView$b0;IIFFFFILandroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 19

    .line 1
    move-object v7, p0

    .line 2
    move-object v0, p1

    .line 3
    iput-object v0, v7, Landroidx/recyclerview/widget/f$c;->p:Landroidx/recyclerview/widget/f;

    .line 5
    move/from16 v0, p9

    .line 7
    iput v0, v7, Landroidx/recyclerview/widget/f$c;->n:I

    .line 9
    move-object/from16 v0, p10

    .line 11
    iput-object v0, v7, Landroidx/recyclerview/widget/f$c;->o:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 13
    move-object v0, p0

    .line 14
    move-object v1, p2

    .line 15
    move v2, p4

    .line 16
    move v3, p5

    .line 17
    move v4, p6

    .line 18
    move v5, p7

    .line 19
    move/from16 v6, p8

    .line 21
    invoke-direct/range {v0 .. v6}, Landroidx/recyclerview/widget/f$g;-><init>(Landroidx/recyclerview/widget/RecyclerView$b0;IFFFF)V

    .line 24
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/f$g;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 4
    iget-boolean p1, p0, Landroidx/recyclerview/widget/f$g;->k:Z

    .line 6
    if-eqz p1, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    iget p1, p0, Landroidx/recyclerview/widget/f$c;->n:I

    .line 11
    if-gtz p1, :cond_18

    .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/f$c;->p:Landroidx/recyclerview/widget/f;

    .line 15
    iget-object v0, p1, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 17
    iget-object p1, p1, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    iget-object v1, p0, Landroidx/recyclerview/widget/f$c;->o:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 21
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/f$e;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 24
    goto :goto_2f

    .line 25
    :cond_18
    iget-object p1, p0, Landroidx/recyclerview/widget/f$c;->p:Landroidx/recyclerview/widget/f;

    .line 27
    iget-object p1, p1, Landroidx/recyclerview/widget/f;->mPendingCleanup:Ljava/util/List;

    .line 29
    iget-object v0, p0, Landroidx/recyclerview/widget/f$c;->o:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 31
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 33
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Landroidx/recyclerview/widget/f$g;->h:Z

    .line 39
    iget p1, p0, Landroidx/recyclerview/widget/f$c;->n:I

    .line 41
    if-lez p1, :cond_2f

    .line 43
    iget-object v0, p0, Landroidx/recyclerview/widget/f$c;->p:Landroidx/recyclerview/widget/f;

    .line 45
    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/f;->postDispatchSwipe(Landroidx/recyclerview/widget/f$g;I)V

    .line 48
    :cond_2f
    :goto_2f
    iget-object p1, p0, Landroidx/recyclerview/widget/f$c;->p:Landroidx/recyclerview/widget/f;

    .line 50
    iget-object v0, p1, Landroidx/recyclerview/widget/f;->mOverdrawChild:Landroid/view/View;

    .line 52
    iget-object v1, p0, Landroidx/recyclerview/widget/f$c;->o:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 54
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 56
    if-ne v0, v1, :cond_3c

    .line 58
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/f;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 61
    :cond_3c
    return-void
.end method
