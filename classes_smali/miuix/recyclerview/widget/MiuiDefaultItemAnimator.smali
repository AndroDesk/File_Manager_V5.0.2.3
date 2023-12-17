.class public Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;
.super Landroidx/recyclerview/widget/u;
.source "MiuiDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;,
        Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;
    }
.end annotation


# static fields
.field private static final ADD_DELAY:J = 0x32L

.field private static final DEBUG:Z = false

.field public static final INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final REMOVE_DELAY:J = 0x64L

.field private static sDefaultInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field public mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field

.field public mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;>;"
        }
    .end annotation
.end field

.field public mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field

.field public mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field

.field public mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field

.field public mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 3
    invoke-direct {v0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    .line 6
    const v1, 0x3f666666  # 0.9f

    .line 9
    invoke-virtual {v0, v1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 12
    move-result-object v0

    .line 13
    const v1, 0x3e99999a  # 0.3f

    .line 16
    invoke-virtual {v0, v1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 19
    move-result-object v0

    .line 20
    const-wide/16 v1, 0x12c

    .line 22
    invoke-virtual {v0, v1, v2}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDuration(J)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/u;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 69
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    .line 76
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 81
    const-wide/16 v0, 0x12c

    .line 83
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$l;->setAddDuration(J)V

    .line 86
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$l;->setRemoveDuration(J)V

    .line 89
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$l;->setMoveDuration(J)V

    .line 92
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$l;->setChangeDuration(J)V

    .line 95
    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    :goto_6
    if-ltz v0, :cond_22

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;

    .line 15
    invoke-direct {p0, v1, p2}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->endChangeAnimationIfNecessary(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1f

    .line 21
    iget-object v2, v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 23
    if-nez v2, :cond_1f

    .line 25
    iget-object v2, v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 27
    if-nez v2, :cond_1f

    .line 29
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 32
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    .line 34
    goto :goto_6

    .line 35
    :cond_22
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;)V
    .registers 3

    .line 1
    iget-object v0, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-eqz v0, :cond_7

    .line 2
    invoke-direct {p0, p1, v0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->endChangeAnimationIfNecessary(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    .line 3
    :cond_7
    iget-object v0, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-eqz v0, :cond_e

    .line 4
    invoke-direct {p0, p1, v0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->endChangeAnimationIfNecessary(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    :cond_e
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$b0;)Z
    .registers 7

    .line 5
    iget-object v0, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p2, :cond_a

    .line 6
    iput-object v2, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    goto :goto_11

    .line 7
    :cond_a
    iget-object v0, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-ne v0, p2, :cond_27

    .line 8
    iput-object v2, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    move v3, v1

    .line 9
    :goto_11
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 10
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 11
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 12
    invoke-virtual {p0, p2, v3}, Landroidx/recyclerview/widget/u;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    return v1

    :cond_27
    return v3
.end method


# virtual methods
.method public animateAdd(Landroidx/recyclerview/widget/RecyclerView$b0;)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 10
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    const/4 p1, 0x1

    .line 16
    return p1
.end method

.method public animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 7

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v2, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 14
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 17
    const/high16 v2, 0x3f800000  # 1.0f

    .line 19
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$l;->getAddDuration()J

    .line 26
    move-result-wide v3

    .line 27
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 30
    move-result-object v2

    .line 31
    new-instance v3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$5;

    .line 33
    invoke-direct {v3, p0, p1, v0, v1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$5;-><init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 36
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 43
    return-void
.end method

.method public animateChange(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;IIII)Z
    .registers 16

    .line 1
    if-ne p1, p2, :cond_d

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move v2, p3

    .line 6
    move v3, p4

    .line 7
    move v4, p5

    .line 8
    move v5, p6

    .line 9
    invoke-virtual/range {v0 .. v5}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$b0;IIII)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_d
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 19
    move-result v0

    .line 20
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 25
    move-result v1

    .line 26
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 28
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 31
    move-result v2

    .line 32
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 35
    sub-int v3, p5, p3

    .line 37
    int-to-float v3, v3

    .line 38
    sub-float/2addr v3, v0

    .line 39
    float-to-int v3, v3

    .line 40
    sub-int v4, p6, p4

    .line 42
    int-to-float v4, v4

    .line 43
    sub-float/2addr v4, v1

    .line 44
    float-to-int v4, v4

    .line 45
    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 47
    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 50
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 55
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 57
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 60
    if-eqz p2, :cond_54

    .line 62
    invoke-virtual {p0, p2}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 65
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 67
    neg-int v1, v3

    .line 68
    int-to-float v1, v1

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 72
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 74
    neg-int v1, v4

    .line 75
    int-to-float v1, v1

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 79
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 81
    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 85
    :cond_54
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 87
    new-instance v8, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;

    .line 89
    move-object v1, v8

    .line 90
    move-object v2, p1

    .line 91
    move-object v3, p2

    .line 92
    move v4, p3

    .line 93
    move v5, p4

    .line 94
    move v6, p5

    .line 95
    move v7, p6

    .line 96
    invoke-direct/range {v1 .. v7}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;IIII)V

    .line 99
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    const/4 p1, 0x1

    .line 103
    return p1
.end method

.method public animateChangeImpl(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;)V
    .registers 9

    .line 1
    iget-object v0, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_7

    .line 6
    move-object v0, v1

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 10
    :goto_9
    iget-object v2, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 12
    if-eqz v2, :cond_f

    .line 14
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 16
    :cond_f
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_4e

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$l;->getChangeDuration()J

    .line 26
    move-result-wide v4

    .line 27
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 30
    move-result-object v3

    .line 31
    iget-object v4, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 33
    iget-object v5, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 35
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v4, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 40
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 43
    iget v4, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->toX:I

    .line 45
    int-to-float v4, v4

    .line 46
    iget v5, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->fromX:I

    .line 48
    int-to-float v5, v5

    .line 49
    sub-float/2addr v4, v5

    .line 50
    iget v5, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->toY:I

    .line 52
    int-to-float v5, v5

    .line 53
    iget v6, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->fromY:I

    .line 55
    int-to-float v6, v6

    .line 56
    sub-float/2addr v5, v6

    .line 57
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 60
    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 63
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 66
    move-result-object v4

    .line 67
    new-instance v5, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;

    .line 69
    invoke-direct {v5, p0, p1, v3, v0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;-><init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 72
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 79
    :cond_4e
    if-eqz v1, :cond_82

    .line 81
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 84
    move-result-object v0

    .line 85
    iget-object v3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 87
    iget-object v4, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 89
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 94
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 97
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$l;->getChangeDuration()J

    .line 108
    move-result-wide v3

    .line 109
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 112
    move-result-object v2

    .line 113
    const/high16 v3, 0x3f800000  # 1.0f

    .line 115
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 118
    move-result-object v2

    .line 119
    new-instance v3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$8;

    .line 121
    invoke-direct {v3, p0, p1, v0, v1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$8;-><init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 124
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 131
    :cond_82
    return-void
.end method

.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$b0;IIII)Z
    .registers 14

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 6
    move-result v1

    .line 7
    float-to-int v1, v1

    .line 8
    add-int v4, p2, v1

    .line 10
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    .line 15
    move-result p2

    .line 16
    float-to-int p2, p2

    .line 17
    add-int v5, p3, p2

    .line 19
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 22
    sub-int p2, p4, v4

    .line 24
    sub-int p3, p5, v5

    .line 26
    if-nez p2, :cond_22

    .line 28
    if-nez p3, :cond_22

    .line 30
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 33
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :cond_22
    if-eqz p2, :cond_29

    .line 37
    neg-int p2, p2

    .line 38
    int-to-float p2, p2

    .line 39
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 42
    :cond_29
    if-eqz p3, :cond_30

    .line 44
    neg-int p2, p3

    .line 45
    int-to-float p2, p2

    .line 46
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 49
    :cond_30
    iget-object p2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 51
    new-instance p3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;

    .line 53
    move-object v2, p3

    .line 54
    move-object v3, p1

    .line 55
    move v6, p4

    .line 56
    move v7, p5

    .line 57
    invoke-direct/range {v2 .. v7}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$b0;IIII)V

    .line 60
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    const/4 p1, 0x1

    .line 64
    return p1
.end method

.method public animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$b0;IIII)V
    .registers 13

    .line 1
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    sub-int v3, p4, p2

    .line 5
    sub-int v5, p5, p3

    .line 7
    const/4 p2, 0x0

    .line 8
    if-eqz v3, :cond_10

    .line 10
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 13
    move-result-object p3

    .line 14
    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 17
    :cond_10
    if-eqz v5, :cond_19

    .line 19
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 22
    move-result-object p3

    .line 23
    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 26
    :cond_19
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 29
    move-result-object v6

    .line 30
    iget-object p2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object p2, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 37
    invoke-virtual {v6, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 40
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$l;->getMoveDuration()J

    .line 43
    move-result-wide p2

    .line 44
    invoke-virtual {v6, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 47
    move-result-object p2

    .line 48
    new-instance p3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;

    .line 50
    move-object v0, p3

    .line 51
    move-object v1, p0

    .line 52
    move-object v2, p1

    .line 53
    invoke-direct/range {v0 .. v6}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;-><init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$b0;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    .line 56
    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 63
    return-void
.end method

.method public animateRemove(Landroidx/recyclerview/widget/RecyclerView$b0;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 4
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    const/4 p1, 0x1

    .line 10
    return p1
.end method

.method public animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 6

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v2, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 14
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$l;->getRemoveDuration()J

    .line 20
    move-result-wide v2

    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;

    .line 32
    invoke-direct {v3, p0, p1, v1, v0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;-><init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 35
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 42
    return-void
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;Ljava/util/List;)Z
    .registers 4
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
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$l;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;Ljava/util/List;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 p1, 0x1

    .line 17
    :goto_10
    return p1
.end method

.method public cancelAll(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    :goto_6
    if-ltz v0, :cond_1a

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 15
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 26
    goto :goto_6

    .line 27
    :cond_1a
    return-void
.end method

.method public dispatchFinishedWhenDone()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->isRunning()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_9

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$l;->dispatchAnimationsFinished()V

    .line 10
    :cond_9
    return-void
.end method

.method public endAnimation(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 9

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 10
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v1

    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 18
    :goto_11
    const/4 v2, 0x0

    .line 19
    if-ltz v1, :cond_31

    .line 21
    iget-object v3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;

    .line 29
    iget-object v3, v3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 31
    if-ne v3, p1, :cond_2e

    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 36
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 39
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 42
    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 47
    :cond_2e
    add-int/lit8 v1, v1, -0x1

    .line 49
    goto :goto_11

    .line 50
    :cond_31
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 52
    invoke-direct {p0, v1, p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 55
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60
    move-result v1

    .line 61
    const/high16 v3, 0x3f800000  # 1.0f

    .line 63
    if-eqz v1, :cond_46

    .line 65
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 68
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 71
    :cond_46
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_54

    .line 79
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 82
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 85
    :cond_54
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 90
    move-result v1

    .line 91
    add-int/lit8 v1, v1, -0x1

    .line 93
    :goto_5c
    if-ltz v1, :cond_77

    .line 95
    iget-object v4, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Ljava/util/ArrayList;

    .line 103
    invoke-direct {p0, v4, p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 106
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_74

    .line 112
    iget-object v4, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 117
    :cond_74
    add-int/lit8 v1, v1, -0x1

    .line 119
    goto :goto_5c

    .line 120
    :cond_77
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 125
    move-result v1

    .line 126
    add-int/lit8 v1, v1, -0x1

    .line 128
    :goto_7f
    if-ltz v1, :cond_b9

    .line 130
    iget-object v4, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    move-result-object v4

    .line 136
    check-cast v4, Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 141
    move-result v5

    .line 142
    add-int/lit8 v5, v5, -0x1

    .line 144
    :goto_8f
    if-ltz v5, :cond_b6

    .line 146
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    move-result-object v6

    .line 150
    check-cast v6, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;

    .line 152
    iget-object v6, v6, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 154
    if-ne v6, p1, :cond_b3

    .line 156
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 159
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 162
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 165
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 168
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 171
    move-result v4

    .line 172
    if-eqz v4, :cond_b6

    .line 174
    iget-object v4, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 176
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 179
    goto :goto_b6

    .line 180
    :cond_b3
    add-int/lit8 v5, v5, -0x1

    .line 182
    goto :goto_8f

    .line 183
    :cond_b6
    :goto_b6
    add-int/lit8 v1, v1, -0x1

    .line 185
    goto :goto_7f

    .line 186
    :cond_b9
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 188
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 191
    move-result v1

    .line 192
    add-int/lit8 v1, v1, -0x1

    .line 194
    :goto_c1
    if-ltz v1, :cond_e5

    .line 196
    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 198
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 201
    move-result-object v2

    .line 202
    check-cast v2, Ljava/util/ArrayList;

    .line 204
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 207
    move-result v4

    .line 208
    if-eqz v4, :cond_e2

    .line 210
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 213
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 216
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_e2

    .line 222
    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 224
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 227
    :cond_e2
    add-int/lit8 v1, v1, -0x1

    .line 229
    goto :goto_c1

    .line 230
    :cond_e5
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 232
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 237
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 242
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 245
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 247
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {p0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 253
    return-void
.end method

.method public endAnimations()V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_8
    const/4 v1, 0x0

    .line 10
    if-ltz v0, :cond_2a

    .line 12
    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;

    .line 20
    iget-object v3, v2, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 22
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 24
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 27
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 30
    iget-object v1, v2, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 32
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/u;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 35
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 42
    goto :goto_8

    .line 43
    :cond_2a
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 48
    move-result v0

    .line 49
    add-int/lit8 v0, v0, -0x1

    .line 51
    :goto_32
    if-ltz v0, :cond_47

    .line 53
    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 61
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/u;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 64
    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 69
    add-int/lit8 v0, v0, -0x1

    .line 71
    goto :goto_32

    .line 72
    :cond_47
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 77
    move-result v0

    .line 78
    add-int/lit8 v0, v0, -0x1

    .line 80
    :goto_4f
    const/high16 v2, 0x3f800000  # 1.0f

    .line 82
    if-ltz v0, :cond_6b

    .line 84
    iget-object v3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 92
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 94
    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 97
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/u;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 100
    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 102
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 105
    add-int/lit8 v0, v0, -0x1

    .line 107
    goto :goto_4f

    .line 108
    :cond_6b
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 113
    move-result v0

    .line 114
    add-int/lit8 v0, v0, -0x1

    .line 116
    :goto_73
    if-ltz v0, :cond_83

    .line 118
    iget-object v3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 120
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 123
    move-result-object v3

    .line 124
    check-cast v3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;

    .line 126
    invoke-direct {p0, v3}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->endChangeAnimationIfNecessary(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;)V

    .line 129
    add-int/lit8 v0, v0, -0x1

    .line 131
    goto :goto_73

    .line 132
    :cond_83
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 134
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 137
    invoke-virtual {p0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->isRunning()Z

    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_8f

    .line 143
    return-void

    .line 144
    :cond_8f
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 149
    move-result v0

    .line 150
    add-int/lit8 v0, v0, -0x1

    .line 152
    :goto_97
    if-ltz v0, :cond_d2

    .line 154
    iget-object v3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 156
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    move-result-object v3

    .line 160
    check-cast v3, Ljava/util/ArrayList;

    .line 162
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 165
    move-result v4

    .line 166
    add-int/lit8 v4, v4, -0x1

    .line 168
    :goto_a7
    if-ltz v4, :cond_cf

    .line 170
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    move-result-object v5

    .line 174
    check-cast v5, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;

    .line 176
    iget-object v6, v5, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 178
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 180
    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 183
    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 186
    iget-object v5, v5, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 188
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/u;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 191
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 194
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 197
    move-result v5

    .line 198
    if-eqz v5, :cond_cc

    .line 200
    iget-object v5, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 202
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 205
    :cond_cc
    add-int/lit8 v4, v4, -0x1

    .line 207
    goto :goto_a7

    .line 208
    :cond_cf
    add-int/lit8 v0, v0, -0x1

    .line 210
    goto :goto_97

    .line 211
    :cond_d2
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 213
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 216
    move-result v0

    .line 217
    add-int/lit8 v0, v0, -0x1

    .line 219
    :goto_da
    if-ltz v0, :cond_10e

    .line 221
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 223
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 226
    move-result-object v1

    .line 227
    check-cast v1, Ljava/util/ArrayList;

    .line 229
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 232
    move-result v3

    .line 233
    add-int/lit8 v3, v3, -0x1

    .line 235
    :goto_ea
    if-ltz v3, :cond_10b

    .line 237
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 240
    move-result-object v4

    .line 241
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 243
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 245
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 248
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/u;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 251
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 254
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 257
    move-result v4

    .line 258
    if-eqz v4, :cond_108

    .line 260
    iget-object v4, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 262
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 265
    :cond_108
    add-int/lit8 v3, v3, -0x1

    .line 267
    goto :goto_ea

    .line 268
    :cond_10b
    add-int/lit8 v0, v0, -0x1

    .line 270
    goto :goto_da

    .line 271
    :cond_10e
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 273
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 276
    move-result v0

    .line 277
    add-int/lit8 v0, v0, -0x1

    .line 279
    :goto_116
    if-ltz v0, :cond_142

    .line 281
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 283
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 286
    move-result-object v1

    .line 287
    check-cast v1, Ljava/util/ArrayList;

    .line 289
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 292
    move-result v2

    .line 293
    add-int/lit8 v2, v2, -0x1

    .line 295
    :goto_126
    if-ltz v2, :cond_13f

    .line 297
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 300
    move-result-object v3

    .line 301
    check-cast v3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;

    .line 303
    invoke-direct {p0, v3}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->endChangeAnimationIfNecessary(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;)V

    .line 306
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 309
    move-result v3

    .line 310
    if-eqz v3, :cond_13c

    .line 312
    iget-object v3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 314
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 317
    :cond_13c
    add-int/lit8 v2, v2, -0x1

    .line 319
    goto :goto_126

    .line 320
    :cond_13f
    add-int/lit8 v0, v0, -0x1

    .line 322
    goto :goto_116

    .line 323
    :cond_142
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 325
    invoke-virtual {p0, v0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 328
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 330
    invoke-virtual {p0, v0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 333
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 335
    invoke-virtual {p0, v0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 338
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 340
    invoke-virtual {p0, v0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 343
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$l;->dispatchAnimationsFinished()V

    .line 346
    return-void
.end method

.method public isRunning()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5b

    .line 9
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_5b

    .line 17
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_5b

    .line 25
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_5b

    .line 33
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_5b

    .line 41
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_5b

    .line 49
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_5b

    .line 57
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_5b

    .line 65
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_5b

    .line 73
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_5b

    .line 81
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_59

    .line 89
    goto :goto_5b

    .line 90
    :cond_59
    const/4 v0, 0x0

    .line 91
    goto :goto_5c

    .line 92
    :cond_5b
    :goto_5b
    const/4 v0, 0x1

    .line 93
    :goto_5c
    return v0
.end method

.method public resetAnimation(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 4

    .line 1
    sget-object v0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 3
    if-nez v0, :cond_f

    .line 5
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 7
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 16
    :cond_f
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 27
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 30
    return-void
.end method

.method public runPendingAnimations()V
    .registers 11

    .line 1
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 9
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    move-result v1

    .line 15
    xor-int/lit8 v1, v1, 0x1

    .line 17
    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    move-result v2

    .line 23
    xor-int/lit8 v2, v2, 0x1

    .line 25
    iget-object v3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    move-result v3

    .line 31
    xor-int/lit8 v3, v3, 0x1

    .line 33
    if-nez v0, :cond_29

    .line 35
    if-nez v1, :cond_29

    .line 37
    if-nez v3, :cond_29

    .line 39
    if-nez v2, :cond_29

    .line 41
    return-void

    .line 42
    :cond_29
    iget-object v4, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v4

    .line 48
    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_3f

    .line 54
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 60
    invoke-virtual {p0, v5}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 63
    goto :goto_2f

    .line 64
    :cond_3f
    iget-object v4, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 69
    const-wide/16 v4, 0x64

    .line 71
    const/4 v6, 0x0

    .line 72
    if-eqz v1, :cond_77

    .line 74
    new-instance v7, Ljava/util/ArrayList;

    .line 76
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iget-object v8, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 84
    iget-object v8, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v8, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 94
    new-instance v8, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;

    .line 96
    invoke-direct {v8, p0, v7}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;-><init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 99
    if-eqz v0, :cond_74

    .line 101
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object v7

    .line 105
    check-cast v7, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;

    .line 107
    iget-object v7, v7, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 109
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 111
    sget-object v9, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 113
    invoke-static {v7, v8, v4, v5}, Lm0/g0$d;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 116
    goto :goto_77

    .line 117
    :cond_74
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 120
    :cond_77
    :goto_77
    if-eqz v2, :cond_a7

    .line 122
    new-instance v7, Ljava/util/ArrayList;

    .line 124
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iget-object v8, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 129
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 132
    iget-object v8, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 134
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v8, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 142
    new-instance v8, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$2;

    .line 144
    invoke-direct {v8, p0, v7}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$2;-><init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 147
    if-eqz v0, :cond_a4

    .line 149
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    move-result-object v7

    .line 153
    check-cast v7, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;

    .line 155
    iget-object v7, v7, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 157
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 159
    sget-object v9, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 161
    invoke-static {v7, v8, v4, v5}, Lm0/g0$d;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 164
    goto :goto_a7

    .line 165
    :cond_a4
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 168
    :cond_a7
    :goto_a7
    if-eqz v3, :cond_e7

    .line 170
    new-instance v3, Ljava/util/ArrayList;

    .line 172
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 175
    iget-object v7, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 177
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 180
    iget-object v7, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 182
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v7, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 187
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 190
    new-instance v7, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$3;

    .line 192
    invoke-direct {v7, p0, v3}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$3;-><init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 195
    if-nez v0, :cond_cd

    .line 197
    if-nez v1, :cond_cd

    .line 199
    if-eqz v2, :cond_c9

    .line 201
    goto :goto_cd

    .line 202
    :cond_c9
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 205
    goto :goto_e7

    .line 206
    :cond_cd
    :goto_cd
    const-wide/16 v8, 0x0

    .line 208
    if-eqz v0, :cond_d2

    .line 210
    goto :goto_d3

    .line 211
    :cond_d2
    move-wide v4, v8

    .line 212
    :goto_d3
    if-nez v1, :cond_d7

    .line 214
    if-eqz v2, :cond_d9

    .line 216
    :cond_d7
    const-wide/16 v8, 0x32

    .line 218
    :cond_d9
    add-long/2addr v4, v8

    .line 219
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 222
    move-result-object v0

    .line 223
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 225
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 227
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 229
    invoke-static {v0, v7, v4, v5}, Lm0/g0$d;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 232
    :cond_e7
    :goto_e7
    return-void
.end method
