.class public final Lcom/google/android/material/transition/SlideDistanceProvider;
.super Ljava/lang/Object;
.source "SlideDistanceProvider.java"

# interfaces
.implements Lcom/google/android/material/transition/VisibilityAnimatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/SlideDistanceProvider$GravityFlag;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISTANCE:I = -0x1


# instance fields
.field private slideDistance:I

.field private slideEdge:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideDistance:I

    .line 7
    iput p1, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideEdge:I

    .line 9
    return-void
.end method

.method private static createTranslationAppearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;
    .registers 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p2, v0, :cond_57

    .line 5
    const/4 v0, 0x5

    .line 6
    if-eq p2, v0, :cond_50

    .line 8
    const/16 v0, 0x30

    .line 10
    if-eq p2, v0, :cond_49

    .line 12
    const/16 v0, 0x50

    .line 14
    if-eq p2, v0, :cond_43

    .line 16
    const v0, 0x800003

    .line 19
    if-eq p2, v0, :cond_34

    .line 21
    const v0, 0x800005

    .line 24
    if-ne p2, v0, :cond_28

    .line 26
    invoke-static {p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_22

    .line 32
    neg-int p0, p3

    .line 33
    int-to-float p0, p0

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    int-to-float p0, p3

    .line 36
    :goto_23
    invoke-static {p1, p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 43
    const-string p1, "Invalid slide direction: "

    .line 45
    invoke-static {p1, p2}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p0

    .line 53
    :cond_34
    invoke-static {p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_3c

    .line 59
    int-to-float p0, p3

    .line 60
    goto :goto_3e

    .line 61
    :cond_3c
    neg-int p0, p3

    .line 62
    int-to-float p0, p0

    .line 63
    :goto_3e
    invoke-static {p1, p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_43
    int-to-float p0, p3

    .line 69
    invoke-static {p1, p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_49
    neg-int p0, p3

    .line 75
    int-to-float p0, p0

    .line 76
    invoke-static {p1, p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :cond_50
    neg-int p0, p3

    .line 82
    int-to-float p0, p0

    .line 83
    invoke-static {p1, p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    :cond_57
    int-to-float p0, p3

    .line 89
    invoke-static {p1, p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    .line 92
    move-result-object p0

    .line 93
    return-object p0
.end method

.method private static createTranslationDisappearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;
    .registers 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p2, v0, :cond_56

    .line 5
    const/4 v0, 0x5

    .line 6
    if-eq p2, v0, :cond_50

    .line 8
    const/16 v0, 0x30

    .line 10
    if-eq p2, v0, :cond_4a

    .line 12
    const/16 v0, 0x50

    .line 14
    if-eq p2, v0, :cond_43

    .line 16
    const v0, 0x800003

    .line 19
    if-eq p2, v0, :cond_34

    .line 21
    const v0, 0x800005

    .line 24
    if-ne p2, v0, :cond_28

    .line 26
    invoke-static {p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_21

    .line 32
    int-to-float p0, p3

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    neg-int p0, p3

    .line 35
    int-to-float p0, p0

    .line 36
    :goto_23
    invoke-static {p1, v1, p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 43
    const-string p1, "Invalid slide direction: "

    .line 45
    invoke-static {p1, p2}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p0

    .line 53
    :cond_34
    invoke-static {p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_3d

    .line 59
    neg-int p0, p3

    .line 60
    int-to-float p0, p0

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    int-to-float p0, p3

    .line 63
    :goto_3e
    invoke-static {p1, v1, p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_43
    neg-int p0, p3

    .line 69
    int-to-float p0, p0

    .line 70
    invoke-static {p1, v1, p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_4a
    int-to-float p0, p3

    .line 76
    invoke-static {p1, v1, p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :cond_50
    int-to-float p0, p3

    .line 82
    invoke-static {p1, v1, p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :cond_56
    neg-int p0, p3

    .line 88
    int-to-float p0, p0

    .line 89
    invoke-static {p1, v1, p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    .line 92
    move-result-object p0

    .line 93
    return-object p0
.end method

.method private static createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    .line 4
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 6
    const/4 v3, 0x2

    .line 7
    new-array v3, v3, [F

    .line 9
    const/4 v4, 0x0

    .line 10
    aput p1, v3, v4

    .line 12
    aput p2, v3, v0

    .line 14
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 17
    move-result-object p1

    .line 18
    aput-object p1, v1, v4

    .line 20
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method private static createTranslationYAnimator(Landroid/view/View;FF)Landroid/animation/Animator;
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    .line 4
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 6
    const/4 v3, 0x2

    .line 7
    new-array v3, v3, [F

    .line 9
    const/4 v4, 0x0

    .line 10
    aput p1, v3, v4

    .line 12
    aput p2, v3, v0

    .line 14
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 17
    move-result-object p1

    .line 18
    aput-object p1, v1, v4

    .line 20
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method private getSlideDistanceOrDefault(Landroid/content/Context;)I
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideDistance:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_6

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object p1

    .line 11
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_transition_shared_axis_slide_distance:I

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method private static isRtl(Landroid/view/View;)Z
    .registers 2

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p0, v0, :cond_a

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method


# virtual methods
.method public createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideEdge:I

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->getSlideDistanceOrDefault(Landroid/content/Context;)I

    .line 10
    move-result v1

    .line 11
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationAppearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideEdge:I

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->getSlideDistanceOrDefault(Landroid/content/Context;)I

    .line 10
    move-result v1

    .line 11
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationDisappearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public getSlideDistance()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideDistance:I

    .line 3
    return v0
.end method

.method public getSlideEdge()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideEdge:I

    .line 3
    return v0
.end method

.method public setSlideDistance(I)V
    .registers 3

    .line 1
    if-ltz p1, :cond_5

    .line 3
    iput p1, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideDistance:I

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 8
    const-string v0, "Slide distance must be positive. If attempting to reverse the direction of the slide, use setSlideEdge(int) instead."

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public setSlideEdge(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideEdge:I

    .line 3
    return-void
.end method
