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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/f;Landroidx/recyclerview/widget/RecyclerView$b0;IIFFFFILandroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 19

    move-object v7, p0

    move-object v0, p1

    iput-object v0, v7, Landroidx/recyclerview/widget/f$c;->p:Landroidx/recyclerview/widget/f;

    move/from16 v0, p9

    iput v0, v7, Landroidx/recyclerview/widget/f$c;->n:I

    move-object/from16 v0, p10

    iput-object v0, v7, Landroidx/recyclerview/widget/f$c;->o:Landroidx/recyclerview/widget/RecyclerView$b0;

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroidx/recyclerview/widget/f$g;-><init>(Landroidx/recyclerview/widget/RecyclerView$b0;IFFFF)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/f$g;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-boolean p1, p0, Landroidx/recyclerview/widget/f$g;->k:Z

    if-eqz p1, :cond_8

    return-void

    :cond_8
    iget p1, p0, Landroidx/recyclerview/widget/f$c;->n:I

    if-gtz p1, :cond_18

    iget-object p1, p0, Landroidx/recyclerview/widget/f$c;->p:Landroidx/recyclerview/widget/f;

    iget-object v0, p1, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    iget-object p1, p1, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/f$c;->o:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/f$e;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    goto :goto_2f

    :cond_18
    iget-object p1, p0, Landroidx/recyclerview/widget/f$c;->p:Landroidx/recyclerview/widget/f;

    iget-object p1, p1, Landroidx/recyclerview/widget/f;->mPendingCleanup:Ljava/util/List;

    iget-object v0, p0, Landroidx/recyclerview/widget/f$c;->o:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/f$g;->h:Z

    iget p1, p0, Landroidx/recyclerview/widget/f$c;->n:I

    if-lez p1, :cond_2f

    iget-object v0, p0, Landroidx/recyclerview/widget/f$c;->p:Landroidx/recyclerview/widget/f;

    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/f;->postDispatchSwipe(Landroidx/recyclerview/widget/f$g;I)V

    :cond_2f
    :goto_2f
    iget-object p1, p0, Landroidx/recyclerview/widget/f$c;->p:Landroidx/recyclerview/widget/f;

    iget-object v0, p1, Landroidx/recyclerview/widget/f;->mOverdrawChild:Landroid/view/View;

    iget-object v1, p0, Landroidx/recyclerview/widget/f$c;->o:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    if-ne v0, v1, :cond_3c

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/f;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    :cond_3c
    return-void
.end method
