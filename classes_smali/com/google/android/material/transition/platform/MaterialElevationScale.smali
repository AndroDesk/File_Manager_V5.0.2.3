.class public final Lcom/google/android/material/transition/platform/MaterialElevationScale;
.super Lcom/google/android/material/transition/platform/MaterialVisibility;
.source "MaterialElevationScale.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/platform/MaterialVisibility<",
        "Lcom/google/android/material/transition/platform/ScaleProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SCALE:F = 0.85f


# instance fields
.field private final growing:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/google/android/material/transition/platform/MaterialElevationScale;->createPrimaryAnimatorProvider(Z)Lcom/google/android/material/transition/platform/ScaleProvider;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/material/transition/platform/MaterialElevationScale;->createSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/platform/MaterialVisibility;-><init>(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    .line 12
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialElevationScale;->growing:Z

    .line 14
    return-void
.end method

.method private static createPrimaryAnimatorProvider(Z)Lcom/google/android/material/transition/platform/ScaleProvider;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/material/transition/platform/ScaleProvider;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/material/transition/platform/ScaleProvider;-><init>(Z)V

    .line 6
    const p0, 0x3f59999a  # 0.85f

    .line 9
    invoke-virtual {v0, p0}, Lcom/google/android/material/transition/platform/ScaleProvider;->setOutgoingEndScale(F)V

    .line 12
    invoke-virtual {v0, p0}, Lcom/google/android/material/transition/platform/ScaleProvider;->setIncomingStartScale(F)V

    .line 15
    return-object v0
.end method

.method private static createSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/material/transition/platform/FadeProvider;

    .line 3
    invoke-direct {v0}, Lcom/google/android/material/transition/platform/FadeProvider;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/transition/platform/MaterialVisibility;->getSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isGrowing()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialElevationScale;->growing:Z

    .line 3
    return v0
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/platform/MaterialVisibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/platform/MaterialVisibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic setSecondaryAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/transition/platform/MaterialVisibility;->setSecondaryAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    .line 4
    return-void
.end method
