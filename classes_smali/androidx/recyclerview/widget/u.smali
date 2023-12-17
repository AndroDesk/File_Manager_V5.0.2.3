.class public abstract Landroidx/recyclerview/widget/u;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "SimpleItemAnimator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimpleItemAnimator"


# instance fields
.field public mSupportsChangeAnimations:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/recyclerview/widget/u;->mSupportsChangeAnimations:Z

    .line 7
    return-void
.end method


# virtual methods
.method public abstract animateAdd(Landroidx/recyclerview/widget/RecyclerView$b0;)Z
.end method

.method public animateAppearance(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;Landroidx/recyclerview/widget/RecyclerView$l$c;)Z
    .registers 10

    .line 1
    if-eqz p2, :cond_19

    .line 3
    iget v2, p2, Landroidx/recyclerview/widget/RecyclerView$l$c;->a:I

    .line 5
    iget v4, p3, Landroidx/recyclerview/widget/RecyclerView$l$c;->a:I

    .line 7
    if-ne v2, v4, :cond_e

    .line 9
    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$l$c;->b:I

    .line 11
    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$l$c;->b:I

    .line 13
    if-eq v0, v1, :cond_19

    .line 15
    :cond_e
    iget v3, p2, Landroidx/recyclerview/widget/RecyclerView$l$c;->b:I

    .line 17
    iget v5, p3, Landroidx/recyclerview/widget/RecyclerView$l$c;->b:I

    .line 19
    move-object v0, p0

    .line 20
    move-object v1, p1

    .line 21
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/u;->animateMove(Landroidx/recyclerview/widget/RecyclerView$b0;IIII)Z

    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_19
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u;->animateAdd(Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public abstract animateChange(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;IIII)Z
.end method

.method public animateChange(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;Landroidx/recyclerview/widget/RecyclerView$l$c;)Z
    .registers 12

    .line 1
    iget v3, p3, Landroidx/recyclerview/widget/RecyclerView$l$c;->a:I

    .line 3
    iget v4, p3, Landroidx/recyclerview/widget/RecyclerView$l$c;->b:I

    .line 5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_11

    .line 11
    iget p4, p3, Landroidx/recyclerview/widget/RecyclerView$l$c;->a:I

    .line 13
    iget p3, p3, Landroidx/recyclerview/widget/RecyclerView$l$c;->b:I

    .line 15
    move v6, p3

    .line 16
    move v5, p4

    .line 17
    goto :goto_17

    .line 18
    :cond_11
    iget p3, p4, Landroidx/recyclerview/widget/RecyclerView$l$c;->a:I

    .line 20
    iget p4, p4, Landroidx/recyclerview/widget/RecyclerView$l$c;->b:I

    .line 22
    move v5, p3

    .line 23
    move v6, p4

    .line 24
    :goto_17
    move-object v0, p0

    .line 25
    move-object v1, p1

    .line 26
    move-object v2, p2

    .line 27
    invoke-virtual/range {v0 .. v6}, Landroidx/recyclerview/widget/u;->animateChange(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;IIII)Z

    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public animateDisappearance(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;Landroidx/recyclerview/widget/RecyclerView$l$c;)Z
    .registers 10

    .line 1
    iget v2, p2, Landroidx/recyclerview/widget/RecyclerView$l$c;->a:I

    .line 3
    iget v3, p2, Landroidx/recyclerview/widget/RecyclerView$l$c;->b:I

    .line 5
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 7
    if-nez p3, :cond_d

    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 12
    move-result v0

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    iget v0, p3, Landroidx/recyclerview/widget/RecyclerView$l$c;->a:I

    .line 16
    :goto_f
    move v4, v0

    .line 17
    if-nez p3, :cond_17

    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 22
    move-result p3

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    iget p3, p3, Landroidx/recyclerview/widget/RecyclerView$l$c;->b:I

    .line 26
    :goto_19
    move v5, p3

    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    .line 30
    move-result p3

    .line 31
    if-nez p3, :cond_38

    .line 33
    if-ne v2, v4, :cond_24

    .line 35
    if-eq v3, v5, :cond_38

    .line 37
    :cond_24
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 40
    move-result p3

    .line 41
    add-int/2addr p3, v4

    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 45
    move-result v0

    .line 46
    add-int/2addr v0, v5

    .line 47
    invoke-virtual {p2, v4, v5, p3, v0}, Landroid/view/View;->layout(IIII)V

    .line 50
    move-object v0, p0

    .line 51
    move-object v1, p1

    .line 52
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/u;->animateMove(Landroidx/recyclerview/widget/RecyclerView$b0;IIII)Z

    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :cond_38
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u;->animateRemove(Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    .line 60
    move-result p1

    .line 61
    return p1
.end method

.method public abstract animateMove(Landroidx/recyclerview/widget/RecyclerView$b0;IIII)Z
.end method

.method public animatePersistence(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;Landroidx/recyclerview/widget/RecyclerView$l$c;)Z
    .registers 10

    .line 1
    iget v2, p2, Landroidx/recyclerview/widget/RecyclerView$l$c;->a:I

    .line 3
    iget v4, p3, Landroidx/recyclerview/widget/RecyclerView$l$c;->a:I

    .line 5
    if-ne v2, v4, :cond_12

    .line 7
    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$l$c;->b:I

    .line 9
    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$l$c;->b:I

    .line 11
    if-eq v0, v1, :cond_d

    .line 13
    goto :goto_12

    .line 14
    :cond_d
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_12
    :goto_12
    iget v3, p2, Landroidx/recyclerview/widget/RecyclerView$l$c;->b:I

    .line 21
    iget v5, p3, Landroidx/recyclerview/widget/RecyclerView$l$c;->b:I

    .line 23
    move-object v0, p0

    .line 24
    move-object v1, p1

    .line 25
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/u;->animateMove(Landroidx/recyclerview/widget/RecyclerView$b0;IIII)Z

    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public abstract animateRemove(Landroidx/recyclerview/widget/RecyclerView$b0;)Z
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/u;->mSupportsChangeAnimations:Z

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 p1, 0x1

    .line 15
    :goto_e
    return p1
.end method

.method public final dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u;->onAddFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$l;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 7
    return-void
.end method

.method public final dispatchAddStarting(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u;->onAddStarting(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 4
    return-void
.end method

.method public final dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/u;->onChangeFinished(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$l;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 7
    return-void
.end method

.method public final dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/u;->onChangeStarting(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    .line 4
    return-void
.end method

.method public final dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u;->onMoveFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$l;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 7
    return-void
.end method

.method public final dispatchMoveStarting(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u;->onMoveStarting(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 4
    return-void
.end method

.method public final dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u;->onRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$l;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 7
    return-void
.end method

.method public final dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u;->onRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 4
    return-void
.end method

.method public getSupportsChangeAnimations()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/u;->mSupportsChangeAnimations:Z

    .line 3
    return v0
.end method

.method public onAddFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    return-void
.end method

.method public onAddStarting(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    return-void
.end method

.method public onChangeFinished(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V
    .registers 3

    return-void
.end method

.method public onChangeStarting(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V
    .registers 3

    return-void
.end method

.method public onMoveFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    return-void
.end method

.method public onMoveStarting(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    return-void
.end method

.method public onRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    return-void
.end method

.method public onRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    return-void
.end method

.method public setSupportsChangeAnimations(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/u;->mSupportsChangeAnimations:Z

    .line 3
    return-void
.end method
