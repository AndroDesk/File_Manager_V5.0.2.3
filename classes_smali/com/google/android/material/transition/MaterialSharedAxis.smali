.class public final Lcom/google/android/material/transition/MaterialSharedAxis;
.super Lcom/google/android/material/transition/MaterialVisibility;
.source "MaterialSharedAxis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/MaterialSharedAxis$Axis;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/MaterialVisibility<",
        "Lcom/google/android/material/transition/VisibilityAnimatorProvider;",
        ">;"
    }
.end annotation


# static fields
.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field public static final Z:I = 0x2


# instance fields
.field private final axis:I

.field private final forward:Z


# direct methods
.method public constructor <init>(IZ)V
    .registers 5

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/material/transition/MaterialSharedAxis;->createPrimaryAnimatorProvider(IZ)Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/material/transition/MaterialSharedAxis;->createSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/MaterialVisibility;-><init>(Lcom/google/android/material/transition/VisibilityAnimatorProvider;Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V

    .line 12
    iput p1, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->axis:I

    .line 14
    iput-boolean p2, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->forward:Z

    .line 16
    return-void
.end method

.method private static createPrimaryAnimatorProvider(IZ)Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .registers 3

    .line 1
    if-eqz p0, :cond_27

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1a

    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p0, v0, :cond_e

    .line 9
    new-instance p0, Lcom/google/android/material/transition/ScaleProvider;

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/ScaleProvider;-><init>(Z)V

    .line 14
    return-object p0

    .line 15
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    const-string v0, "Invalid axis: "

    .line 19
    invoke-static {v0, p0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p1

    .line 27
    :cond_1a
    new-instance p0, Lcom/google/android/material/transition/SlideDistanceProvider;

    .line 29
    if-eqz p1, :cond_21

    .line 31
    const/16 p1, 0x50

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    const/16 p1, 0x30

    .line 36
    :goto_23
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/SlideDistanceProvider;-><init>(I)V

    .line 39
    return-object p0

    .line 40
    :cond_27
    new-instance p0, Lcom/google/android/material/transition/SlideDistanceProvider;

    .line 42
    if-eqz p1, :cond_2f

    .line 44
    const p1, 0x800005

    .line 47
    goto :goto_32

    .line 48
    :cond_2f
    const p1, 0x800003

    .line 51
    :goto_32
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/SlideDistanceProvider;-><init>(I)V

    .line 54
    return-object p0
.end method

.method private static createSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/material/transition/FadeThroughProvider;

    .line 3
    invoke-direct {v0}, Lcom/google/android/material/transition/FadeThroughProvider;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method public getAxis()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->axis:I

    .line 3
    return v0
.end method

.method public bridge synthetic getPrimaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/transition/MaterialVisibility;->getPrimaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/transition/MaterialVisibility;->getSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isForward()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->forward:Z

    .line 3
    return v0
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
