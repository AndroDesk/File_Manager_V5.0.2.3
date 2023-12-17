.class public Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
.super Ljava/lang/Object;
.source "ViewAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener;
    }
.end annotation


# instance fields
.field private animationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private duration:Ljava/lang/Long;

.field private interpolator:Landroid/view/animation/Interpolator;

.field private next:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

.field private prev:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

.field private startDelay:Ljava/lang/Long;

.field private startListener:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Start;

.field private stopListener:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;

.field private waitForThisViewHeight:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->animationList:Ljava/util/List;

    .line 11
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Start;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->startListener:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Start;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->stopListener:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->next:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 3
    return-object p0
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->prev:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 3
    return-object p1
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Landroid/animation/AnimatorSet;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->waitForThisViewHeight:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static varargs animate([Landroid/view/View;)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->addAnimationBuilder([Landroid/view/View;)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->next:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 10
    if-eqz v0, :cond_11

    .line 12
    invoke-direct {v0}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->cancel()V

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->next:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 18
    :cond_11
    return-void
.end method

.method private createAnimatorSet()Landroid/animation/AnimatorSet;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->animationList:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1f

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    .line 24
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->createAnimators()Ljava/util/List;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    goto :goto_b

    .line 32
    :cond_1f
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->animationList:Ljava/util/List;

    .line 34
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v1

    .line 38
    :cond_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_3d

    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    .line 50
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->isWaitForHeight()Z

    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_25

    .line 56
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->getView()Landroid/view/View;

    .line 59
    move-result-object v1

    .line 60
    iput-object v1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->waitForThisViewHeight:Landroid/view/View;

    .line 62
    :cond_3d
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 64
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 67
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 70
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->duration:Ljava/lang/Long;

    .line 72
    if-eqz v0, :cond_50

    .line 74
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 77
    move-result-wide v2

    .line 78
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 81
    :cond_50
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->startDelay:Ljava/lang/Long;

    .line 83
    if-eqz v0, :cond_5b

    .line 85
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 88
    move-result-wide v2

    .line 89
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 92
    :cond_5b
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->interpolator:Landroid/view/animation/Interpolator;

    .line 94
    if-eqz v0, :cond_62

    .line 96
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 99
    :cond_62
    new-instance v0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$1;

    .line 101
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$1;-><init>(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)V

    .line 104
    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 107
    return-object v1
.end method


# virtual methods
.method public varargs addAnimationBuilder([Landroid/view/View;)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;-><init>(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;[Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->animationList:Ljava/util/List;

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    return-object v0
.end method

.method public duration(J)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->duration:Ljava/lang/Long;

    .line 7
    return-object p0
.end method

.method public interpolator(Landroid/view/animation/Interpolator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->interpolator:Landroid/view/animation/Interpolator;

    .line 3
    return-object p0
.end method

.method public onStart(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Start;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->startListener:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Start;

    .line 3
    return-object p0
.end method

.method public onStop(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->stopListener:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;

    .line 3
    return-object p0
.end method

.method public start()Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->prev:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->start()Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 8
    goto :goto_22

    .line 9
    :cond_8
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->createAnimatorSet()Landroid/animation/AnimatorSet;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 15
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->waitForThisViewHeight:Landroid/view/View;

    .line 17
    if-eqz v1, :cond_1f

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$2;

    .line 25
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$2;-><init>(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)V

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 31
    goto :goto_22

    .line 32
    :cond_1f
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 35
    :goto_22
    return-object p0
.end method

.method public startDelay(J)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->startDelay:Ljava/lang/Long;

    .line 7
    return-object p0
.end method

.method public varargs thenAnimate([Landroid/view/View;)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->next:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 8
    iput-object p0, v0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->prev:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->addAnimationBuilder([Landroid/view/View;)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
