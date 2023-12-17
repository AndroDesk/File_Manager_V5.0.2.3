.class public final Lcom/google/android/material/transition/MaterialFade;
.super Lcom/google/android/material/transition/MaterialVisibility;
.source "MaterialFade.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/MaterialVisibility<",
        "Lcom/google/android/material/transition/FadeProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FADE_END_THRESHOLD_ENTER:F = 0.3f

.field private static final DEFAULT_START_SCALE:F = 0.8f


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/material/transition/MaterialFade;->createPrimaryAnimatorProvider()Lcom/google/android/material/transition/FadeProvider;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/material/transition/MaterialFade;->createSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/MaterialVisibility;-><init>(Lcom/google/android/material/transition/VisibilityAnimatorProvider;Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V

    .line 12
    return-void
.end method

.method private static createPrimaryAnimatorProvider()Lcom/google/android/material/transition/FadeProvider;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/material/transition/FadeProvider;

    .line 3
    invoke-direct {v0}, Lcom/google/android/material/transition/FadeProvider;-><init>()V

    .line 6
    const v1, 0x3e99999a  # 0.3f

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/FadeProvider;->setIncomingEndThreshold(F)V

    .line 12
    return-object v0
.end method

.method private static createSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/material/transition/ScaleProvider;

    .line 3
    invoke-direct {v0}, Lcom/google/android/material/transition/ScaleProvider;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/ScaleProvider;->setScaleOnDisappear(Z)V

    .line 10
    const v1, 0x3f4ccccd  # 0.8f

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/ScaleProvider;->setIncomingStartScale(F)V

    .line 16
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/transition/MaterialVisibility;->getSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Lf1/t;Lf1/t;)Landroid/animation/Animator;
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/MaterialVisibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Lf1/t;Lf1/t;)Landroid/animation/Animator;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Lf1/t;Lf1/t;)Landroid/animation/Animator;
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/MaterialVisibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Lf1/t;Lf1/t;)Landroid/animation/Animator;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic setSecondaryAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/transition/MaterialVisibility;->setSecondaryAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V

    .line 4
    return-void
.end method
