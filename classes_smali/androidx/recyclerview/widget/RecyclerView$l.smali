.class public abstract Landroidx/recyclerview/widget/RecyclerView$l;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$l$c;,
        Landroidx/recyclerview/widget/RecyclerView$l$a;,
        Landroidx/recyclerview/widget/RecyclerView$l$b;
    }
.end annotation


# static fields
.field public static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field public static final FLAG_CHANGED:I = 0x2

.field public static final FLAG_INVALIDATED:I = 0x4

.field public static final FLAG_MOVED:I = 0x800

.field public static final FLAG_REMOVED:I = 0x8


# instance fields
.field private mAddDuration:J

.field private mChangeDuration:J

.field private mFinishedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$l$a;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroidx/recyclerview/widget/RecyclerView$l$b;

.field private mMoveDuration:J

.field private mRemoveDuration:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->mListener:Landroidx/recyclerview/widget/RecyclerView$l$b;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->mFinishedListeners:Ljava/util/ArrayList;

    .line 14
    const-wide/16 v0, 0x78

    .line 16
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->mAddDuration:J

    .line 18
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->mRemoveDuration:J

    .line 20
    const-wide/16 v0, 0xfa

    .line 22
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->mMoveDuration:J

    .line 24
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->mChangeDuration:J

    .line 26
    return-void
.end method

.method public static buildAdapterChangeFlagsForAnimations(Landroidx/recyclerview/widget/RecyclerView$b0;)I
    .registers 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, 0xe

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_c

    .line 11
    const/4 p0, 0x4

    .line 12
    return p0

    .line 13
    :cond_c
    and-int/lit8 v1, v0, 0x4

    .line 15
    if-nez v1, :cond_21

    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getOldPosition()I

    .line 20
    move-result v1

    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAbsoluteAdapterPosition()I

    .line 24
    move-result p0

    .line 25
    const/4 v2, -0x1

    .line 26
    if-eq v1, v2, :cond_21

    .line 28
    if-eq p0, v2, :cond_21

    .line 30
    if-eq v1, p0, :cond_21

    .line 32
    or-int/lit16 v0, v0, 0x800

    .line 34
    :cond_21
    return v0
.end method


# virtual methods
.method public abstract animateAppearance(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;Landroidx/recyclerview/widget/RecyclerView$l$c;)Z
.end method

.method public abstract animateChange(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;Landroidx/recyclerview/widget/RecyclerView$l$c;)Z
.end method

.method public abstract animateDisappearance(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;Landroidx/recyclerview/widget/RecyclerView$l$c;)Z
.end method

.method public abstract animatePersistence(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;Landroidx/recyclerview/widget/RecyclerView$l$c;)Z
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$l;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$l;->onAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->mListener:Landroidx/recyclerview/widget/RecyclerView$l$b;

    .line 6
    if-eqz v0, :cond_3b

    .line 8
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$m;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$b0;->setIsRecyclable(Z)V

    .line 17
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_1b

    .line 22
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 24
    if-nez v1, :cond_1b

    .line 26
    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 28
    :cond_1b
    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 30
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldBeKeptAsChild()Z

    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_3b

    .line 36
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$m;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 40
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_3b

    .line 46
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isTmpDetached()Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3b

    .line 52
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$m;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 60
    :cond_3b
    return-void
.end method

.method public final dispatchAnimationStarted(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$l;->onAnimationStarted(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 4
    return-void
.end method

.method public final dispatchAnimationsFinished()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->mFinishedListeners:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_17

    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$l;->mFinishedListeners:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$l$a;

    .line 18
    invoke-interface {v2}, Landroidx/recyclerview/widget/RecyclerView$l$a;->a()V

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_7

    .line 24
    :cond_17
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->mFinishedListeners:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 29
    return-void
.end method

.method public abstract endAnimation(Landroidx/recyclerview/widget/RecyclerView$b0;)V
.end method

.method public abstract endAnimations()V
.end method

.method public getAddDuration()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->mAddDuration:J

    .line 3
    return-wide v0
.end method

.method public getChangeDuration()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->mChangeDuration:J

    .line 3
    return-wide v0
.end method

.method public getMoveDuration()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->mMoveDuration:J

    .line 3
    return-wide v0
.end method

.method public getRemoveDuration()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->mRemoveDuration:J

    .line 3
    return-wide v0
.end method

.method public abstract isRunning()Z
.end method

.method public final isRunning(Landroidx/recyclerview/widget/RecyclerView$l$a;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$l;->isRunning()Z

    .line 4
    move-result v0

    .line 5
    if-eqz p1, :cond_11

    .line 7
    if-nez v0, :cond_c

    .line 9
    invoke-interface {p1}, Landroidx/recyclerview/widget/RecyclerView$l$a;->a()V

    .line 12
    goto :goto_11

    .line 13
    :cond_c
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$l;->mFinishedListeners:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_11
    :goto_11
    return v0
.end method

.method public obtainHolderInfo()Landroidx/recyclerview/widget/RecyclerView$l$c;
    .registers 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 3
    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$l$c;-><init>()V

    .line 6
    return-object v0
.end method

.method public onAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    return-void
.end method

.method public onAnimationStarted(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    return-void
.end method

.method public recordPostLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$b0;)Landroidx/recyclerview/widget/RecyclerView$l$c;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$l;->obtainHolderInfo()Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 13
    move-result v0

    .line 14
    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$l$c;->a:I

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 19
    move-result v0

    .line 20
    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$l$c;->b:I

    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 25
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 28
    return-object p1
.end method

.method public recordPreLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$l$c;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$y;",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/recyclerview/widget/RecyclerView$l$c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$l;->obtainHolderInfo()Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 13
    move-result p3

    .line 14
    iput p3, p1, Landroidx/recyclerview/widget/RecyclerView$l$c;->a:I

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 19
    move-result p3

    .line 20
    iput p3, p1, Landroidx/recyclerview/widget/RecyclerView$l$c;->b:I

    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 25
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 28
    return-object p1
.end method

.method public abstract runPendingAnimations()V
.end method

.method public setAddDuration(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView$l;->mAddDuration:J

    .line 3
    return-void
.end method

.method public setChangeDuration(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView$l;->mChangeDuration:J

    .line 3
    return-void
.end method

.method public setListener(Landroidx/recyclerview/widget/RecyclerView$l$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$l;->mListener:Landroidx/recyclerview/widget/RecyclerView$l$b;

    .line 3
    return-void
.end method

.method public setMoveDuration(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView$l;->mMoveDuration:J

    .line 3
    return-void
.end method

.method public setRemoveDuration(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView$l;->mRemoveDuration:J

    .line 3
    return-void
.end method
