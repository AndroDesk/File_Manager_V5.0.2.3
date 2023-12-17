.class public abstract Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;
.super Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;
.source "TabletFloatingActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;,
        Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;
    }
.end annotation


# static fields
.field private static final ANIM_TAG_DISMISS:Ljava/lang/String; = "dismiss"

.field private static final ANIM_TAG_INIT:Ljava/lang/String; = "init"

.field private static final FLOATING_BG_DIM:F = 0.3f

.field private static final GESTURE_ENABLE_DELAY_TIME:I = 0x1f4

.field private static final MOVE_DISTANCE_RATIO:F = 0.5f

.field private static final PANEL_SHOW_DELAY_TIME:I = 0x5a


# instance fields
.field public mActivity:Lmiuix/appcompat/app/AppCompatActivity;

.field private mAnimationDoing:Z

.field private mBg:Landroid/view/View;

.field private final mDefaultPanelBg:Landroid/graphics/drawable/Drawable;

.field private mEnableSwipToDismiss:Z

.field private mFloatingActivityFinishingFlag:I

.field private final mFloatingActivitySlidDownHandler:Landroid/os/Handler;

.field private mFloatingLayoutParam:Landroid/view/ViewGroup$LayoutParams;

.field private mFloatingRadius:F

.field private mFloatingRoot:Landroid/view/View;

.field private mHandle:Landroid/view/View;

.field private mIsBorderEnable:Z

.field private mIsFloatingWindow:Z

.field private mLastMoveY:F

.field private mMoveMaxY:F

.field private mOffsetY:F

.field private mOnFloatingActivityCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;

.field private mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

.field private mPanel:Landroid/view/View;

.field private mPanelParent:Landroid/view/View;

.field private mRootViewGestureDetector:Landroid/view/GestureDetector;

.field private mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

.field private mTouchDownY:F


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mEnableSwipToDismiss:Z

    .line 7
    new-instance v1, Landroid/os/Handler;

    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingActivitySlidDownHandler:Landroid/os/Handler;

    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mAnimationDoing:Z

    .line 21
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 23
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsBorderEnable:Z

    .line 25
    iput v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingActivityFinishingFlag:I

    .line 27
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 29
    const v0, 0x1010054

    .line 32
    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mDefaultPanelBg:Landroid/graphics/drawable/Drawable;

    .line 38
    return-void
.end method

