.class public final Lcom/google/android/material/transition/platform/ScaleProvider;
.super Ljava/lang/Object;
.source "ScaleProvider.java"

# interfaces
.implements Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;


# instance fields
.field private growing:Z

.field private incomingEndScale:F

.field private incomingStartScale:F

.field private outgoingEndScale:F

.field private outgoingStartScale:F

.field private scaleOnDisappear:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/material/transition/platform/ScaleProvider;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    .line 3
    iput v0, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->outgoingStartScale:F

    const v1, 0x3f8ccccd  # 1.1f

    .line 4
    iput v1, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->outgoingEndScale:F

    const v1, 0x3f4ccccd  # 0.8f

    .line 5
    iput v1, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->incomingStartScale:F

    .line 6
    iput v0, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->incomingEndScale:F

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->scaleOnDisappear:Z

    .line 8
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->growing:Z

    return-void
.end method

.method private static createScaleAnimator(Landroid/view/View;FF)Landroid/animation/Animator;
    .registers 9

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    .line 4
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 6
    new-array v3, v0, [F

    .line 8
    const/4 v4, 0x0

    .line 9
    aput p1, v3, v4

    .line 11
    const/4 v5, 0x1

    .line 12
    aput p2, v3, v5

    .line 14
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 17
    move-result-object v2

    .line 18
    aput-object v2, v1, v4

    .line 20
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 22
    new-array v0, v0, [F

    .line 24
    aput p1, v0, v4

    .line 26
    aput p2, v0, v5

    .line 28
    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 31
    move-result-object p1

    .line 32
    aput-object p1, v1, v5

    .line 34
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method


# virtual methods
.method public createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .registers 4

    .line 1
    iget-boolean p1, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->growing:Z

    .line 3
    if-eqz p1, :cond_d

    .line 5
    iget p1, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->incomingStartScale:F

    .line 7
    iget v0, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->incomingEndScale:F

    .line 9
    invoke-static {p2, p1, v0}, Lcom/google/android/material/transition/platform/ScaleProvider;->createScaleAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_d
    iget p1, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->outgoingEndScale:F

    .line 16
    iget v0, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->outgoingStartScale:F

    .line 18
    invoke-static {p2, p1, v0}, Lcom/google/android/material/transition/platform/ScaleProvider;->createScaleAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .registers 4

    .line 1
    iget-boolean p1, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->scaleOnDisappear:Z

    .line 3
    if-nez p1, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_6
    iget-boolean p1, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->growing:Z

    .line 9
    if-eqz p1, :cond_13

    .line 11
    iget p1, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->outgoingStartScale:F

    .line 13
    iget v0, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->outgoingEndScale:F

    .line 15
    invoke-static {p2, p1, v0}, Lcom/google/android/material/transition/platform/ScaleProvider;->createScaleAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_13
    iget p1, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->incomingEndScale:F

    .line 22
    iget v0, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->incomingStartScale:F

    .line 24
    invoke-static {p2, p1, v0}, Lcom/google/android/material/transition/platform/ScaleProvider;->createScaleAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public getIncomingEndScale()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->incomingEndScale:F

    .line 3
    return v0
.end method

.method public getIncomingStartScale()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->incomingStartScale:F

    .line 3
    return v0
.end method

.method public getOutgoingEndScale()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->outgoingEndScale:F

    .line 3
    return v0
.end method

.method public getOutgoingStartScale()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->outgoingStartScale:F

    .line 3
    return v0
.end method

.method public isGrowing()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->growing:Z

    .line 3
    return v0
.end method

.method public isScaleOnDisappear()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->scaleOnDisappear:Z

    .line 3
    return v0
.end method

.method public setGrowing(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->growing:Z

    .line 3
    return-void
.end method

.method public setIncomingEndScale(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->incomingEndScale:F

    .line 3
    return-void
.end method

.method public setIncomingStartScale(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->incomingStartScale:F

    .line 3
    return-void
.end method

.method public setOutgoingEndScale(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->outgoingEndScale:F

    .line 3
    return-void
.end method

.method public setOutgoingStartScale(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->outgoingStartScale:F

    .line 3
    return-void
.end method

.method public setScaleOnDisappear(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/ScaleProvider;->scaleOnDisappear:Z

    .line 3
    return-void
.end method
