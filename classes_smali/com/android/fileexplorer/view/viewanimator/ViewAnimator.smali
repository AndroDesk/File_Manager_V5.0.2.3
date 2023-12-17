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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->animationList:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Start;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->startListener:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Start;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->stopListener:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->next:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->prev:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Landroid/animation/AnimatorSet;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->waitForThisViewHeight:Landroid/view/View;

    return-object p0
.end method

.method public static varargs animate([Landroid/view/View;)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    invoke-direct {v0}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->addAnimationBuilder([Landroid/view/View;)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    move-result-object p0

    return-object p0
.end method

.method private cancel()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->next:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    if-eqz v0, :cond_11

    invoke-direct {v0}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->next:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    :cond_11
    return-void
.end method

.method private createAnimatorSet()Landroid/animation/AnimatorSet;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->animationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    invoke-virtual {v2}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->createAnimators()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    :cond_1f
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->animationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    invoke-virtual {v2}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->isWaitForHeight()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v2}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->waitForThisViewHeight:Landroid/view/View;

    :cond_3d
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->duration:Ljava/lang/Long;

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_50
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->startDelay:Ljava/lang/Long;

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_5b
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->interpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_62

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_62
    new-instance v0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$1;-><init>(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1
.end method


# virtual methods
.method public varargs addAnimationBuilder([Landroid/view/View;)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;-><init>(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;[Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->animationList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public duration(J)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->duration:Ljava/lang/Long;

    return-object p0
.end method

.method public interpolator(Landroid/view/animation/Interpolator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public onStart(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Start;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->startListener:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Start;

    return-object p0
.end method

.method public onStop(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->stopListener:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;

    return-object p0
.end method

.method public start()Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->prev:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->start()Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    goto :goto_22

    :cond_8
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->waitForThisViewHeight:Landroid/view/View;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$2;-><init>(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_22

    :cond_1f
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_22
    return-object p0
.end method

.method public startDelay(J)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->startDelay:Ljava/lang/Long;

    return-object p0
.end method

.method public varargs thenAnimate([Landroid/view/View;)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    invoke-direct {v0}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->next:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    iput-object p0, v0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->prev:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->addAnimationBuilder([Landroid/view/View;)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    move-result-object p1

    return-object p1
.end method
