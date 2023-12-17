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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public varargs constructor <init>(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;[Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->animatorList:Ljava/util/List;

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    iput-object p2, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->views:[Landroid/view/View;

    return-void
.end method

.method private add(Landroid/animation/Animator;)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->animatorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private varargs custom(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Update;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->views:[Landroid/view/View;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_20

    aget-object v3, v0, v2

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->getValues([F)[F

    move-result-object v4

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    if-eqz p1, :cond_1a

    new-instance v5, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$1;

    invoke-direct {v5, p0, p1, v3}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$1;-><init>(Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Update;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1a
    invoke-direct {p0, v4}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->add(Landroid/animation/Animator;)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_20
    return-object p0
.end method

.method private varargs getValues([F)[F
    .registers 5

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->nextValueWillBeDp:Z

    if-nez v0, :cond_5

    return-object p1

    :cond_5
    array-length v0, p1

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_17

    aget v2, p1, v1

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->toPx(F)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    return-object v0
.end method

.method private onStop(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->onStop(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    move-result-object p1

    return-object p1
.end method

.method private varargs property(Ljava/lang/String;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->views:[Landroid/view/View;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->animatorList:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->getValues([F)[F

    move-result-object v5

    invoke-static {v3, p1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_18
    return-object p0
.end method

.method private varargs scaleX([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    const-string v0, "scaleX"

    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->property(Ljava/lang/String;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    move-result-object p1

    return-object p1
.end method

.method private varargs scaleY([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    const-string v0, "scaleY"

    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->property(Ljava/lang/String;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    move-result-object p1

    return-object p1
.end method

.method private toPx(F)F
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->views:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public accelerate()Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->interpolator(Landroid/view/animation/Interpolator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    move-result-object v0

    return-object v0
.end method

.method public varargs alpha([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    const-string v0, "alpha"

    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->property(Ljava/lang/String;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs andAnimate([Landroid/view/View;)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->addAnimationBuilder([Landroid/view/View;)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs backgroundColor([I)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->views:[Landroid/view/View;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    const-string v4, "backgroundColor"

    invoke-static {v3, v4, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object v4, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->animatorList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

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

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->animatorList:Ljava/util/List;

    return-object v0
.end method

.method public descelerate()Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->interpolator(Landroid/view/animation/Interpolator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    move-result-object v0

    return-object v0
.end method

.method public dp()Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->nextValueWillBeDp:Z

    return-object p0
.end method

.method public duration(J)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->duration(J)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    move-result-object p1

    return-object p1
.end method

.method public getView()Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->views:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getViews()[Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->views:[Landroid/view/View;

    return-object v0
.end method

.method public varargs height([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$2;-><init>(Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;)V

    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->custom(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Update;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public interpolator(Landroid/view/animation/Interpolator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->interpolator(Landroid/view/animation/Interpolator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    move-result-object p1

    return-object p1
.end method

.method public isWaitForHeight()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->waitForHeight:Z

    return v0
.end method

.method public onEnd(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->onStop(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    move-result-object p1

    return-object p1
.end method

.method public onStart(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Start;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->onStart(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Start;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    move-result-object p1

    return-object p1
.end method

.method public varargs rotation([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    const-string v0, "rotation"

    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->property(Ljava/lang/String;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs rotationX([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    const-string v0, "rotationX"

    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->property(Ljava/lang/String;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs rotationY([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    const-string v0, "rotationY"

    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->property(Ljava/lang/String;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs scale([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->scaleX([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->scaleY([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    return-object p0
.end method

.method public start()Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->start()Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    move-result-object v0

    return-object v0
.end method

.method public startDelay(J)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->startDelay(J)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    move-result-object p1

    return-object p1
.end method

.method public varargs textColor([I)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->views:[Landroid/view/View;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_1f

    const-string v4, "textColor"

    invoke-static {v3, v4, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object v4, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->animatorList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_22
    return-object p0
.end method

.method public varargs thenAnimate([Landroid/view/View;)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->viewAnimator:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->thenAnimate([Landroid/view/View;)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toDp(F)F
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->views:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    return p1
.end method

.method public varargs translationX([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    const-string v0, "translationX"

    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->property(Ljava/lang/String;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs translationY([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    const-string v0, "translationY"

    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->property(Ljava/lang/String;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public waitForHeight()Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->waitForHeight:Z

    return-object p0
.end method

.method public varargs width([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$3;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$3;-><init>(Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;)V

    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->custom(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Update;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    move-result-object p1

    return-object p1
.end method