.method public static synthetic a(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->lambda$firstFloatingTranslationTop$5()V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mEnableSwipToDismiss:Z

    .line 3
    return p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getSnapShotAndSetPanel()V

    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1100(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->onEnd(Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->makeDownMoveMaxY()V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->notifyPageHide()V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZI)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->triggerFinishCallback(ZI)V

    .line 4
    return-void
.end method

.method public static synthetic access$700(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->updateFloatingActivityFinishingFlag(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$800(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->isFirstPageExitAnimExecuteEnable()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$900(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZI)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->singleFloatingSlipExit(ZI)V

    .line 4
    return-void
.end method

.method public static synthetic b(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->lambda$executeFolme$4(ZI)V

    return-void
.end method

.method private backOneByOne(I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->updateFloatingActivityFinishingFlag(I)V

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->isFirstPageExitAnimExecuteEnable()Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_14

    .line 10
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 12
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    .line 15
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 17
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->singleAppFloatingActivityExit(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 20
    goto :goto_1b

    .line 21
    :cond_14
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mAnimationDoing:Z

    .line 23
    if-nez v0, :cond_1b

    .line 25
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->triggerBottomExit(I)V

    .line 28
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->execExitAnim()V

    .line 31
    return-void
.end method

.method public static synthetic c(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->lambda$init$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;F)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->lambda$panelDelayShow$0(F)V

    return-void
.end method

.method private delegateFinishTransWithClipAnimInternal()Z
    .registers 3

    .line 1
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 5
    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;->access$600(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;Z)V

    .line 12
    return v1
.end method

.method private dimBg(F)V
    .registers 4

    .line 1
    const/high16 v0, 0x3f800000  # 1.0f

    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 6
    move-result p1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    .line 11
    move-result p1

    .line 12
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBg:Landroid/view/View;

    .line 14
    sub-float/2addr v0, p1

    .line 15
    const p1, 0x3e99999a  # 0.3f

    .line 18
    mul-float/2addr v0, p1

    .line 19
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 22
    return-void
.end method

.method public static synthetic e(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->lambda$init$2()V

    return-void
.end method

.method private executeFolme(ZI)V
    .registers 18

    .line 1
    move-object v6, p0

    .line 2
    move/from16 v2, p1

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 15
    move-result-object v1

    .line 16
    if-eq v0, v1, :cond_1e

    .line 18
    iget-object v0, v6, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 20
    new-instance v1, Lmiuix/appcompat/app/floatingactivity/helper/d;

    .line 22
    move/from16 v4, p2

    .line 24
    invoke-direct {v1, p0, v2, v4}, Lmiuix/appcompat/app/floatingactivity/helper/d;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZI)V

    .line 27
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 30
    return-void

    .line 31
    :cond_1e
    move/from16 v4, p2

    .line 33
    iget-boolean v0, v6, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mAnimationDoing:Z

    .line 35
    if-eqz v0, :cond_27

    .line 37
    if-eqz v2, :cond_27

    .line 39
    return-void

    .line 40
    :cond_27
    const/4 v7, 0x1

    .line 41
    iput-boolean v7, v6, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mAnimationDoing:Z

    .line 43
    const/4 v8, 0x0

    .line 44
    if-eqz v2, :cond_37

    .line 46
    iget v0, v6, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mMoveMaxY:F

    .line 48
    float-to-int v0, v0

    .line 49
    const/4 v1, 0x0

    .line 50
    const-string v3, "dismiss"

    .line 52
    move v9, v0

    .line 53
    move v10, v1

    .line 54
    move-object v11, v3

    .line 55
    goto :goto_3f

    .line 56
    :cond_37
    const v1, 0x3e99999a  # 0.3f

    .line 59
    const-string v3, "init"

    .line 61
    move v10, v1

    .line 62
    move-object v11, v3

    .line 63
    move v9, v8

    .line 64
    :goto_3f
    if-eqz v2, :cond_43

    .line 66
    const/4 v0, 0x2

    .line 67
    goto :goto_44

    .line 68
    :cond_43
    move v0, v7

    .line 69
    :goto_44
    const/4 v1, 0x0

    .line 70
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->getAnimConfig(ILjava/lang/Runnable;)Lmiuix/animation/base/AnimConfig;

    .line 73
    move-result-object v12

    .line 74
    new-array v13, v7, [Lmiuix/animation/listener/TransitionListener;

    .line 76
    new-instance v14, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;

    .line 78
    const/4 v5, 0x0

    .line 79
    move-object v0, v14

    .line 80
    move-object v1, p0

    .line 81
    move/from16 v2, p1

    .line 83
    move v3, v9

    .line 84
    move/from16 v4, p2

    .line 86
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZIILmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;)V

    .line 89
    aput-object v14, v13, v8

    .line 91
    invoke-virtual {v12, v13}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 94
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 96
    invoke-direct {v0, v11}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 99
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 101
    int-to-double v2, v9

    .line 102
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 105
    move-result-object v0

    .line 106
    new-instance v1, Lmiuix/animation/controller/AnimState;

    .line 108
    invoke-direct {v1, v11}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 111
    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 113
    float-to-double v3, v10

    .line 114
    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 117
    move-result-object v1

    .line 118
    new-array v2, v7, [Landroid/view/View;

    .line 120
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getAnimPanel()Landroid/view/View;

    .line 123
    move-result-object v3

    .line 124
    aput-object v3, v2, v8

    .line 126
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 129
    move-result-object v2

    .line 130
    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 133
    move-result-object v2

    .line 134
    new-array v3, v7, [Lmiuix/animation/base/AnimConfig;

    .line 136
    aput-object v12, v3, v8

    .line 138
    invoke-interface {v2, v0, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 141
    new-array v0, v7, [Landroid/view/View;

    .line 143
    iget-object v2, v6, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBg:Landroid/view/View;

    .line 145
    aput-object v2, v0, v8

    .line 147
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 150
    move-result-object v0

    .line 151
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 154
    move-result-object v0

    .line 155
    new-array v2, v8, [Lmiuix/animation/base/AnimConfig;

    .line 157
    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 160
    return-void
.end method

.method public static synthetic f(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->lambda$init$3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private firstFloatingTranslationTop()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 3
    new-instance v1, Lmiuix/appcompat/app/floatingactivity/helper/b;

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, Lmiuix/appcompat/app/floatingactivity/helper/b;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;I)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 12
    return-void
.end method

.method private folmeShow()V
    .registers 8

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getAnimPanel()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRoot:Landroid/view/View;

    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 14
    move-result v2

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 18
    move-result v3

    .line 19
    sub-int/2addr v2, v3

    .line 20
    const/4 v3, 0x2

    .line 21
    div-int/2addr v2, v3

    .line 22
    add-int/2addr v2, v1

    .line 23
    const/4 v1, 0x1

    .line 24
    new-array v4, v1, [Landroid/view/View;

    .line 26
    const/4 v5, 0x0

    .line 27
    aput-object v0, v4, v5

    .line 29
    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 36
    move-result-object v0

    .line 37
    new-array v4, v3, [Ljava/lang/Object;

    .line 39
    sget-object v6, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 41
    aput-object v6, v4, v5

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v2

    .line 47
    aput-object v2, v4, v1

    .line 49
    invoke-interface {v0, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 52
    move-result-object v0

    .line 53
    const/4 v2, 0x3

    .line 54
    new-array v2, v2, [Ljava/lang/Object;

    .line 56
    aput-object v6, v2, v5

    .line 58
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v4

    .line 62
    aput-object v4, v2, v1

    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-static {v1, v4}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->getAnimConfig(ILjava/lang/Runnable;)Lmiuix/animation/base/AnimConfig;

    .line 68
    move-result-object v1

    .line 69
    aput-object v1, v2, v3

    .line 71
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 74
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBg:Landroid/view/View;

    .line 76
    invoke-static {v0}, Lmiuix/appcompat/widget/dialoganim/DimAnimator;->show(Landroid/view/View;)V

    .line 79
    return-void
.end method

.method private getAnimPanel()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanelParent:Landroid/view/View;

    .line 3
    if-nez v0, :cond_6

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 7
    :cond_6
    return-object v0
.end method

.method private getSnapShotAndSetPanel()V
    .registers 3

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isSupportTransWithClipAnim()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    .line 10
    if-eqz v0, :cond_14

    .line 12
    iget-boolean v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mEnableSwipToDismiss:Z

    .line 14
    if-eqz v1, :cond_14

    .line 16
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 18
    invoke-interface {v0, v1}, Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;->getSnapShotAndSetPanel(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 21
    :cond_14
    return-void
.end method

.method private handleFingerMove(Landroid/view/MotionEvent;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_61

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v2, :cond_2d

    .line 11
    const/4 v2, 0x2

    .line 12
    if-eq v0, v2, :cond_e

    .line 14
    goto :goto_71

    .line 15
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 18
    move-result p1

    .line 19
    iget v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOffsetY:F

    .line 21
    iget v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mLastMoveY:F

    .line 23
    sub-float v2, p1, v2

    .line 25
    add-float/2addr v2, v0

    .line 26
    iput v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOffsetY:F

    .line 28
    cmpl-float v0, v2, v1

    .line 30
    if-ltz v0, :cond_2a

    .line 32
    invoke-direct {p0, v2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->movePanel(F)V

    .line 35
    iget v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOffsetY:F

    .line 37
    iget v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mMoveMaxY:F

    .line 39
    div-float/2addr v0, v1

    .line 40
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->dimBg(F)V

    .line 43
    :cond_2a
    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mLastMoveY:F

    .line 45
    goto :goto_71

    .line 46
    :cond_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 49
    move-result p1

    .line 50
    iget v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mTouchDownY:F

    .line 52
    sub-float/2addr p1, v0

    .line 53
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 58
    move-result v0

    .line 59
    int-to-float v0, v0

    .line 60
    const/high16 v1, 0x3f000000  # 0.5f

    .line 62
    mul-float/2addr v0, v1

    .line 63
    cmpl-float p1, p1, v0

    .line 65
    const/4 v0, 0x0

    .line 66
    if-lez p1, :cond_45

    .line 68
    move p1, v2

    .line 69
    goto :goto_46

    .line 70
    :cond_45
    move p1, v0

    .line 71
    :goto_46
    invoke-direct {p0, v2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->updateFloatingActivityFinishingFlag(I)V

    .line 74
    if-eqz p1, :cond_5d

    .line 76
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getSnapShotAndSetPanel()V

    .line 79
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    .line 81
    if-eqz p1, :cond_58

    .line 83
    invoke-interface {p1, v2}, Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;->onFinish(I)Z

    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_59

    .line 89
    :cond_58
    move v0, v2

    .line 90
    :cond_59
    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    .line 93
    goto :goto_71

    .line 94
    :cond_5d
    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    .line 97
    goto :goto_71

    .line 98
    :cond_61
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->notifyDragStart()V

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 104
    move-result p1

    .line 105
    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mTouchDownY:F

    .line 107
    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mLastMoveY:F

    .line 109
    iput v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOffsetY:F

    .line 111
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->makeDownMoveMaxY()V

    .line 114
    :goto_71
    return-void
.end method

.method private isEnableFirstFloatingTranslationY()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->isFirstPageEnterAnimExecuteEnable()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method private isFirstPageEnterAnimExecuteEnable()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-interface {v0}, Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;->isFirstPageEnterAnimExecuteEnable()Z

    .line 10
    move-result v0

    .line 11
    :goto_a
    return v0
.end method

.method private isFirstPageExitAnimExecuteEnable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 3
    if-eqz v0, :cond_11

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    invoke-interface {v0}, Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;->isFirstPageExitAnimExecuteEnable()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_11

    .line 16
    :goto_f
    const/4 v0, 0x1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    :goto_12
    return v0
.end method

.method private synthetic lambda$executeFolme$4(ZI)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    .line 4
    return-void
.end method

.method private synthetic lambda$firstFloatingTranslationTop$5()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->isEnableFirstFloatingTranslationY()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_c

    .line 7
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->markActivityOpenEnterAnimExecuted()V

    .line 10
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->folmeShow()V

    .line 13
    :cond_c
    return-void
.end method

.method private synthetic lambda$init$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRootViewGestureDetector:Landroid/view/GestureDetector;

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method

.method private synthetic lambda$init$2()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRoot:Landroid/view/View;

    .line 3
    new-instance v1, Lmiuix/appcompat/app/floatingactivity/helper/a;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lmiuix/appcompat/app/floatingactivity/helper/a;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;I)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    return-void
.end method

.method private synthetic lambda$init$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mEnableSwipToDismiss:Z

    .line 3
    if-eqz p1, :cond_7

    .line 5
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->handleFingerMove(Landroid/view/MotionEvent;)V

    .line 8
    :cond_7
    const/4 p1, 0x1

    .line 9
    return p1
.end method

.method private synthetic lambda$panelDelayShow$0(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 6
    return-void
.end method

.method private makeDownMoveMaxY()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getAnimPanel()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRoot:Landroid/view/View;

    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 14
    move-result v2

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 18
    move-result v0

    .line 19
    sub-int/2addr v2, v0

    .line 20
    div-int/lit8 v2, v2, 0x2

    .line 22
    add-int/2addr v2, v1

    .line 23
    int-to-float v0, v2

    .line 24
    iput v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mMoveMaxY:F

    .line 26
    return-void
.end method

.method private markActivityOpenEnterAnimExecuted()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 7
    invoke-interface {v0, v1}, Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;->markActivityOpenEnterAnimExecuted(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 10
    :cond_9
    return-void
.end method

.method private movePanel(F)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getAnimPanel()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 8
    return-void
.end method

.method private notifyDragEnd()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;->onDragEnd()V

    .line 8
    :cond_7
    return-void
.end method

.method private notifyDragStart()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;->onDragStart()V

    .line 8
    :cond_7
    return-void
.end method

.method private notifyPageHide()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;->onHideBehindPage()V

    .line 8
    :cond_7
    return-void
.end method

.method private onEnd(Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "dismiss"

    .line 7
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_12

    .line 13
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 15
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    .line 18
    goto :goto_21

    .line 19
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    const-string v0, "init"

    .line 25
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_21

    .line 31
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->notifyDragEnd()V

    .line 34
    :cond_21
    :goto_21
    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mAnimationDoing:Z

    .line 37
    return-void
.end method

.method private panelDelayShow()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 18
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    .line 20
    new-instance v2, Lmiuix/appcompat/app/floatingactivity/helper/c;

    .line 22
    invoke-direct {v2, p0, v0}, Lmiuix/appcompat/app/floatingactivity/helper/c;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;F)V

    .line 25
    const-wide/16 v3, 0x5a

    .line 27
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    return-void
.end method

.method private setPanelParent(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanelParent:Landroid/view/View;

    .line 3
    return-void
.end method

.method private setRoundFrameLayoutBorder(Lmiuix/internal/widget/RoundFrameLayout;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_22

    .line 6
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsBorderEnable:Z

    .line 8
    if-eqz v0, :cond_22

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v0

    .line 16
    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_floating_window_background_border_width:I

    .line 18
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    move-result v0

    .line 22
    int-to-float v0, v0

    .line 23
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 25
    sget v3, Lmiuix/appcompat/R$attr;->miuixAppcompatFloatingWindowBorderColor:I

    .line 27
    invoke-static {v2, v3, v1}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;II)I

    .line 30
    move-result v1

    .line 31
    invoke-virtual {p1, v0, v1}, Lmiuix/internal/widget/RoundFrameLayout;->setBorder(FI)V

    .line 34
    goto :goto_26

    .line 35
    :cond_22
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0, v1}, Lmiuix/internal/widget/RoundFrameLayout;->setBorder(FI)V

    .line 39
    :goto_26
    return-void
.end method

.method private singleFloatingSlipExit(ZI)V
    .registers 3

    .line 1
    if-eqz p1, :cond_10

    .line 3
    iget-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mAnimationDoing:Z

    .line 5
    if-nez p1, :cond_10

    .line 7
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->makeDownMoveMaxY()V

    .line 10
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->notifyPageHide()V

    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    .line 17
    :cond_10
    return-void
.end method

.method private triggerBottomExit(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->makeDownMoveMaxY()V

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->notifyPageHide()V

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    .line 11
    return-void
.end method

.method private triggerFinishCallback(ZI)V
    .registers 4

    .line 1
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->updateFloatingActivityFinishingFlag(I)V

    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_23

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingActivityCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;

    .line 9
    if-eqz p1, :cond_14

    .line 11
    invoke-interface {p1, p2}, Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;->onFinish(I)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_14

    .line 17
    invoke-direct {p0, v0, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    .line 20
    goto :goto_26

    .line 21
    :cond_14
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    .line 23
    if-eqz p1, :cond_1e

    .line 25
    invoke-interface {p1, p2}, Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;->onFinish(I)Z

    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1f

    .line 31
    :cond_1e
    const/4 v0, 0x1

    .line 32
    :cond_1f
    invoke-direct {p0, v0, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    .line 35
    goto :goto_26

    .line 36
    :cond_23
    invoke-direct {p0, v0, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    .line 39
    :goto_26
    return-void
.end method

.method private updateFloatingActivityFinishingFlag(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingActivityFinishingFlag:I

    .line 3
    return-void
.end method


# virtual methods
.method public delegateFinishFloatingActivityInternal()Z
    .registers 5

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isSupportTransWithClipAnim()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->delegateFinishTransWithClipAnimInternal()Z

    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_b
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 14
    if-eqz v0, :cond_21

    .line 16
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getSnapShotAndSetPanel()V

    .line 19
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingActivitySlidDownHandler:Landroid/os/Handler;

    .line 21
    new-instance v1, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;

    .line 23
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 25
    invoke-direct {v1, p0, v2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 28
    const-wide/16 v2, 0x6e

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    goto :goto_29

    .line 34
    :cond_21
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 36
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    .line 39
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->execExitAnim()V

    .line 42
    :goto_29
    const/4 v0, 0x1

    .line 43
    return v0
.end method

.method public execExitAnim()V
    .registers 1

    return-void
.end method

.method public executeCloseEnterAnimation()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 7
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->executeCloseEnterAnimation(Landroid/view/View;)V

    .line 10
    :cond_9
    return-void
.end method

.method public executeCloseExitAnimation()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 7
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->executeCloseExitAnimation(Landroid/view/View;)V

    .line 10
    :cond_9
    return-void
.end method

.method public executeOpenEnterAnimation()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 7
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->executeOpenEnterAnimation(Landroid/view/View;)V

    .line 10
    :cond_9
    return-void
.end method

.method public executeOpenExitAnimation()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 7
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->executeOpenExitAnimation(Landroid/view/View;)V

    .line 10
    :cond_9
    return-void
.end method

.method public exitFloatingActivityAll()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getSnapShotAndSetPanel()V

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->makeDownMoveMaxY()V

    .line 7
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->notifyPageHide()V

    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->triggerFinishCallback(ZI)V

    .line 15
    return-void
.end method

.method public finishAllPage()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;->closeAllPage()V

    .line 8
    :cond_7
    return-void
.end method

.method public getFloatingBrightPanel()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getFloatingLayoutParam()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    .line 3
    return-object v0
.end method

.method public hideFloatingBrightPanel()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    return-void
.end method

.method public hideFloatingDimBackground()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBg:Landroid/view/View;

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    return-void
.end method

.method public init(Landroid/view/View;Z)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    sget v0, Lmiuix/appcompat/R$id;->sliding_drawer_handle:I

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mHandle:Landroid/view/View;

    .line 9
    sget v0, Lmiuix/appcompat/R$id;->action_bar_overlay_bg:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBg:Landroid/view/View;

    .line 17
    const v1, 0x3e99999a  # 0.3f

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 23
    sget v0, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 31
    sget v0, Lmiuix/appcompat/R$id;->action_bar_overlay_floating_root:I

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRoot:Landroid/view/View;

    .line 39
    iput-boolean p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 41
    new-instance p2, Landroid/view/GestureDetector;

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    move-result-object p1

    .line 47
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;

    .line 49
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V

    .line 52
    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 55
    iput-object p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRootViewGestureDetector:Landroid/view/GestureDetector;

    .line 57
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRoot:Landroid/view/View;

    .line 59
    new-instance p2, Lmiuix/appcompat/app/floatingactivity/helper/b;

    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-direct {p2, p0, v0}, Lmiuix/appcompat/app/floatingactivity/helper/b;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;I)V

    .line 65
    const-wide/16 v1, 0x1f4

    .line 67
    invoke-virtual {p1, p2, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mHandle:Landroid/view/View;

    .line 72
    new-instance p2, Lmiuix/appcompat/app/floatingactivity/helper/a;

    .line 74
    const/4 v1, 0x1

    .line 75
    invoke-direct {p2, p0, v1}, Lmiuix/appcompat/app/floatingactivity/helper/a;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;I)V

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 81
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->firstFloatingTranslationTop()V

    .line 84
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 86
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 89
    move-result-object p1

    .line 90
    sget p2, Lmiuix/appcompat/R$color;->miuix_appcompat_transparent:I

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 95
    iget-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 97
    if-nez p1, :cond_77

    .line 99
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 101
    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_77

    .line 107
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 109
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 111
    const/high16 v1, -0x1000000

    .line 113
    invoke-direct {p2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 119
    goto :goto_7e

    .line 120
    :cond_77
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 122
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mDefaultPanelBg:Landroid/graphics/drawable/Drawable;

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :goto_7e
    iget-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mEnableSwipToDismiss:Z

    .line 129
    if-eqz p1, :cond_8c

    .line 131
    iget-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 133
    if-eqz p1, :cond_8c

    .line 135
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mHandle:Landroid/view/View;

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 140
    goto :goto_93

    .line 141
    :cond_8c
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mHandle:Landroid/view/View;

    .line 143
    const/16 p2, 0x8

    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :goto_93
    return-void
.end method

.method public isFloatingWindow()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 3
    return v0
.end method

.method public onBackPressed()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isSupportTransWithClipAnim()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_d

    .line 11
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getSnapShotAndSetPanel()V

    .line 14
    :cond_d
    const/4 v0, 0x4

    .line 15
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->backOneByOne(I)V

    .line 18
    return-void
.end method

.method public replaceSubDecor(Landroid/view/View;Z)Landroid/view/ViewGroup;
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_screen_floating_window:I

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    sget v1, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v1

    .line 18
    sget v2, Lmiuix/appcompat/R$id;->sliding_drawer_handle:I

    .line 20
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_2a

    .line 26
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 29
    move-result-object v3

    .line 30
    instance-of v3, v3, Landroid/view/ViewGroup;

    .line 32
    if-eqz v3, :cond_2a

    .line 34
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroid/view/ViewGroup;

    .line 40
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 43
    :cond_2a
    instance-of v3, p1, Landroid/view/ViewGroup;

    .line 45
    if-eqz v3, :cond_34

    .line 47
    move-object v3, p1

    .line 48
    check-cast v3, Landroid/view/ViewGroup;

    .line 50
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    :cond_34
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    move-result-object v2

    .line 57
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 59
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 61
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 63
    const/16 v5, 0x11

    .line 65
    invoke-direct {v3, v4, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 68
    iput-object v3, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    .line 70
    if-nez p2, :cond_4d

    .line 72
    const/4 v2, -0x1

    .line 73
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 75
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 77
    goto :goto_52

    .line 78
    :cond_4d
    const/4 v2, -0x2

    .line 79
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 81
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 83
    :goto_52
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 89
    move-result-object v1

    .line 90
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 92
    if-eqz v2, :cond_62

    .line 94
    check-cast v1, Landroid/view/ViewGroup;

    .line 96
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 99
    :cond_62
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 101
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 104
    move-result-object v1

    .line 105
    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_floating_window_background_radius:I

    .line 107
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 110
    move-result v1

    .line 111
    int-to-float v1, v1

    .line 112
    iput v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRadius:F

    .line 114
    new-instance v1, Lmiuix/internal/widget/RoundFrameLayout;

    .line 116
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 118
    invoke-direct {v1, v2}, Lmiuix/internal/widget/RoundFrameLayout;-><init>(Landroid/content/Context;)V

    .line 121
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    .line 123
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    .line 125
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    .line 130
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 133
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    .line 135
    if-eqz p2, :cond_8b

    .line 137
    iget p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRadius:F

    .line 139
    goto :goto_8c

    .line 140
    :cond_8b
    const/4 p2, 0x0

    .line 141
    :goto_8c
    invoke-virtual {p1, p2}, Lmiuix/internal/widget/RoundFrameLayout;->setRadius(F)V

    .line 144
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    .line 146
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->setRoundFrameLayoutBorder(Lmiuix/internal/widget/RoundFrameLayout;)V

    .line 149
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->panelDelayShow()V

    .line 152
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    .line 154
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 157
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    .line 159
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->setPanelParent(Landroid/view/View;)V

    .line 162
    return-object v0
.end method

.method public setEnableSwipToDismiss(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mEnableSwipToDismiss:Z

    .line 3
    if-eqz p1, :cond_f

    .line 5
    iget-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 7
    if-eqz p1, :cond_f

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mHandle:Landroid/view/View;

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    goto :goto_16

    .line 16
    :cond_f
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mHandle:Landroid/view/View;

    .line 18
    const/16 v0, 0x8

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    :goto_16
    return-void
.end method

.method public setFloatingWindowBorderEnable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsBorderEnable:Z

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    .line 5
    if-eqz p1, :cond_9

    .line 7
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->setRoundFrameLayoutBorder(Lmiuix/internal/widget/RoundFrameLayout;)V

    .line 10
    :cond_9
    return-void
.end method

.method public setFloatingWindowMode(Z)V
    .registers 4

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lmiuix/core/util/IntentUtils;->isIntentFromSettingsSplit(Landroid/content/Intent;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_14

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {v0, v1}, Lmiuix/view/CompatViewMethod;->setActivityTranslucent(Landroid/app/Activity;Z)V

    .line 21
    :cond_14
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    .line 23
    if-eqz v0, :cond_35

    .line 25
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v0

    .line 31
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_floating_window_background_radius:I

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 36
    move-result v0

    .line 37
    int-to-float v0, v0

    .line 38
    iput v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRadius:F

    .line 40
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    .line 42
    if-eqz p1, :cond_2c

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    const/4 v0, 0x0

    .line 46
    :goto_2d
    invoke-virtual {v1, v0}, Lmiuix/internal/widget/RoundFrameLayout;->setRadius(F)V

    .line 49
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    .line 51
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->setRoundFrameLayoutBorder(Lmiuix/internal/widget/RoundFrameLayout;)V

    .line 54
    :cond_35
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 56
    if-eqz v0, :cond_57

    .line 58
    if-nez p1, :cond_50

    .line 60
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 62
    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_50

    .line 68
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 70
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 72
    const/high16 v1, -0x1000000

    .line 74
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 80
    goto :goto_57

    .line 81
    :cond_50
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mDefaultPanelBg:Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_57
    :goto_57
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mHandle:Landroid/view/View;

    .line 90
    if-eqz p1, :cond_6d

    .line 92
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mEnableSwipToDismiss:Z

    .line 94
    if-eqz v0, :cond_68

    .line 96
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 98
    if-eqz v0, :cond_68

    .line 100
    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 104
    goto :goto_6d

    .line 105
    :cond_68
    const/16 v0, 0x8

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_6d
    :goto_6d
    return-void
.end method

.method public setOnFloatingCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    .line 3
    return-void
.end method

.method public setOnFloatingWindowCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingActivityCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;

    .line 3
    return-void
.end method

.method public shouldInterceptBack()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public showFloatingBrightPanel()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    return-void
.end method
