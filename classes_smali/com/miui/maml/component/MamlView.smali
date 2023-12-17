.class public Lcom/miui/maml/component/MamlView;
.super Landroid/widget/FrameLayout;
.source "MamlView.java"

# interfaces
.implements Lcom/miui/maml/RendererController$IRenderable;
.implements Lcom/miui/maml/util/MamlViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/component/MamlView$OnExternCommandListener;,
        Lcom/miui/maml/component/MamlView$InnerView;
    }
.end annotation


# static fields
.field private static final BLUR_VAR_NAME:Ljava/lang/String; = "__blur_ratio"

.field public static final MODE_ASSETS_FOLDER:I = 0x2

.field public static final MODE_FOLDER:I = 0x3

.field public static final MODE_ZIP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MamlView"

.field private static final VERSION:Ljava/lang/String; = "1.0.0"

.field private static final VERSION_CODE:I = 0x1


# instance fields
.field private mAutoFinishRoot:Z

.field private mAutoRemoveCache:Z

.field private mCanvasParamsChanged:Z

.field private final mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

.field private mExternCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/component/MamlView$OnExternCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mFinished:Z

.field private mHasDelay:Z

.field private mLastBlurRatio:I

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

.field public mNeedDisallowInterceptTouchEvent:Z

.field private mPivotX:I

.field private mPivotY:I

.field public mRoot:Lcom/miui/maml/ScreenElementRoot;

.field private mScale:F

