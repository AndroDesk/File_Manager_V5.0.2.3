.class public final Lcom/google/android/material/transition/FadeProvider;
.super Ljava/lang/Object;
.source "FadeProvider.java"

# interfaces
.implements Lcom/google/android/material/transition/VisibilityAnimatorProvider;


# instance fields
.field private incomingEndThreshold:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 v0, 0x3f800000  # 1.0f

    .line 6
    iput v0, p0, Lcom/google/android/material/transition/FadeProvider;->incomingEndThreshold:F

    .line 8
    return-void
.end method

.method private static createFadeAnimator(Landroid/view/View;FFFF)Landroid/animation/Animator;
    .registers 13

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_1a

    .line 7
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 10
    move-result-object v0

    .line 11
    new-instance v7, Lcom/google/android/material/transition/FadeProvider$1;

    .line 13
    move-object v1, v7

    .line 14
    move-object v2, p0

    .line 15
    move v3, p1

    .line 16
    move v4, p2

    .line 17
    move v5, p3

    .line 18
    move v6, p4

    .line 19
    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/transition/FadeProvider$1;-><init>(Landroid/view/View;FFFF)V

    .line 22
    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 25
    return-object v0

    .line 26
    nop

    .line 27
    :array_1a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method public createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .registers 5

    .line 1
    iget p1, p0, Lcom/google/android/material/transition/FadeProvider;->incomingEndThreshold:F

    .line 3
    const/4 v0, 0x0

    .line 4
    const/high16 v1, 0x3f800000  # 1.0f

    .line 6
    invoke-static {p2, v0, v1, v0, p1}, Lcom/google/android/material/transition/FadeProvider;->createFadeAnimator(Landroid/view/View;FFFF)Landroid/animation/Animator;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .registers 4

    .line 1
    const/high16 p1, 0x3f800000  # 1.0f

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p2, p1, v0, v0, p1}, Lcom/google/android/material/transition/FadeProvider;->createFadeAnimator(Landroid/view/View;FFFF)Landroid/animation/Animator;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public getIncomingEndThreshold()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/FadeProvider;->incomingEndThreshold:F

    .line 3
    return v0
.end method

.method public setIncomingEndThreshold(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/FadeProvider;->incomingEndThreshold:F

    .line 3
    return-void
.end method
