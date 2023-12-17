.class public abstract Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$Duration;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$ContentViewCallback;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$AnimationMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0xfa

.field public static final ANIMATION_FADE_DURATION:I = 0xb4

.field private static final ANIMATION_FADE_IN_DURATION:I = 0x96

.field private static final ANIMATION_FADE_OUT_DURATION:I = 0x4b

.field public static final ANIMATION_MODE_FADE:I = 0x1

.field public static final ANIMATION_MODE_SLIDE:I = 0x0

.field private static final ANIMATION_SCALE_FROM_VALUE:F = 0.8f

.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field public static final MSG_DISMISS:I = 0x1

.field public static final MSG_SHOW:I

.field private static final SNACKBAR_STYLE_ATTR:[I

.field private static final TAG:Ljava/lang/String;

.field private static final USE_OFFSET_API:Z

.field public static final handler:Landroid/os/Handler;


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private anchorView:Landroid/view/View;

.field private behavior:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

.field private final bottomMarginGestureInsetRunnable:Ljava/lang/Runnable;

.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field private final contentViewCallback:Lcom/google/android/material/snackbar/ContentViewCallback;

.field private final context:Landroid/content/Context;

.field private duration:I

.field private extraBottomMarginAnchorView:I

.field private extraBottomMarginGestureInset:I

.field private extraBottomMarginWindowInset:I

.field private extraLeftMarginWindowInset:I

.field private extraRightMarginWindowInset:I

.field private gestureInsetBottomIgnored:Z

.field public managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

.field private originalMargins:Landroid/graphics/Rect;

.field private final targetParent:Landroid/view/ViewGroup;

.field public final view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->USE_OFFSET_API:Z

    .line 4
    const/4 v1, 0x1

    .line 5
    new-array v1, v1, [I

    .line 7
    sget v2, Lcom/google/android/material/R$attr;->snackbarStyle:I

    .line 9
    aput v2, v1, v0

    .line 11
    sput-object v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->SNACKBAR_STYLE_ATTR:[I

    .line 13
    const-string v0, "BaseTransientBottomBar"

    .line 15
    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Landroid/os/Handler;

    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;

    .line 25
    invoke-direct {v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;-><init>()V

    .line 28
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 31
    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/ContentViewCallback;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;

    .line 6
    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 9
    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->bottomMarginGestureInsetRunnable:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;

    .line 13
    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 16
    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    .line 18
    if-eqz p1, :cond_96

    .line 20
    if-eqz p2, :cond_8e

    .line 22
    if-eqz p3, :cond_86

    .line 24
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    .line 26
    iput-object p3, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->contentViewCallback:Lcom/google/android/material/snackbar/ContentViewCallback;

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    move-result-object p3

    .line 32
    iput-object p3, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    .line 34
    invoke-static {p3}, Lcom/google/android/material/internal/ThemeEnforcement;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 37
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getSnackbarBaseLayoutResId()I

    .line 44
    move-result v1

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 52
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 54
    instance-of v0, p2, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 56
    if-eqz v0, :cond_43

    .line 58
    move-object v0, p2

    .line 59
    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 61
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getActionTextColorAlpha()F

    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->updateActionTextColorAlphaIfNeeded(F)V

    .line 68
    :cond_43
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 74
    move-result-object p2

    .line 75
    instance-of v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 77
    if-eqz v0, :cond_5f

    .line 79
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    .line 83
    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 85
    iget v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 87
    iget v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 89
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 91
    invoke-direct {v0, v1, v2, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 94
    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->originalMargins:Landroid/graphics/Rect;

    .line 96
    :cond_5f
    sget-object p2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 98
    const/4 p2, 0x1

    .line 99
    invoke-static {p1, p2}, Lm0/g0$g;->f(Landroid/view/View;I)V

    .line 102
    invoke-static {p1, p2}, Lm0/g0$d;->s(Landroid/view/View;I)V

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 108
    new-instance p2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;

    .line 110
    invoke-direct {p2, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 113
    invoke-static {p1, p2}, Lm0/g0$i;->u(Landroid/view/View;Lm0/v;)V

    .line 116
    new-instance p2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;

    .line 118
    invoke-direct {p2, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 121
    invoke-static {p1, p2}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    .line 124
    const-string p1, "accessibility"

    .line 126
    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 132
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 134
    return-void

    .line 135
    :cond_86
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 137
    const-string p2, "Transient bottom bar must have non-null callback"

    .line 139
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    throw p1

    .line 143
    :cond_8e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 145
    const-string p2, "Transient bottom bar must have non-null content"

    .line 147
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 150
    throw p1

    .line 151
    :cond_96
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 153
    const-string p2, "Transient bottom bar must have non-null parent"

    .line 155
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 158
    throw p1
.end method

.method public static synthetic access$000(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getScreenHeight()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1100(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->startFadeInAnimation()V

    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->startSlideInAnimation()V

    .line 4
    return-void
.end method

.method public static synthetic access$1300(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Lcom/google/android/material/snackbar/ContentViewCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->contentViewCallback:Lcom/google/android/material/snackbar/ContentViewCallback;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1400()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->USE_OFFSET_API:Z

    .line 3
    return v0
.end method

.method public static synthetic access$200(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getViewAbsoluteBottom()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$300(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraBottomMarginGestureInset:I

    .line 3
    return p0
.end method

.method public static synthetic access$302(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraBottomMarginGestureInset:I

    .line 3
    return p1
.end method

.method public static synthetic access$400()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->TAG:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic access$502(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraBottomMarginWindowInset:I

    .line 3
    return p1
.end method

.method public static synthetic access$602(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraLeftMarginWindowInset:I

    .line 3
    return p1
.end method

.method public static synthetic access$702(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraRightMarginWindowInset:I

    .line 3
    return p1
.end method

.method public static synthetic access$800(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->updateMargins()V

    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->showViewImpl()V

    .line 4
    return-void
.end method

.method private animateViewOut(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getAnimationMode()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_d

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->startFadeOutAnimation(I)V

    .line 13
    goto :goto_10

    .line 14
    :cond_d
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->startSlideOutAnimation(I)V

    .line 17
    :goto_10
    return-void
.end method

.method private calculateBottomMarginForAnchorView()I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->anchorView:Landroid/view/View;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    const/4 v1, 0x2

    .line 8
    new-array v2, v1, [I

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 13
    const/4 v0, 0x1

    .line 14
    aget v2, v2, v0

    .line 16
    new-array v1, v1, [I

    .line 18
    iget-object v3, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    .line 20
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 23
    aget v0, v1, v0

    .line 25
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 30
    move-result v1

    .line 31
    add-int/2addr v1, v0

    .line 32
    sub-int/2addr v1, v2

    .line 33
    return v1
.end method

.method private varargs getAlphaAnimator([F)Landroid/animation/ValueAnimator;
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 7
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$12;

    .line 12
    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$12;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 15
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 18
    return-object p1
.end method

.method private varargs getScaleAnimator([F)Landroid/animation/ValueAnimator;
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 7
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;

    .line 12
    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 15
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 18
    return-object p1
.end method

.method private getScreenHeight()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    .line 3
    const-string v1, "window"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/WindowManager;

    .line 11
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 13
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 16
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 23
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 25
    return v0
.end method

.method private getTranslationYBottom()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    move-result-object v1

    .line 13
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    if-eqz v2, :cond_15

    .line 17
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 19
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 21
    add-int/2addr v0, v1

    .line 22
    :cond_15
    return v0
.end method

.method private getViewAbsoluteBottom()I
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 4
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 6
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 9
    const/4 v1, 0x1

    .line 10
    aget v0, v0, v1

    .line 12
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 17
    move-result v1

    .line 18
    add-int/2addr v1, v0

    .line 19
    return v1
.end method

.method private isSwipeDismissable()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 9
    if-eqz v1, :cond_14

    .line 11
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 13
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 15
    instance-of v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 17
    if-eqz v0, :cond_14

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    :goto_15
    return v0
.end method

.method private setUpBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->behavior:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getNewBehavior()Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 8
    move-result-object v0

    .line 9
    :cond_8
    instance-of v1, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    .line 11
    if-eqz v1, :cond_12

    .line 13
    move-object v1, v0

    .line 14
    check-cast v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    .line 16
    invoke-static {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->access$1000(Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 19
    :cond_12
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;

    .line 21
    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->setListener(Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;)V

    .line 27
    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;)V

    .line 30
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->anchorView:Landroid/view/View;

    .line 32
    if-nez v0, :cond_25

    .line 34
    const/16 v0, 0x50

    .line 36
    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->g:I

    .line 38
    :cond_25
    return-void
.end method

.method private shouldUpdateGestureInset()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraBottomMarginGestureInset:I

    .line 3
    if-lez v0, :cond_10

    .line 5
    iget-boolean v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->gestureInsetBottomIgnored:Z

    .line 7
    if-nez v0, :cond_10

    .line 9
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->isSwipeDismissable()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method

.method private showViewImpl()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->shouldAnimate()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->animateViewIn()V

    .line 10
    goto :goto_13

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->onViewShown()V

    .line 20
    :goto_13
    return-void
.end method

.method private startFadeInAnimation()V
    .registers 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_34

    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getAlphaAnimator([F)Landroid/animation/ValueAnimator;

    .line 10
    move-result-object v1

    .line 11
    new-array v2, v0, [F

    .line 13
    fill-array-data v2, :array_3c

    .line 16
    invoke-direct {p0, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getScaleAnimator([F)Landroid/animation/ValueAnimator;

    .line 19
    move-result-object v2

    .line 20
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 22
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 25
    new-array v0, v0, [Landroid/animation/Animator;

    .line 27
    const/4 v4, 0x0

    .line 28
    aput-object v1, v0, v4

    .line 30
    const/4 v1, 0x1

    .line 31
    aput-object v2, v0, v1

    .line 33
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 36
    const-wide/16 v0, 0x96

    .line 38
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 41
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;

    .line 43
    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 46
    invoke-virtual {v3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 49
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 52
    return-void

    .line 53
    :array_34
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    .line 61
    :array_3c
    .array-data 4
        0x3f4ccccd  # 0.8f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private startFadeOutAnimation(I)V
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_1c

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getAlphaAnimator([F)Landroid/animation/ValueAnimator;

    .line 10
    move-result-object v0

    .line 11
    const-wide/16 v1, 0x4b

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;

    .line 18
    invoke-direct {v1, p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    .line 21
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 24
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 27
    return-void

    .line 28
    nop

    .line 29
    :array_1c
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private startSlideInAnimation()V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getTranslationYBottom()I

    .line 4
    move-result v0

    .line 5
    sget-boolean v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->USE_OFFSET_API:Z

    .line 7
    if-eqz v1, :cond_10

    .line 9
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 11
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 13
    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 16
    goto :goto_16

    .line 17
    :cond_10
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 19
    int-to-float v2, v0

    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 23
    :goto_16
    new-instance v1, Landroid/animation/ValueAnimator;

    .line 25
    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 28
    const/4 v2, 0x2

    .line 29
    new-array v2, v2, [I

    .line 31
    const/4 v3, 0x0

    .line 32
    aput v0, v2, v3

    .line 34
    const/4 v4, 0x1

    .line 35
    aput v3, v2, v4

    .line 37
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 40
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 42
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 45
    const-wide/16 v2, 0xfa

    .line 47
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 50
    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$14;

    .line 52
    invoke-direct {v2, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$14;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 55
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 58
    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$15;

    .line 60
    invoke-direct {v2, p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$15;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    .line 63
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 66
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 69
    return-void
.end method

.method private startSlideOutAnimation(I)V
    .registers 6

    .line 1
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 3
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [I

    .line 9
    const/4 v2, 0x0

    .line 10
    aput v2, v1, v2

    .line 12
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getTranslationYBottom()I

    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x1

    .line 17
    aput v2, v1, v3

    .line 19
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 22
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 24
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 27
    const-wide/16 v1, 0xfa

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 32
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$16;

    .line 34
    invoke-direct {v1, p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$16;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    .line 37
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 40
    new-instance p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;

    .line 42
    invoke-direct {p1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 45
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 48
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 51
    return-void
.end method

.method private updateMargins()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    if-eqz v1, :cond_4d

    .line 11
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->originalMargins:Landroid/graphics/Rect;

    .line 13
    if-nez v1, :cond_f

    .line 15
    goto :goto_4d

    .line 16
    :cond_f
    iget-object v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->anchorView:Landroid/view/View;

    .line 18
    if-eqz v2, :cond_16

    .line 20
    iget v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraBottomMarginAnchorView:I

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    iget v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraBottomMarginWindowInset:I

    .line 25
    :goto_18
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 27
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 29
    add-int/2addr v3, v2

    .line 30
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 32
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 34
    iget v3, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraLeftMarginWindowInset:I

    .line 36
    add-int/2addr v2, v3

    .line 37
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 39
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 41
    iget v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraRightMarginWindowInset:I

    .line 43
    add-int/2addr v1, v2

    .line 44
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 46
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 53
    const/16 v1, 0x1d

    .line 55
    if-lt v0, v1, :cond_4c

    .line 57
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->shouldUpdateGestureInset()Z

    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_4c

    .line 63
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 65
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->bottomMarginGestureInsetRunnable:Ljava/lang/Runnable;

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 70
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 72
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->bottomMarginGestureInsetRunnable:Ljava/lang/Runnable;

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 77
    :cond_4c
    return-void

    .line 78
    :cond_4d
    :goto_4d
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->TAG:Ljava/lang/String;

    .line 80
    const-string v1, "Unable to update margins because layout params are not MarginLayoutParams"

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback<",
            "TB;>;)TB;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-object p0

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    .line 6
    if-nez v0, :cond_e

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-object p0
.end method

.method public animateViewIn()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 3
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$9;

    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$9;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method public dismiss()V
    .registers 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->dispatchDismiss(I)V

    .line 5
    return-void
.end method

.method public dispatchDismiss(I)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->dismiss(Lcom/google/android/material/snackbar/SnackbarManager$Callback;I)V

    .line 10
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->anchorView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getAnimationMode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getAnimationMode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getBehavior()Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->behavior:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    .line 3
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public getDuration()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->duration:I

    .line 3
    return v0
.end method

.method public getNewBehavior()Lcom/google/android/material/behavior/SwipeDismissBehavior;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/behavior/SwipeDismissBehavior<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    .line 3
    invoke-direct {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;-><init>()V

    .line 6
    return-object v0
.end method

.method public getSnackbarBaseLayoutResId()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->hasSnackbarStyleAttr()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    sget v0, Lcom/google/android/material/R$layout;->mtrl_layout_snackbar:I

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    sget v0, Lcom/google/android/material/R$layout;->design_layout_snackbar:I

    .line 12
    :goto_b
    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 3
    return-object v0
.end method

.method public hasSnackbarStyleAttr()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    .line 3
    sget-object v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->SNACKBAR_STYLE_ATTR:[I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, -0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 14
    move-result v3

    .line 15
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    if-eq v3, v2, :cond_14

    .line 20
    const/4 v1, 0x1

    .line 21
    :cond_14
    return v1
.end method

.method public final hideView(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->shouldAnimate()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_12

    .line 7
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_12

    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->animateViewOut(I)V

    .line 18
    goto :goto_15

    .line 19
    :cond_12
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->onViewHidden(I)V

    .line 22
    :goto_15
    return-void
.end method

.method public isGestureInsetBottomIgnored()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->gestureInsetBottomIgnored:Z

    .line 3
    return v0
.end method

.method public isShown()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrent(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isShownOrQueued()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentOrNext(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public onViewHidden(I)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/SnackbarManager;->onDismissed(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    .line 12
    if-eqz v0, :cond_23

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    move-result v0

    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 20
    :goto_13
    if-ltz v0, :cond_23

    .line 22
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    .line 24
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;

    .line 30
    invoke-virtual {v1, p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;->onDismissed(Ljava/lang/Object;I)V

    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 35
    goto :goto_13

    .line 36
    :cond_23
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 41
    move-result-object p1

    .line 42
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 44
    if-eqz v0, :cond_34

    .line 46
    check-cast p1, Landroid/view/ViewGroup;

    .line 48
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 53
    :cond_34
    return-void
.end method

.method public onViewShown()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/SnackbarManager;->onShown(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    .line 12
    if-eqz v0, :cond_23

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    move-result v0

    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 20
    :goto_13
    if-ltz v0, :cond_23

    .line 22
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    .line 24
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;

    .line 30
    invoke-virtual {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;->onShown(Ljava/lang/Object;)V

    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 35
    goto :goto_13

    .line 36
    :cond_23
    return-void
.end method

.method public removeCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback<",
            "TB;>;)TB;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-object p0

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-object p0

    .line 9
    :cond_8
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12
    return-object p0
.end method

.method public setAnchorView(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->anchorView:Landroid/view/View;

    if-eqz v0, :cond_b

    return-object p0

    .line 3
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to find anchor view with id: "

    .line 4
    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAnchorView(Landroid/view/View;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->anchorView:Landroid/view/View;

    return-object p0
.end method

.method public setAnimationMode(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setAnimationMode(I)V

    .line 6
    return-object p0
.end method

.method public setBehavior(Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->behavior:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    .line 3
    return-object p0
.end method

.method public setDuration(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->duration:I

    .line 3
    return-object p0
.end method

.method public setGestureInsetBottomIgnored(Z)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->gestureInsetBottomIgnored:Z

    .line 3
    return-object p0
.end method

.method public shouldAnimate()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_10

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_10

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v1, 0x0

    .line 18
    :goto_11
    return v1
.end method

.method public show()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getDuration()I

    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/SnackbarManager;->show(ILcom/google/android/material/snackbar/SnackbarManager$Callback;)V

    .line 14
    return-void
.end method

.method public final showView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 3
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;

    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnAttachStateChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_37

    .line 19
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 27
    if-eqz v1, :cond_21

    .line 29
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 31
    invoke-direct {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->setUpBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;)V

    .line 34
    :cond_21
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->calculateBottomMarginForAnchorView()I

    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraBottomMarginAnchorView:I

    .line 40
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->updateMargins()V

    .line 43
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 45
    const/4 v1, 0x4

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    .line 51
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 56
    :cond_37
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 58
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 60
    invoke-static {v0}, Lm0/g0$g;->c(Landroid/view/View;)Z

    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_45

    .line 66
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->showViewImpl()V

    .line 69
    return-void

    .line 70
    :cond_45
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 72
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;

    .line 74
    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnLayoutChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;)V

    .line 80
    return-void
.end method