.field private mView:Lcom/miui/maml/component/MamlView$InnerView;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    .line 3
    new-instance v1, Lcom/miui/maml/component/MamlView$1;

    invoke-direct {v1, p0}, Lcom/miui/maml/component/MamlView$1;-><init>(Lcom/miui/maml/component/MamlView;)V

    iput-object v1, p0, Lcom/miui/maml/component/MamlView;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/miui/maml/R$styleable;->MamlView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 5
    sget v1, Lcom/miui/maml/R$styleable;->MamlView_path:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    sget v2, Lcom/miui/maml/R$styleable;->MamlView_innerPath:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    sget v3, Lcom/miui/maml/R$styleable;->MamlView_resMode:I

    const/4 v4, 0x2

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 8
    sget v4, Lcom/miui/maml/R$styleable;->MamlView_autoRemoveCache:I

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 9
    sget v5, Lcom/miui/maml/R$styleable;->MamlView_touchable:I

    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 10
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/miui/maml/component/MamlView;->getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0, v4}, Lcom/miui/maml/component/MamlView;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Z)V

    .line 11
    invoke-virtual {p0, p2}, Lcom/miui/maml/component/MamlView;->setTouchable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 5

    const-wide/16 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;J)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    .line 21
    iput-boolean p3, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    .line 22
    new-instance p3, Lcom/miui/maml/component/MamlView$1;

    invoke-direct {p3, p0}, Lcom/miui/maml/component/MamlView$1;-><init>(Lcom/miui/maml/component/MamlView;)V

    iput-object p3, p0, Lcom/miui/maml/component/MamlView;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/component/MamlView;->initMamlview(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 7

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    .line 17
    new-instance v0, Lcom/miui/maml/component/MamlView$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/component/MamlView$1;-><init>(Lcom/miui/maml/component/MamlView;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/component/MamlView;->getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;

    move-result-object p2

    invoke-direct {p0, p1, p2, p5}, Lcom/miui/maml/component/MamlView;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/component/MamlView;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/miui/maml/component/MamlView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/component/MamlView;->mCanvasParamsChanged:Z

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lcom/miui/maml/component/MamlView;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/miui/maml/component/MamlView;->mX:F

    .line 3
    return p0
.end method

.method public static synthetic access$300(Lcom/miui/maml/component/MamlView;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/miui/maml/component/MamlView;->mY:F

    .line 3
    return p0
.end method

.method public static synthetic access$400(Lcom/miui/maml/component/MamlView;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/miui/maml/component/MamlView;->mScale:F

    .line 3
    return p0
.end method

.method public static synthetic access$500(Lcom/miui/maml/component/MamlView;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/miui/maml/component/MamlView;->mPivotX:I

    .line 3
    return p0
.end method

.method public static synthetic access$600(Lcom/miui/maml/component/MamlView;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/miui/maml/component/MamlView;->mPivotY:I

    .line 3
    return p0
.end method

.method private blurBackground()V
    .registers 4

    .line 1
    const-string v0, "__blur_ratio"

    .line 3
    :try_start_2
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 5
    if-eqz v1, :cond_61

    .line 7
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->isMamlBlurWindow()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_61

    .line 13
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 15
    if-eqz v1, :cond_61

    .line 17
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/Variables;->existsDouble(Ljava/lang/String;)Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_61

    .line 29
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 31
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/Variables;->getDouble(Ljava/lang/String;)D

    .line 38
    move-result-wide v0

    .line 39
    double-to-int v0, v0

    .line 40
    const/16 v1, 0x64

    .line 42
    if-gez v0, :cond_2d

    .line 44
    const/4 v0, 0x0

    .line 45
    goto :goto_30

    .line 46
    :cond_2d
    if-le v0, v1, :cond_30

    .line 48
    move v0, v1

    .line 49
    :cond_30
    :goto_30
    iget v1, p0, Lcom/miui/maml/component/MamlView;->mLastBlurRatio:I

    .line 51
    if-eq v0, v1, :cond_61

    .line 53
    iput v0, p0, Lcom/miui/maml/component/MamlView;->mLastBlurRatio:I

    .line 55
    if-nez v0, :cond_41

    .line 57
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 59
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 61
    and-int/lit8 v1, v1, -0x5

    .line 63
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 65
    goto :goto_55

    .line 66
    :cond_41
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 68
    int-to-float v0, v0

    .line 69
    const/high16 v2, 0x3f800000  # 1.0f

    .line 71
    mul-float/2addr v0, v2

    .line 72
    const/high16 v2, 0x42c80000  # 100.0f

    .line 74
    div-float/2addr v0, v2

    .line 75
    invoke-static {v1, v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->WindowManager_LayoutParams_setLayoutParamsBlurRatio(Landroid/view/WindowManager$LayoutParams;F)V

    .line 78
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 80
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 82
    or-int/lit8 v1, v1, 0x4

    .line 84
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 86
    :goto_55
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mWindowManager:Landroid/view/WindowManager;

    .line 88
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 90
    invoke-interface {v0, p0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5c} :catch_5d

    .line 93
    goto :goto_61

    .line 94
    :catch_5d
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    :cond_61
    :goto_61
    return-void
.end method

.method private finish()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mFinished:Z

    .line 3
    if-nez v0, :cond_30

    .line 5
    iget-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    .line 7
    if-eqz v0, :cond_30

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mFinished:Z

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 16
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 18
    if-eqz v1, :cond_30

    .line 20
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->selfFinish()V

    .line 23
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 25
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->detachFromVsync()V

    .line 28
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 30
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/miui/maml/data/Variables;->reset()V

    .line 37
    invoke-direct {p0}, Lcom/miui/maml/component/MamlView;->removeAccessHelperRef()V

    .line 40
    iget-boolean v1, p0, Lcom/miui/maml/component/MamlView;->mAutoRemoveCache:Z

    .line 42
    if-eqz v1, :cond_2e

    .line 44
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->removeRelatedBitmapsRef()V

    .line 47
    :cond_2e
    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 49
    :cond_30
    return-void
.end method

.method private getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p4, v0, :cond_17

    .line 4
    const/4 p3, 0x2

    .line 5
    if-eq p4, p3, :cond_11

    .line 7
    const/4 p1, 0x3

    .line 8
    if-eq p4, p1, :cond_b

    .line 10
    const/4 p1, 0x0

    .line 11
    return-object p1

    .line 12
    :cond_b
    new-instance p1, Lcom/miui/maml/util/FolderResourceLoader;

    .line 14
    invoke-direct {p1, p2}, Lcom/miui/maml/util/FolderResourceLoader;-><init>(Ljava/lang/String;)V

    .line 17
    return-object p1

    .line 18
    :cond_11
    new-instance p3, Lcom/miui/maml/util/AssetsResourceLoader;

    .line 20
    invoke-direct {p3, p1, p2}, Lcom/miui/maml/util/AssetsResourceLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    return-object p3

    .line 24
    :cond_17
    new-instance p1, Lcom/miui/maml/util/ZipResourceLoader;

    .line 26
    invoke-direct {p1, p2, p3}, Lcom/miui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-object p1
.end method

.method private initMamlview(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const-string v0, "window"

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/view/WindowManager;

    .line 22
    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mWindowManager:Landroid/view/WindowManager;

    .line 24
    new-instance v0, Lcom/miui/maml/component/MamlView$InnerView;

    .line 26
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/component/MamlView$InnerView;-><init>(Lcom/miui/maml/component/MamlView;Landroid/content/Context;)V

    .line 29
    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mView:Lcom/miui/maml/component/MamlView$InnerView;

    .line 31
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 33
    const/4 v0, -0x1

    .line 34
    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 37
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mView:Lcom/miui/maml/component/MamlView$InnerView;

    .line 39
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iput-object p2, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 44
    invoke-virtual {p2, p0}, Lcom/miui/maml/ScreenElementRoot;->setViewManager(Lcom/miui/maml/util/MamlViewManager;)V

    .line 47
    iget-object p1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 49
    new-instance p2, Lcom/miui/maml/component/MamlView$2;

    .line 51
    invoke-direct {p2, p0}, Lcom/miui/maml/component/MamlView$2;-><init>(Lcom/miui/maml/component/MamlView;)V

    .line 54
    invoke-virtual {p1, p2}, Lcom/miui/maml/ScreenElementRoot;->setOnHoverChangeListener(Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->init()V

    .line 60
    return-void
.end method

.method private load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Z)V
    .registers 6

    .line 1
    iput-boolean p3, p0, Lcom/miui/maml/component/MamlView;->mAutoRemoveCache:Z

    .line 3
    if-eqz p2, :cond_24

    .line 5
    new-instance p3, Lcom/miui/maml/ResourceManager;

    .line 7
    invoke-direct {p3, p2}, Lcom/miui/maml/ResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;)V

    .line 10
    new-instance p2, Lcom/miui/maml/ScreenElementRoot;

    .line 12
    new-instance v0, Lcom/miui/maml/ScreenContext;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1, p3}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V

    .line 21
    invoke-direct {p2, v0}, Lcom/miui/maml/ScreenElementRoot;-><init>(Lcom/miui/maml/ScreenContext;)V

    .line 24
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->load()Z

    .line 27
    move-result p3

    .line 28
    if-eqz p3, :cond_24

    .line 30
    const/4 p3, 0x1

    .line 31
    invoke-virtual {p2, p3}, Lcom/miui/maml/ScreenElementRoot;->setKeepResource(Z)V

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/component/MamlView;->initMamlview(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V

    .line 37
    :cond_24
    return-void
.end method

.method private removeAccessHelperRef()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->setMamlAccessHelper(Lcom/miui/maml/util/MamlAccessHelper;)V

    .line 7
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-virtual {v0}, Lcom/miui/maml/util/MamlAccessHelper;->removeRoot()V

    .line 14
    :cond_d
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/miui/maml/component/MamlView;->cleanUp(Z)V

    return-void
.end method

.method public cleanUp(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_18

    .line 4
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setKeepResource(Z)V

    .line 5
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfFinish()V

    if-nez p1, :cond_15

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->removeRelatedBitmapsRef()V

    .line 7
    :cond_15
    invoke-static {}, Lcom/miui/maml/util/Utils;->triggerGC()V

    :cond_18
    return-void
.end method

.method public clearBitmapCache()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 11
    invoke-static {}, Lcom/miui/maml/ResourceManager;->clear()V

    .line 14
    :cond_d
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0, p1}, Lr0/a;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public doRender()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mView:Lcom/miui/maml/component/MamlView$InnerView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 6
    invoke-direct {p0}, Lcom/miui/maml/component/MamlView;->blurBackground()V

    .line 9
    return-void
.end method

.method public finalize()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/component/MamlView;->finish()V

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    return-void
.end method

.method public getMamlVersionCode()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getMamlVersionName()Ljava/lang/String;
    .registers 2

    const-string v0, "1.0.0"

    return-object v0
.end method

.method public getSuggestedMinimumHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    .line 8
    move-result v0

    .line 9
    float-to-int v0, v0

    .line 10
    return v0

    .line 11
    :cond_a
    const/4 v0, -0x1

    .line 12
    return v0
.end method

.method public getSuggestedMinimumWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    .line 8
    move-result v0

    .line 9
    float-to-int v0, v0

    .line 10
    return v0

    .line 11
    :cond_a
    const/4 v0, -0x1

    .line 12
    return v0
.end method

.method public getVariableNumber(Ljava/lang/String;)D
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;)D

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_d
    const-wide/16 v0, 0x0

    .line 16
    return-wide v0
.end method

.method public getVariableString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getVariableString(Ljava/lang/String;Lcom/miui/maml/data/Variables;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    return-object p1
.end method

.method public init()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_31

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 16
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 18
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 20
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->setMamlViewOnExternCommandListener(Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;)V

    .line 23
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 25
    invoke-virtual {v0, p0}, Lcom/miui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 28
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 30
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->attachToVsync()V

    .line 33
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 35
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfInit()V

    .line 38
    new-instance v0, Lcom/miui/maml/util/MamlAccessHelper;

    .line 40
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 42
    invoke-direct {v0, v1, p0}, Lcom/miui/maml/util/MamlAccessHelper;-><init>(Lcom/miui/maml/ScreenElementRoot;Landroid/view/View;)V

    .line 45
    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    .line 47
    invoke-static {p0, v0}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    .line 50
    :cond_31
    return-void
.end method

.method public isLoaded()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public onAttachedToWindow()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onResume()V

    .line 7
    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 8
    :cond_7
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 11
    :cond_a
    return-void
.end method

.method public onDestory()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onDestroy()V

    .line 4
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    const-string v0, "MamlView"

    .line 3
    const-string v1, "onDestroy"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-direct {p0}, Lcom/miui/maml/component/MamlView;->finish()V

    .line 11
    invoke-static {}, Lcom/miui/maml/util/Utils;->triggerGC()V

    .line 14
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onPause()V

    .line 7
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onHover(Landroid/view/MotionEvent;)Z

    .line 8
    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    const-string v1, "accessibilityText"

    .line 7
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->getRawAttr(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_d
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 17
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 8

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4
    iget-object p1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    if-eqz p1, :cond_6f

    .line 8
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 11
    move-result-object p1

    .line 12
    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 14
    sub-int/2addr p4, p2

    .line 15
    int-to-float p4, p4

    .line 16
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 21
    move-result v0

    .line 22
    div-float/2addr p4, v0

    .line 23
    float-to-double v0, p4

    .line 24
    const-string p4, "view_width"

    .line 26
    invoke-virtual {p1, p4, v0, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 29
    sub-int/2addr p5, p3

    .line 30
    int-to-float p4, p5

    .line 31
    iget-object p5, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 33
    invoke-virtual {p5}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 36
    move-result p5

    .line 37
    div-float/2addr p4, p5

    .line 38
    float-to-double p4, p4

    .line 39
    const-string v0, "view_height"

    .line 41
    invoke-virtual {p1, v0, p4, p5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 47
    move-result-object p4

    .line 48
    :goto_2f
    instance-of p5, p4, Landroid/view/View;

    .line 50
    if-eqz p5, :cond_4e

    .line 52
    check-cast p4, Landroid/view/View;

    .line 54
    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    .line 57
    move-result p5

    .line 58
    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    .line 61
    move-result v0

    .line 62
    sub-int/2addr p5, v0

    .line 63
    add-int/2addr p2, p5

    .line 64
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    .line 67
    move-result p5

    .line 68
    invoke-virtual {p4}, Landroid/view/View;->getScrollY()I

    .line 71
    move-result v0

    .line 72
    sub-int/2addr p5, v0

    .line 73
    add-int/2addr p3, p5

    .line 74
    invoke-virtual {p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 77
    move-result-object p4

    .line 78
    goto :goto_2f

    .line 79
    :cond_4e
    int-to-float p2, p2

    .line 80
    iget-object p4, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 82
    invoke-virtual {p4}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 85
    move-result p4

    .line 86
    div-float/2addr p2, p4

    .line 87
    float-to-double p4, p2

    .line 88
    const-string p2, "view_x"

    .line 90
    invoke-virtual {p1, p2, p4, p5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 93
    int-to-float p2, p3

    .line 94
    iget-object p3, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 96
    invoke-virtual {p3}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 99
    move-result p3

    .line 100
    div-float/2addr p2, p3

    .line 101
    float-to-double p2, p2

    .line 102
    const-string p4, "view_y"

    .line 104
    invoke-virtual {p1, p4, p2, p3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 107
    iget-object p1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 109
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 112
    :cond_6f
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 7
    move-result v0

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 11
    move-result v1

    .line 12
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 15
    move-result p1

    .line 16
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 19
    move-result p2

    .line 20
    iget-object v2, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_1e

    .line 25
    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    .line 28
    move-result v2

    .line 29
    float-to-int v2, v2

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v2, v3

    .line 32
    :goto_1f
    iget-object v4, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 34
    if-eqz v4, :cond_28

    .line 36
    invoke-virtual {v4}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    .line 39
    move-result v3

    .line 40
    float-to-int v3, v3

    .line 41
    :cond_28
    const/high16 v4, -0x80000000

    .line 43
    if-ne v0, v4, :cond_32

    .line 45
    if-lez v2, :cond_32

    .line 47
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 50
    move-result p1

    .line 51
    :cond_32
    if-ne v1, v4, :cond_3a

    .line 53
    if-lez v3, :cond_3a

    .line 55
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    .line 58
    move-result p2

    .line 59
    :cond_3a
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 62
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 1
    const-string v0, "MamlView"

    .line 3
    const-string v1, "onPause"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfPause()V

    .line 15
    :cond_e
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    const-string v0, "MamlView"

    .line 3
    const-string v1, "onResume"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfResume()V

    .line 15
    :cond_e
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1d

    .line 6
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->needDisallowInterceptTouchEvent()Z

    .line 9
    move-result v0

    .line 10
    iget-boolean v2, p0, Lcom/miui/maml/component/MamlView;->mNeedDisallowInterceptTouchEvent:Z

    .line 12
    if-eq v2, v0, :cond_16

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 21
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mNeedDisallowInterceptTouchEvent:Z

    .line 23
    :cond_16
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 25
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    .line 28
    move-result v0

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move v0, v1

    .line 31
    :goto_1e
    if-nez v0, :cond_26

    .line 33
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_27

    .line 39
    :cond_26
    const/4 v1, 0x1

    .line 40
    :cond_27
    return v1
.end method

.method public putVariableNumber(Ljava/lang/String;D)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0, p2, p3}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V

    .line 12
    :cond_b
    return-void
.end method

.method public putVariableObject(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    :cond_b
    return-void
.end method

.method public putVariableString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0, p2}, Lcom/miui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    .line 12
    :cond_b
    return-void
.end method

.method public removeRelatedBitmapsRef()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 11
    invoke-virtual {v0}, Lcom/miui/maml/ResourceManager;->clearByKeys()V

    .line 14
    :cond_d
    return-void
.end method

.method public requestUpdate()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 8
    :cond_7
    return-void
.end method

.method public sendCommand(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setAutoDarkenWallpaper(Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz p1, :cond_8

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Lcom/miui/maml/ScreenElementRoot;->setAutoDarkenWallpaper(Z)V

    .line 9
    :cond_8
    return-void
.end method

.method public setAutoFinishRoot(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    .line 3
    return-void
.end method

.method public setCacheSize(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 11
    invoke-virtual {v0, p1}, Lcom/miui/maml/ResourceManager;->setCacheSize(I)V

    .line 14
    :cond_d
    return-void
.end method

.method public final setKeepResource(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setKeepResource(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public setOnExternCommandListener(Lcom/miui/maml/component/MamlView$OnExternCommandListener;)V
    .registers 3

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_a

    .line 5
    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 7
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 10
    move-object p1, v0

    .line 11
    :goto_a
    iput-object p1, p0, Lcom/miui/maml/component/MamlView;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 13
    return-void
.end method

.method public setSaveConfigOnlyInPause(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setSaveConfigViaProvider(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public setSaveConfigViaProvider(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setSaveConfigViaProvider(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public setScale(FII)V
    .registers 4

    .line 1
    iput p1, p0, Lcom/miui/maml/component/MamlView;->mScale:F

    .line 3
    iput p2, p0, Lcom/miui/maml/component/MamlView;->mPivotX:I

    .line 5
    iput p3, p0, Lcom/miui/maml/component/MamlView;->mPivotY:I

    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/miui/maml/component/MamlView;->mCanvasParamsChanged:Z

    .line 10
    iget-object p1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 12
    if-eqz p1, :cond_10

    .line 14
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 17
    :cond_10
    return-void
.end method

.method public setTouchable(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setTouchable(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public setTranslate(FF)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/miui/maml/component/MamlView;->mX:F

    .line 3
    iput p2, p0, Lcom/miui/maml/component/MamlView;->mY:F

    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/miui/maml/component/MamlView;->mCanvasParamsChanged:Z

    .line 8
    iget-object p1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 10
    if-eqz p1, :cond_e

    .line 12
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 15
    :cond_e
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    if-nez p1, :cond_9

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onResume()V

    .line 9
    goto :goto_13

    .line 10
    :cond_9
    const/4 v0, 0x4

    .line 11
    if-eq p1, v0, :cond_10

    .line 13
    const/16 v0, 0x8

    .line 15
    if-ne p1, v0, :cond_13

    .line 17
    :cond_10
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onPause()V

    .line 20
    :cond_13
    :goto_13
    return-void
.end method

.method public setWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 3
    return-void
.end method
