.class Lcom/google/android/material/appbar/ViewUtilsLollipop;
.super Ljava/lang/Object;
.source "ViewUtilsLollipop.java"


# static fields
.field private static final STATE_LIST_ANIM_ATTRS:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, 0x1010448

    .line 8
    aput v2, v0, v1

    .line 10
    sput-object v0, Lcom/google/android/material/appbar/ViewUtilsLollipop;->STATE_LIST_ANIM_ATTRS:[I

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setBoundsViewOutlineProvider(Landroid/view/View;)V
    .registers 2

    .line 1
    sget-object v0, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 6
    return-void
.end method

.method public static setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/google/android/material/R$integer;->app_bar_elevation_anim_duration:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 10
    move-result v0

    .line 11
    new-instance v1, Landroid/animation/StateListAnimator;

    .line 13
    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    .line 16
    const/4 v2, 0x3

    .line 17
    new-array v2, v2, [I

    .line 19
    const/4 v3, 0x0

    .line 20
    const v4, 0x101000e

    .line 23
    aput v4, v2, v3

    .line 25
    sget v5, Lcom/google/android/material/R$attr;->state_liftable:I

    .line 27
    const/4 v6, 0x1

    .line 28
    aput v5, v2, v6

    .line 30
    sget v5, Lcom/google/android/material/R$attr;->state_lifted:I

    .line 32
    neg-int v5, v5

    .line 33
    const/4 v7, 0x2

    .line 34
    aput v5, v2, v7

    .line 36
    new-array v5, v6, [F

    .line 38
    const/4 v7, 0x0

    .line 39
    aput v7, v5, v3

    .line 41
    const-string v8, "elevation"

    .line 43
    invoke-static {p0, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 46
    move-result-object v5

    .line 47
    int-to-long v9, v0

    .line 48
    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v1, v2, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 55
    new-array v0, v6, [I

    .line 57
    aput v4, v0, v3

    .line 59
    new-array v2, v6, [F

    .line 61
    aput p1, v2, v3

    .line 63
    invoke-static {p0, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v1, v0, p1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 74
    new-array p1, v3, [I

    .line 76
    new-array v0, v6, [F

    .line 78
    aput v7, v0, v3

    .line 80
    invoke-static {p0, v8, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 83
    move-result-object v0

    .line 84
    const-wide/16 v2, 0x0

    .line 86
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v1, p1, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 93
    invoke-virtual {p0, v1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 96
    return-void
.end method

.method public static setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V
    .registers 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v6

    .line 5
    sget-object v2, Lcom/google/android/material/appbar/ViewUtilsLollipop;->STATE_LIST_ANIM_ATTRS:[I

    .line 7
    const/4 v7, 0x0

    .line 8
    new-array v5, v7, [I

    .line 10
    move-object v0, v6

    .line 11
    move-object v1, p1

    .line 12
    move v3, p2

    .line 13
    move v4, p3

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 17
    move-result-object p1

    .line 18
    :try_start_11
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_22

    .line 24
    invoke-virtual {p1, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 27
    move-result p2

    .line 28
    invoke-static {v6, p2}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p0, p2}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_26

    .line 35
    :cond_22
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    return-void

    .line 39
    :catchall_26
    move-exception p0

    .line 40
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    throw p0
.end method
