.class public Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
.super Ljava/lang/Object;
.source "AnimationBuilder.java"


# instance fields
.field private final animatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private nextValueWillBeDp:Z

.field private final viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

.field private final views:[Landroid/view/View;

.field private waitForHeight:Z


# direct methods
.method public varargs constructor <init>(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;[Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->animatorList:Ljava/util/List;

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 13
    iput-object p2, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->views:[Landroid/view/View;

    .line 15
    return-void
.end method

.method private add(Landroid/animation/Animator;)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->animatorList:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-object p0
.end method

.method private varargs custom(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Update;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->views:[Landroid/view/View;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_4
    if-ge v2, v1, :cond_20

    .line 7
    aget-object v3, v0, v2

    .line 9
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->getValues([F)[F

    .line 12
    move-result-object v4

    .line 13
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 16
    move-result-object v4

    .line 17
    if-eqz p1, :cond_1a

    .line 19
    new-instance v5, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$1;

    .line 21
    invoke-direct {v5, p0, p1, v3}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$1;-><init>(Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Update;Landroid/view/View;)V

    .line 24
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 27
    :cond_1a
    invoke-direct {p0, v4}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->add(Landroid/animation/Animator;)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_4

    .line 33
    :cond_20
    return-object p0
.end method

.method private varargs getValues([F)[F
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->nextValueWillBeDp:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-object p1

    .line 6
    :cond_5
    array-length v0, p1

    .line 7
    new-array v0, v0, [F

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_9
    array-length v2, p1

    .line 11
    if-ge v1, v2, :cond_17

    .line 13
    aget v2, p1, v1

    .line 15
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->toPx(F)F

    .line 18
    move-result v2

    .line 19
    aput v2, v0, v1

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_9

    .line 24
    :cond_17
    return-object v0
.end method

.method private onStop(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->onStop(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method private varargs property(Ljava/lang/String;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->views:[Landroid/view/View;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_4
    if-ge v2, v1, :cond_18

    .line 7
    aget-object v3, v0, v2

    .line 9
    iget-object v4, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->animatorList:Ljava/util/List;

    .line 11
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->getValues([F)[F

    .line 14
    move-result-object v5

    .line 15
    invoke-static {v3, p1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 18
    move-result-object v3

    .line 19
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 24
    goto :goto_4

    .line 25
    :cond_18
    return-object p0
.end method

.method private varargs scaleX([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    .line 1
    const-string v0, "scaleX"

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->property(Ljava/lang/String;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method private varargs scaleY([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    .line 1
    const-string v0, "scaleY"

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->property(Ljava/lang/String;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method private toPx(F)F
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->views:[Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    move-result-object v0

    .line 18
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 20
    mul-float/2addr p1, v0

    .line 21
    return p1
.end method


# virtual methods
.method public accelerate()Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 3
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 5
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->interpolator(Landroid/view/animation/Interpolator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public varargs alpha([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    .line 1
    const-string v0, "alpha"

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->property(Ljava/lang/String;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public varargs andAnimate([Landroid/view/View;)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->addAnimationBuilder([Landroid/view/View;)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public varargs backgroundColor([I)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->views:[Landroid/view/View;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_4
    if-ge v2, v1, :cond_1e

    .line 7
    aget-object v3, v0, v2

    .line 9
    const-string v4, "backgroundColor"

    .line 11
    invoke-static {v3, v4, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 14
    move-result-object v3

    .line 15
    new-instance v4, Landroid/animation/ArgbEvaluator;

    .line 17
    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 20
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 23
    iget-object v4, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->animatorList:Ljava/util/List;

    .line 25
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_4

    .line 31
    :cond_1e
    return-object p0
.end method

.method public createAnimators()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->animatorList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public descelerate()Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 3
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 5
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->interpolator(Landroid/view/animation/Interpolator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public dp()Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->nextValueWillBeDp:Z

    .line 4
    return-object p0
.end method

.method public duration(J)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->duration(J)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getView()Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->views:[Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 6
    return-object v0
.end method

.method public getViews()[Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->views:[Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public varargs height([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$2;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$2;-><init>(Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;)V

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->custom(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Update;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public interpolator(Landroid/view/animation/Interpolator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->interpolator(Landroid/view/animation/Interpolator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public isWaitForHeight()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->waitForHeight:Z

    .line 3
    return v0
.end method

.method public onEnd(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->onStop(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onStart(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Start;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->onStart(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Start;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public varargs rotation([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    .line 1
    const-string v0, "rotation"

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->property(Ljava/lang/String;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public varargs rotationX([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    .line 1
    const-string v0, "rotationX"

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->property(Ljava/lang/String;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public varargs rotationY([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    .line 1
    const-string v0, "rotationY"

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->property(Ljava/lang/String;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public varargs scale([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->scaleX([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    .line 4
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->scaleY([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    .line 7
    return-object p0
.end method

.method public start()Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->start()Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public startDelay(J)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->startDelay(J)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public varargs textColor([I)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->views:[Landroid/view/View;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_4
    if-ge v2, v1, :cond_22

    .line 7
    aget-object v3, v0, v2

    .line 9
    instance-of v4, v3, Landroid/widget/TextView;

    .line 11
    if-eqz v4, :cond_1f

    .line 13
    const-string v4, "textColor"

    .line 15
    invoke-static {v3, v4, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 18
    move-result-object v3

    .line 19
    new-instance v4, Landroid/animation/ArgbEvaluator;

    .line 21
    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 24
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 27
    iget-object v4, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->animatorList:Ljava/util/List;

    .line 29
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_4

    .line 35
    :cond_22
    return-object p0
.end method

.method public varargs thenAnimate([Landroid/view/View;)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->thenAnimate([Landroid/view/View;)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public toDp(F)F
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->views:[Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    move-result-object v0

    .line 18
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 20
    div-float/2addr p1, v0

    .line 21
    return p1
.end method

.method public varargs translationX([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    .line 1
    const-string v0, "translationX"

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->property(Ljava/lang/String;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public varargs translationY([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    .line 1
    const-string v0, "translationY"

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->property(Ljava/lang/String;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public waitForHeight()Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->waitForHeight:Z

    .line 4
    return-object p0
.end method

.method public varargs width([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$3;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$3;-><init>(Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;)V

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->custom(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Update;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method
