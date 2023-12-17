.class Lcom/android/fileexplorer/view/aosp/appbar/ViewUtilsLollipop;
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
    sput-object v0, Lcom/android/fileexplorer/view/aosp/appbar/ViewUtilsLollipop;->STATE_LIST_ANIM_ATTRS:[I

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
    .registers 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0b0008

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 11
    move-result v0

    .line 12
    new-instance v1, Landroid/animation/StateListAnimator;

    .line 14
    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    .line 17
    const/4 v2, 0x3

    .line 18
    new-array v2, v2, [I

    .line 20
    fill-array-data v2, :array_58

    .line 23
    const/4 v3, 0x1

    .line 24
    new-array v4, v3, [F

    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    aput v6, v4, v5

    .line 30
    const-string v7, "elevation"

    .line 32
    invoke-static {p0, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 35
    move-result-object v4

    .line 36
    int-to-long v8, v0

    .line 37
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1, v2, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 44
    new-array v0, v3, [I

    .line 46
    const v2, 0x101000e

    .line 49
    aput v2, v0, v5

    .line 51
    new-array v2, v3, [F

    .line 53
    aput p1, v2, v5

    .line 55
    invoke-static {p0, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v1, v0, p1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 66
    new-array p1, v5, [I

    .line 68
    new-array v0, v3, [F

    .line 70
    aput v6, v0, v5

    .line 72
    invoke-static {p0, v7, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 75
    move-result-object v0

    .line 76
    const-wide/16 v2, 0x0

    .line 78
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v1, p1, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 85
    invoke-virtual {p0, v1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 88
    return-void

    .line 89
    :array_58
    .array-data 4
        0x101000e
        0x7f0405c0
        -0x7f0405c1
    .end array-data
.end method

.method public static setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/fileexplorer/view/aosp/appbar/ViewUtilsLollipop;->STATE_LIST_ANIM_ATTRS:[I

    .line 7
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 10
    move-result-object p1

    .line 11
    const/4 p2, 0x0

    .line 12
    :try_start_b
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 15
    move-result p3

    .line 16
    if-eqz p3, :cond_1c

    .line 18
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 21
    move-result p2

    .line 22
    invoke-static {v0, p2}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p0, p2}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_20

    .line 29
    :cond_1c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    return-void

    .line 33
    :catchall_20
    move-exception p0

    .line 34
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    throw p0
.end method
