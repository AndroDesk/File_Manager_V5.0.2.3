.class public Lmiuix/popupwidget/widget/DropDownPopupWindow;
.super Ljava/lang/Object;
.source "DropDownPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/popupwidget/widget/DropDownPopupWindow$ListController;,
        Lmiuix/popupwidget/widget/DropDownPopupWindow$ViewContentController;,
        Lmiuix/popupwidget/widget/DropDownPopupWindow$DefaultContainerController;,
        Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;,
        Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;,
        Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;,
        Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;
    }
.end annotation


# static fields
.field private static final DIM:F = 0.3f

.field private static final TAG:Ljava/lang/String; = "DropDownPopupWindow"


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

.field private mContainerController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

.field private mContentController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDismissDuration:I

.field private mDismissPending:Z

.field private mDropDownController:Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;

.field private mEdgeDistance:I

.field private mElevation:I

.field private mMaxWidth:I

.field private mMinWidth:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mRealContainerView:Landroid/view/View;

.field private mShowDuration:I

.field private mValueUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mWindowWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mShowDuration:I

    iput v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mDismissDuration:I

    new-instance v0, Lmiuix/popupwidget/widget/DropDownPopupWindow$1;

    invoke-direct {v0, p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$1;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mValueUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lmiuix/popupwidget/widget/DropDownPopupWindow$2;

    invoke-direct {v0, p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$2;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    new-instance p1, Lmiuix/popupwidget/widget/DropDownPopupWindow$3;

    invoke-direct {p1, p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$3;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result p2

    if-eqz p2, :cond_3a

    sget v1, Lmiuix/popupwidget/R$style;->Animation_PopupWindow_DropDown:I

    :cond_3a
    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->initPopupWindow()V

    return-void
.end method

.method public static synthetic a(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->lambda$configurationChanged$0()V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;
    .registers 1

    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainerController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

    return-object p0
.end method

.method public static synthetic access$1000(Lmiuix/popupwidget/widget/DropDownPopupWindow;Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->adjustLocation(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic access$1100(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;
    .registers 1

    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;
    .registers 1

    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;

    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mDismissPending:Z

    return p0
.end method

.method public static synthetic access$600(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->realDismiss()V

    return-void
.end method

.method public static synthetic access$700(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;
    .registers 1

    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mDropDownController:Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;

    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/popupwidget/widget/DropDownPopupWindow;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->configurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic access$900(Lmiuix/popupwidget/widget/DropDownPopupWindow;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->getCutout(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private adjustLocation(Landroid/graphics/Rect;)V
    .registers 10

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    if-nez v0, :cond_9

    goto :goto_68

    :cond_9
    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->updateMaxWidth(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    iget-object v1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;

    if-eqz v1, :cond_2b

    invoke-interface {v1}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;->getContentView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_2b

    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    iget v5, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mElevation:I

    iget v6, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMinWidth:I

    iget-object v7, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainerController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->setupContentView(Landroid/widget/FrameLayout;Landroid/view/View;IILmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;)I

    move-result v0

    :cond_2b
    iget v1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMaxWidth:I

    if-le v0, v1, :cond_30

    move v0, v1

    :cond_30
    iget-object v1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    iget-object v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_5b

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-direct {p0, v0, p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->computeLocation(ILandroid/graphics/Rect;)[I

    move-result-object p1

    iget-object v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    aget v3, p1, v3

    const/4 v4, 0x1

    aget p1, p1, v4

    invoke-virtual {v2, v3, p1, v0, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_68

    :cond_5b
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_68

    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_68
    :goto_68
    return-void
.end method

.method private computeLocation(ILandroid/graphics/Rect;)[I
    .registers 11

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMaxWidth:I

    if-le p1, v2, :cond_d

    move p1, v2

    :cond_d
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v2, :cond_1b

    iget p1, p2, Landroid/graphics/Rect;->left:I

    if-lez p1, :cond_17

    goto/16 :goto_8b

    :cond_17
    iget p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mEdgeDistance:I

    goto/16 :goto_8b

    :cond_1b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p2

    if-eq p2, v3, :cond_27

    move p2, v3

    goto :goto_28

    :cond_27
    move p2, v4

    :goto_28
    if-eqz p2, :cond_4e

    iget p2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mWindowWidth:I

    aget v2, v1, v4

    add-int v5, v2, p1

    sub-int v5, p2, v5

    iget v6, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mEdgeDistance:I

    if-ge v5, v6, :cond_38

    move v5, v3

    goto :goto_39

    :cond_38
    move v5, v4

    :goto_39
    if-ge v2, v6, :cond_3d

    move v7, v3

    goto :goto_3e

    :cond_3d
    move v7, v4

    :goto_3e
    if-nez v7, :cond_46

    if-eqz v5, :cond_46

    add-int/2addr p1, v6

    :goto_43
    sub-int/2addr p2, p1

    move p1, p2

    goto :goto_8b

    :cond_46
    if-nez v5, :cond_4c

    if-eqz v7, :cond_4c

    move p1, v6

    goto :goto_8b

    :cond_4c
    :goto_4c
    move p1, v2

    goto :goto_8b

    :cond_4e
    aget p2, v1, v4

    iget-object v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p2

    sub-int/2addr v2, p1

    iget p2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mEdgeDistance:I

    if-ge v2, p2, :cond_5e

    move p2, v3

    goto :goto_5f

    :cond_5e
    move p2, v4

    :goto_5f
    iget v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mWindowWidth:I

    aget v5, v1, v4

    iget-object v6, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v5

    sub-int/2addr v2, v6

    iget v5, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mEdgeDistance:I

    if-ge v2, v5, :cond_71

    move v2, v3

    goto :goto_72

    :cond_71
    move v2, v4

    :goto_72
    if-nez p2, :cond_7a

    if-eqz v2, :cond_7a

    iget p2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mWindowWidth:I

    add-int/2addr p1, v5

    goto :goto_43

    :cond_7a
    if-nez v2, :cond_80

    if-eqz p2, :cond_80

    move p1, v5

    goto :goto_8b

    :cond_80
    aget p2, v1, v4

    iget-object v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p2

    sub-int/2addr v2, p1

    goto :goto_4c

    :goto_8b
    new-array p2, v0, [I

    aput p1, p2, v4

    aget p1, v1, v3

    aput p1, p2, v3

    return-object p2
.end method

.method private configurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    new-instance v0, Landroidx/activity/b;

    const/16 v1, 0x18

    invoke-direct {v0, p0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_16

    check-cast p1, Landroid/app/Activity;

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCutout(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 7

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lm0/g0$j;->a(Landroid/view/View;)Lm0/r0;

    move-result-object v1

    if-eqz v1, :cond_5a

    iget-object v1, v1, Lm0/r0;->a:Lm0/r0$k;

    invoke-virtual {v1}, Lm0/r0$k;->e()Lm0/d;

    move-result-object v1

    const/16 v2, 0x1c

    if-nez v1, :cond_41

    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_40

    const/4 v1, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_30

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-static {p1}, Lf1/x;->d(Landroid/view/Display;)Landroid/view/DisplayCutout;

    move-result-object v1

    :cond_30
    if-eqz v1, :cond_40

    if-lt v3, v2, :cond_40

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    :cond_40
    return-object v0

    :cond_41
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    if-lt p1, v2, :cond_4d

    iget-object v4, v1, Lm0/d;->a:Landroid/view/DisplayCutout;

    invoke-static {v4}, Lm0/d$a;->d(Landroid/view/DisplayCutout;)I

    move-result v4

    goto :goto_4e

    :cond_4d
    move v4, v3

    :goto_4e
    iput v4, v0, Landroid/graphics/Rect;->left:I

    if-lt p1, v2, :cond_58

    iget-object p1, v1, Lm0/d;->a:Landroid/view/DisplayCutout;

    invoke-static {p1}, Lm0/d$a;->e(Landroid/view/DisplayCutout;)I

    move-result v3

    :cond_58
    iput v3, v0, Landroid/graphics/Rect;->right:I

    :cond_5a
    return-object v0
.end method

.method private initData()V
    .registers 3

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mElevation:I

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_horizontal_edge_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mEdgeDistance:I

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMinWidth:I

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mWindowWidth:I

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mWindowWidth:I

    return-void
.end method

.method private initPopupWindow()V
    .registers 3

    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->initData()V

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$configurationChanged$0()V
    .registers 2

    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->initData()V

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    invoke-direct {p0, v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->getCutout(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->adjustLocation(Landroid/graphics/Rect;)V

    return-void
.end method

.method private measureListViewWidth(Landroid/widget/ListView;)I
    .registers 12

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v1

    move v7, v6

    move-object v8, v5

    :goto_15
    if-ge v1, v4, :cond_30

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v9

    if-eq v9, v7, :cond_1f

    move-object v8, v5

    move v7, v9

    :cond_1f
    invoke-interface {v0, v1, v8, p1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-le v9, v6, :cond_2d

    move v6, v9

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_30
    return v6
.end method

.method private realDismiss()V
    .registers 2

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_7
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainerController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;->onDismiss()V

    :cond_e
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;->onDismiss()V

    :cond_15
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mDropDownController:Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;->onDismiss()V

    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mDismissPending:Z

    return-void
.end method

.method private startAnimation(FFI)V
    .registers 8

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainerController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

    if-nez v0, :cond_f

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;

    if-eqz v0, :cond_4e

    :cond_f
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_23

    new-array v0, v3, [F

    aput p1, v0, v2

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    goto :goto_2c

    :cond_23
    new-array v3, v3, [F

    aput p1, v3, v2

    aput p2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_2c
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result p2

    if-eqz p2, :cond_36

    int-to-long p2, p3

    goto :goto_38

    :cond_36
    const-wide/16 p2, 0x0

    :goto_38
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mValueUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4e
    return-void
.end method

.method private updateMaxWidth(Landroid/graphics/Rect;)V
    .registers 3

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_d

    iget p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mWindowWidth:I

    sub-int/2addr p1, v0

    iget v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mEdgeDistance:I

    sub-int/2addr p1, v0

    iput p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMaxWidth:I

    goto :goto_23

    :cond_d
    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-lez p1, :cond_1a

    iget v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mWindowWidth:I

    sub-int/2addr v0, p1

    iget p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mEdgeDistance:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMaxWidth:I

    goto :goto_23

    :cond_1a
    iget p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mWindowWidth:I

    iget v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mEdgeDistance:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMaxWidth:I

    :goto_23
    return-void
.end method


# virtual methods
.method public changeWindowBackground(Landroid/view/View;F)V
    .registers 5

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "window"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    invoke-interface {p2, p1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2a

    :cond_23
    const-string p1, "DropDownPopupWindow"

    const-string p2, "can\'t change window dim with null view"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method public dismiss()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mDismissPending:Z

    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->realDismiss()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAnchor(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setContainerController(Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;)V
    .registers 2

    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainerController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

    return-void
.end method

.method public setContentController(Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;)V
    .registers 2

    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;

    return-void
.end method

.method public setDropDownController(Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;)V
    .registers 2

    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mDropDownController:Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 3

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setupContentView(Landroid/widget/FrameLayout;Landroid/view/View;IILmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;)I
    .registers 6

    if-nez p2, :cond_4

    const/4 p1, -0x2

    return p1

    :cond_4
    if-lez p3, :cond_a

    int-to-float p1, p3

    invoke-virtual {p2, p1}, Landroid/view/View;->setElevation(F)V

    :cond_a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance p3, Lmiuix/popupwidget/widget/DropDownPopupWindow$5;

    invoke-direct {p3, p0, p2}, Lmiuix/popupwidget/widget/DropDownPopupWindow$5;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/16 p3, 0x1c

    if-lt p1, p3, :cond_23

    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    sget p3, Lmiuix/popupwidget/R$color;->miuix_appcompat_drop_down_menu_spot_shadow_color:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1, p2}, Lmiuix/appcompat/app/f;->b(ILandroid/view/View;)V

    :cond_23
    instance-of p1, p2, Landroid/widget/ListView;

    if-eqz p1, :cond_2e

    check-cast p2, Landroid/widget/ListView;

    invoke-direct {p0, p2}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->measureListViewWidth(Landroid/widget/ListView;)I

    move-result p1

    goto :goto_36

    :cond_2e
    const/4 p1, 0x0

    invoke-virtual {p2, p1, p1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    :goto_36
    if-ge p1, p4, :cond_39

    goto :goto_3a

    :cond_39
    move p4, p1

    :goto_3a
    return p4
.end method

.method public show()V
    .registers 10

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0, v1, v1}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    goto/16 :goto_b3

    :cond_14
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1, v1}, Landroid/widget/PopupWindow;->update(II)V

    goto/16 :goto_b3

    :cond_1b
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;

    const/4 v2, -0x2

    if-eqz v0, :cond_36

    invoke-interface {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;->getContentView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_36

    iget-object v4, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    iget v6, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mElevation:I

    iget v7, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMinWidth:I

    iget-object v8, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainerController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->setupContentView(Landroid/widget/FrameLayout;Landroid/view/View;IILmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;)I

    move-result v0

    goto :goto_37

    :cond_36
    move v0, v2

    :goto_37
    iget v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMaxWidth:I

    if-le v0, v3, :cond_3c

    move v0, v3

    :cond_3c
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    iput-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v4, Lmiuix/popupwidget/widget/DropDownPopupWindow$4;

    invoke-direct {v4, p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$4;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainerController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

    if-eqz v3, :cond_51

    invoke-interface {v3}, Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;->onShow()V

    :cond_51
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    if-nez v4, :cond_63

    const/4 v4, 0x0

    goto :goto_67

    :cond_63
    invoke-virtual {v4}, Landroid/view/View;->getElevation()F

    move-result v4

    :goto_67
    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setElevation(F)V

    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    iget-object v4, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_9e

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_9e

    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, v2}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->getCutout(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->computeLocation(ILandroid/graphics/Rect;)[I

    move-result-object v0

    iget-object v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    aget v4, v0, v1

    const/4 v5, 0x1

    aget v0, v0, v5

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    goto :goto_aa

    :cond_9e
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    const v3, 0x800033

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    :goto_aa
    if-eqz v0, :cond_b3

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    :cond_b3
    :goto_b3
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    if-eqz v0, :cond_c1

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x3e99999a  # 0.3f

    invoke-virtual {p0, v0, v1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->changeWindowBackground(Landroid/view/View;F)V

    :cond_c1
    return-void
.end method
