.class Lmiuix/miuixbasewidget/widget/FilterSortView$2;
.super Ljava/lang/Object;
.source "FilterSortView.java"

# interfaces
.implements Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/widget/FilterSortView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;


# direct methods
.method public constructor <init>(Lmiuix/miuixbasewidget/widget/FilterSortView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onHoverEnter()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 3
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$700(Lmiuix/miuixbasewidget/widget/FilterSortView;)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v1, v1, [F

    .line 10
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 12
    invoke-static {v2}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$700(Lmiuix/miuixbasewidget/widget/FilterSortView;)Landroid/view/View;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    aput v2, v1, v3

    .line 23
    const/4 v2, 0x1

    .line 24
    const/high16 v3, 0x3f800000  # 1.0f

    .line 26
    aput v3, v1, v2

    .line 28
    const-string v2, "alpha"

    .line 30
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 33
    move-result-object v0

    .line 34
    const-wide/16 v1, 0x15e

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 39
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 41
    const/high16 v2, 0x3fc00000  # 1.5f

    .line 43
    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 46
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 49
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 52
    return-void
.end method

.method public onHoverExit(FF)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 3
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$800(Lmiuix/miuixbasewidget/widget/FilterSortView;)I

    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    cmpg-float v0, p1, v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x2

    .line 12
    if-ltz v0, :cond_45

    .line 14
    cmpg-float v0, p2, v1

    .line 16
    if-ltz v0, :cond_45

    .line 18
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 23
    move-result v0

    .line 24
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 29
    move-result v3

    .line 30
    sub-int/2addr v0, v3

    .line 31
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 33
    invoke-static {v3}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$800(Lmiuix/miuixbasewidget/widget/FilterSortView;)I

    .line 36
    move-result v3

    .line 37
    mul-int/2addr v3, v2

    .line 38
    sub-int/2addr v0, v3

    .line 39
    int-to-float v0, v0

    .line 40
    cmpl-float p1, p1, v0

    .line 42
    if-gtz p1, :cond_45

    .line 44
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 49
    move-result p1

    .line 50
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 55
    move-result v0

    .line 56
    sub-int/2addr p1, v0

    .line 57
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 59
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$800(Lmiuix/miuixbasewidget/widget/FilterSortView;)I

    .line 62
    move-result v0

    .line 63
    mul-int/2addr v0, v2

    .line 64
    sub-int/2addr p1, v0

    .line 65
    int-to-float p1, p1

    .line 66
    cmpl-float p1, p2, p1

    .line 68
    if-lez p1, :cond_75

    .line 70
    :cond_45
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 72
    invoke-static {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$700(Lmiuix/miuixbasewidget/widget/FilterSortView;)Landroid/view/View;

    .line 75
    move-result-object p1

    .line 76
    new-array p2, v2, [F

    .line 78
    const/4 v0, 0x0

    .line 79
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 81
    invoke-static {v2}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$700(Lmiuix/miuixbasewidget/widget/FilterSortView;)Landroid/view/View;

    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 88
    move-result v2

    .line 89
    aput v2, p2, v0

    .line 91
    const/4 v0, 0x1

    .line 92
    aput v1, p2, v0

    .line 94
    const-string v0, "alpha"

    .line 96
    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 99
    move-result-object p1

    .line 100
    const-wide/16 v0, 0x15e

    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 105
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    .line 107
    const/high16 v0, 0x3fc00000  # 1.5f

    .line 109
    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 112
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 115
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 118
    :cond_75
    return-void
.end method

.method public onHoverFilterEnter()V
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 3
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$300(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v2, v1, [F

    .line 10
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 12
    invoke-static {v3}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$300(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x0

    .line 21
    aput v3, v2, v4

    .line 23
    const/4 v3, 0x1

    .line 24
    const v5, 0x3f866666  # 1.05f

    .line 27
    aput v5, v2, v3

    .line 29
    const-string v6, "scaleX"

    .line 31
    invoke-static {v0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 34
    move-result-object v0

    .line 35
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 37
    invoke-static {v2}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$300(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 40
    move-result-object v2

    .line 41
    new-array v6, v1, [F

    .line 43
    iget-object v7, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 45
    invoke-static {v7}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$300(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    .line 52
    move-result v7

    .line 53
    aput v7, v6, v4

    .line 55
    aput v5, v6, v3

    .line 57
    const-string v5, "scaleY"

    .line 59
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 62
    move-result-object v2

    .line 63
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 65
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 68
    new-array v1, v1, [Landroid/animation/Animator;

    .line 70
    aput-object v0, v1, v4

    .line 72
    aput-object v2, v1, v3

    .line 74
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 77
    const-wide/16 v0, 0x15e

    .line 79
    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 82
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 84
    const/high16 v1, 0x3fc00000  # 1.5f

    .line 86
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 89
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 92
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 95
    return-void
.end method

.method public onHoverFilterExit()V
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 3
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$300(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v2, v1, [F

    .line 10
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 12
    invoke-static {v3}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$300(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x0

    .line 21
    aput v3, v2, v4

    .line 23
    const/4 v3, 0x1

    .line 24
    const/high16 v5, 0x3f800000  # 1.0f

    .line 26
    aput v5, v2, v3

    .line 28
    const-string v6, "scaleX"

    .line 30
    invoke-static {v0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 33
    move-result-object v0

    .line 34
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 36
    invoke-static {v2}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$300(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 39
    move-result-object v2

    .line 40
    new-array v6, v1, [F

    .line 42
    iget-object v7, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 44
    invoke-static {v7}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$300(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    .line 51
    move-result v7

    .line 52
    aput v7, v6, v4

    .line 54
    aput v5, v6, v3

    .line 56
    const-string v5, "scaleY"

    .line 58
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 61
    move-result-object v2

    .line 62
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 64
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 67
    new-array v1, v1, [Landroid/animation/Animator;

    .line 69
    aput-object v0, v1, v4

    .line 71
    aput-object v2, v1, v3

    .line 73
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 76
    const-wide/16 v0, 0x15e

    .line 78
    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 81
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 83
    const/high16 v1, 0x3fc00000  # 1.5f

    .line 85
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 88
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 91
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 94
    return-void
.end method
