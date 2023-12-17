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
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x12c

    .line 6
    iput v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mShowDuration:I

    .line 8
    iput v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mDismissDuration:I

    .line 10
    new-instance v0, Lmiuix/popupwidget/widget/DropDownPopupWindow$1;

    .line 12
    invoke-direct {v0, p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$1;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V

    .line 15
    iput-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mValueUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 17
    new-instance v0, Lmiuix/popupwidget/widget/DropDownPopupWindow$2;

    .line 19
    invoke-direct {v0, p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$2;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V

    .line 22
    iput-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 24
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Landroid/widget/PopupWindow;

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    iput-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 34
    new-instance v0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    .line 36
    invoke-direct {v0, p0, p1, p2, p3}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    .line 41
    new-instance p1, Lmiuix/popupwidget/widget/DropDownPopupWindow$3;

    .line 43
    invoke-direct {p1, p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$3;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V

    .line 46
    invoke-virtual {v0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 49
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 51
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_3a

    .line 57
    sget v1, Lmiuix/popupwidget/R$style;->Animation_PopupWindow_DropDown:I

    .line 59
    :cond_3a
    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 62
    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->initPopupWindow()V

    .line 65
    return-void
.end method

.method public static synthetic a(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->lambda$configurationChanged$0()V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainerController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lmiuix/popupwidget/widget/DropDownPopupWindow;Landroid/graphics/Rect;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->adjustLocation(Landroid/graphics/Rect;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mDismissPending:Z

    .line 3
    return p0
.end method

.method public static synthetic access$600(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->realDismiss()V

    .line 4
    return-void
.end method

.method public static synthetic access$700(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mDropDownController:Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/popupwidget/widget/DropDownPopupWindow;Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->configurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    return-void
.end method

.method public static synthetic access$900(Lmiuix/popupwidget/widget/DropDownPopupWindow;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->getCutout(Landroid/view/View;)Landroid/graphics/Rect;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private adjustLocation(Landroid/graphics/Rect;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_68

    .line 5
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_68

    .line 10
    :cond_9
    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->updateMaxWidth(Landroid/graphics/Rect;)V

    .line 13
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 15
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;

    .line 21
    if-eqz v1, :cond_2b

    .line 23
    invoke-interface {v1}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;->getContentView()Landroid/view/View;

    .line 26
    move-result-object v4

    .line 27
    iput-object v4, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    .line 29
    if-eqz v4, :cond_2b

    .line 31
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    .line 33
    iget v5, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mElevation:I

    .line 35
    iget v6, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMinWidth:I

    .line 37
    iget-object v7, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainerController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

    .line 39
    move-object v2, p0

    .line 40
    invoke-virtual/range {v2 .. v7}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->setupContentView(Landroid/widget/FrameLayout;Landroid/view/View;IILmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;)I

    .line 43
    move-result v0

    .line 44
    :cond_2b
    iget v1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMaxWidth:I

    .line 46
    if-le v0, v1, :cond_30

    .line 48
    move v0, v1

    .line 49
    :cond_30
    iget-object v1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 54
    iget-object v1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 56
    const/4 v2, -0x2

    .line 57
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 60
    iget-object v1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 62
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    .line 65
    move-result v1

    .line 66
    iget-object v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    .line 68
    const/4 v3, 0x0

    .line 69
    if-eqz v2, :cond_5b

    .line 71
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_5b

    .line 77
    invoke-direct {p0, v0, p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->computeLocation(ILandroid/graphics/Rect;)[I

    .line 80
    move-result-object p1

    .line 81
    iget-object v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 83
    aget v3, p1, v3

    .line 85
    const/4 v4, 0x1

    .line 86
    aget p1, p1, v4

    .line 88
    invoke-virtual {v2, v3, p1, v0, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 91
    goto :goto_68

    .line 92
    :cond_5b
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_68

    .line 100
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 102
    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 105
    :cond_68
    :goto_68
    return-void
.end method

.method private computeLocation(ILandroid/graphics/Rect;)[I
    .registers 11

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 4
    iget-object v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    .line 6
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 9
    iget v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMaxWidth:I

    .line 11
    if-le p1, v2, :cond_d

    .line 13
    move p1, v2

    .line 14
    :cond_d
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    if-ne p1, v2, :cond_1b

    .line 18
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 20
    if-lez p1, :cond_17

    .line 22
    goto/16 :goto_8b

    .line 24
    :cond_17
    iget p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mEdgeDistance:I

    .line 26
    goto/16 :goto_8b

    .line 28
    :cond_1b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 31
    move-result-object p2

    .line 32
    invoke-static {p2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 35
    move-result p2

    .line 36
    if-eq p2, v3, :cond_27

    .line 38
    move p2, v3

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move p2, v4

    .line 41
    :goto_28
    if-eqz p2, :cond_4e

    .line 43
    iget p2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mWindowWidth:I

    .line 45
    aget v2, v1, v4

    .line 47
    add-int v5, v2, p1

    .line 49
    sub-int v5, p2, v5

    .line 51
    iget v6, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mEdgeDistance:I

    .line 53
    if-ge v5, v6, :cond_38

    .line 55
    move v5, v3

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    move v5, v4

    .line 58
    :goto_39
    if-ge v2, v6, :cond_3d

    .line 60
    move v7, v3

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    move v7, v4

    .line 63
    :goto_3e
    if-nez v7, :cond_46

    .line 65
    if-eqz v5, :cond_46

    .line 67
    add-int/2addr p1, v6

    .line 68
    :goto_43
    sub-int/2addr p2, p1

    .line 69
    move p1, p2

    .line 70
    goto :goto_8b

    .line 71
    :cond_46
    if-nez v5, :cond_4c

    .line 73
    if-eqz v7, :cond_4c

    .line 75
    move p1, v6

    .line 76
    goto :goto_8b

    .line 77
    :cond_4c
    :goto_4c
    move p1, v2

    .line 78
    goto :goto_8b

    .line 79
    :cond_4e
    aget p2, v1, v4

    .line 81
    iget-object v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    .line 83
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 86
    move-result v2

    .line 87
    add-int/2addr v2, p2

    .line 88
    sub-int/2addr v2, p1

    .line 89
    iget p2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mEdgeDistance:I

    .line 91
    if-ge v2, p2, :cond_5e

    .line 93
    move p2, v3

    .line 94
    goto :goto_5f

    .line 95
    :cond_5e
    move p2, v4

    .line 96
    :goto_5f
    iget v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mWindowWidth:I

    .line 98
    aget v5, v1, v4

    .line 100
    iget-object v6, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    .line 102
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 105
    move-result v6

    .line 106
    add-int/2addr v6, v5

    .line 107
    sub-int/2addr v2, v6

    .line 108
    iget v5, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mEdgeDistance:I

    .line 110
    if-ge v2, v5, :cond_71

    .line 112
    move v2, v3

    .line 113
    goto :goto_72

    .line 114
    :cond_71
    move v2, v4

    .line 115
    :goto_72
    if-nez p2, :cond_7a

    .line 117
    if-eqz v2, :cond_7a

    .line 119
    iget p2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mWindowWidth:I

    .line 121
    add-int/2addr p1, v5

    .line 122
    goto :goto_43

    .line 123
    :cond_7a
    if-nez v2, :cond_80

    .line 125
    if-eqz p2, :cond_80

    .line 127
    move p1, v5

    .line 128
    goto :goto_8b

    .line 129
    :cond_80
    aget p2, v1, v4

    .line 131
    iget-object v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    .line 133
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 136
    move-result v2

    .line 137
    add-int/2addr v2, p2

    .line 138
    sub-int/2addr v2, p1

    .line 139
    goto :goto_4c

    .line 140
    :goto_8b
    new-array p2, v0, [I

    .line 142
    aput p1, p2, v4

    .line 144
    aget p1, v1, v3

    .line 146
    aput p1, p2, v3

    .line 148
    return-object p2
.end method

.method private configurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    .line 3
    new-instance v0, Landroidx/activity/b;

    .line 5
    const/16 v1, 0x18

    .line 7
    invoke-direct {v0, p0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method

.method private getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/view/ViewGroup;

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p1

    .line 16
    instance-of v0, p1, Landroid/app/Activity;

    .line 18
    if-eqz v0, :cond_16

    .line 20
    check-cast p1, Landroid/app/Activity;

    .line 22
    return-object p1

    .line 23
    :cond_16
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method private getCutout(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 7

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 8
    invoke-static {p1}, Lm0/g0$j;->a(Landroid/view/View;)Lm0/r0;

    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_5a

    .line 14
    iget-object v1, v1, Lm0/r0;->a:Lm0/r0$k;

    .line 16
    invoke-virtual {v1}, Lm0/r0$k;->e()Lm0/d;

    .line 19
    move-result-object v1

    .line 20
    const/16 v2, 0x1c

    .line 22
    if-nez v1, :cond_41

    .line 24
    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;

    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_40

    .line 30
    const/4 v1, 0x0

    .line 31
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    const/16 v4, 0x1d

    .line 35
    if-lt v3, v4, :cond_30

    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Lf1/x;->d(Landroid/view/Display;)Landroid/view/DisplayCutout;

    .line 48
    move-result-object v1

    .line 49
    :cond_30
    if-eqz v1, :cond_40

    .line 51
    if-lt v3, v2, :cond_40

    .line 53
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    .line 56
    move-result p1

    .line 57
    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 59
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    .line 62
    move-result p1

    .line 63
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 65
    :cond_40
    return-object v0

    .line 66
    :cond_41
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    const/4 v3, 0x0

    .line 69
    if-lt p1, v2, :cond_4d

    .line 71
    iget-object v4, v1, Lm0/d;->a:Landroid/view/DisplayCutout;

    .line 73
    invoke-static {v4}, Lm0/d$a;->d(Landroid/view/DisplayCutout;)I

    .line 76
    move-result v4

    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    move v4, v3

    .line 79
    :goto_4e
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 81
    if-lt p1, v2, :cond_58

    .line 83
    iget-object p1, v1, Lm0/d;->a:Landroid/view/DisplayCutout;

    .line 85
    invoke-static {p1}, Lm0/d$a;->e(Landroid/view/DisplayCutout;)I

    .line 88
    move-result v3

    .line 89
    :cond_58
    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 91
    :cond_5a
    return-object v0
.end method

.method private initData()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_elevation:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mElevation:I

    .line 15
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v0

    .line 21
    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_horizontal_edge_margin:I

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mEdgeDistance:I

    .line 29
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v0

    .line 35
    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_min_width:I

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMinWidth:I

    .line 43
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 52
    move-result-object v0

    .line 53
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 55
    iput v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mWindowWidth:I

    .line 57
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {v0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 62
    move-result-object v0

    .line 63
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 65
    iput v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mWindowWidth:I

    .line 67
    return-void
.end method

.method private initPopupWindow()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->initData()V

    .line 4
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 6
    const/4 v1, -0x2

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 10
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 15
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 21
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 27
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 33
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 38
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 43
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 45
    iget-object v1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 50
    return-void
.end method

.method private synthetic lambda$configurationChanged$0()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->initData()V

    .line 4
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    .line 6
    invoke-direct {p0, v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->getCutout(Landroid/view/View;)Landroid/graphics/Rect;

    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->adjustLocation(Landroid/graphics/Rect;)V

    .line 13
    return-void
.end method

.method private measureListViewWidth(Landroid/widget/ListView;)I
    .registers 12

    .line 1
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 9
    move-result v2

    .line 10
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 13
    move-result v3

    .line 14
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 17
    move-result v4

    .line 18
    const/4 v5, 0x0

    .line 19
    move v6, v1

    .line 20
    move v7, v6

    .line 21
    move-object v8, v5

    .line 22
    :goto_15
    if-ge v1, v4, :cond_30

    .line 24
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 27
    move-result v9

    .line 28
    if-eq v9, v7, :cond_1f

    .line 30
    move-object v8, v5

    .line 31
    move v7, v9

    .line 32
    :cond_1f
    invoke-interface {v0, v1, v8, p1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    move-result-object v8

    .line 36
    invoke-virtual {v8, v2, v3}, Landroid/view/View;->measure(II)V

    .line 39
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 42
    move-result v9

    .line 43
    if-le v9, v6, :cond_2d

    .line 45
    move v6, v9

    .line 46
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_15

    .line 49
    :cond_30
    return v6
.end method

.method private realDismiss()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainerController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-interface {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;->onDismiss()V

    .line 15
    :cond_e
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;

    .line 17
    if-eqz v0, :cond_15

    .line 19
    invoke-interface {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;->onDismiss()V

    .line 22
    :cond_15
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mDropDownController:Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;

    .line 24
    if-eqz v0, :cond_1c

    .line 26
    invoke-interface {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;->onDismiss()V

    .line 29
    :cond_1c
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mDismissPending:Z

    .line 32
    return-void
.end method

.method private startAnimation(FFI)V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainerController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

    .line 10
    if-nez v0, :cond_f

    .line 12
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;

    .line 14
    if-eqz v0, :cond_4e

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    .line 18
    const/4 v1, 0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x2

    .line 21
    if-nez v0, :cond_23

    .line 23
    new-array v0, v3, [F

    .line 25
    aput p1, v0, v2

    .line 27
    aput p2, v0, v1

    .line 29
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    .line 35
    goto :goto_2c

    .line 36
    :cond_23
    new-array v3, v3, [F

    .line 38
    aput p1, v3, v2

    .line 40
    aput p2, v3, v1

    .line 42
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 45
    :goto_2c
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    .line 47
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_36

    .line 53
    int-to-long p2, p3

    .line 54
    goto :goto_38

    .line 55
    :cond_36
    const-wide/16 p2, 0x0

    .line 57
    :goto_38
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 60
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    .line 62
    iget-object p2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mValueUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 64
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 67
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    .line 69
    iget-object p2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 71
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 74
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    .line 76
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 79
    :cond_4e
    return-void
.end method

.method private updateMaxWidth(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 3
    if-lez v0, :cond_d

    .line 5
    iget p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mWindowWidth:I

    .line 7
    sub-int/2addr p1, v0

    .line 8
    iget v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mEdgeDistance:I

    .line 10
    sub-int/2addr p1, v0

    .line 11
    iput p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMaxWidth:I

    .line 13
    goto :goto_23

    .line 14
    :cond_d
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 16
    if-lez p1, :cond_1a

    .line 18
    iget v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mWindowWidth:I

    .line 20
    sub-int/2addr v0, p1

    .line 21
    iget p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mEdgeDistance:I

    .line 23
    sub-int/2addr v0, p1

    .line 24
    iput v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMaxWidth:I

    .line 26
    goto :goto_23

    .line 27
    :cond_1a
    iget p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mWindowWidth:I

    .line 29
    iget v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mEdgeDistance:I

    .line 31
    mul-int/lit8 v0, v0, 0x2

    .line 33
    sub-int/2addr p1, v0

    .line 34
    iput p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMaxWidth:I

    .line 36
    :goto_23
    return-void
.end method


# virtual methods
.method public changeWindowBackground(Landroid/view/View;F)V
    .registers 5

    .line 1
    if-eqz p1, :cond_23

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 9
    if-nez v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 14
    or-int/lit8 v1, v1, 0x2

    .line 16
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 18
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p2

    .line 24
    const-string v1, "window"

    .line 26
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Landroid/view/WindowManager;

    .line 32
    invoke-interface {p2, p1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    goto :goto_2a

    .line 36
    :cond_23
    const-string p1, "DropDownPopupWindow"

    .line 38
    const-string p2, "can\'t change window dim with null view"

    .line 40
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_2a
    return-void
.end method

.method public dismiss()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mDismissPending:Z

    .line 4
    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->realDismiss()V

    .line 7
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public setAnchor(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    .line 3
    return-void
.end method

.method public setContainerController(Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainerController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

    .line 3
    return-void
.end method

.method public setContentController(Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;

    .line 3
    return-void
.end method

.method public setDropDownController(Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mDropDownController:Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;

    .line 3
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 6
    return-void
.end method

.method public setupContentView(Landroid/widget/FrameLayout;Landroid/view/View;IILmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;)I
    .registers 6

    .line 1
    if-nez p2, :cond_4

    .line 3
    const/4 p1, -0x2

    .line 4
    return p1

    .line 5
    :cond_4
    if-lez p3, :cond_a

    .line 7
    int-to-float p1, p3

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->setElevation(F)V

    .line 11
    :cond_a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    new-instance p3, Lmiuix/popupwidget/widget/DropDownPopupWindow$5;

    .line 15
    invoke-direct {p3, p0, p2}, Lmiuix/popupwidget/widget/DropDownPopupWindow$5;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;Landroid/view/View;)V

    .line 18
    invoke-virtual {p2, p3}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 21
    const/16 p3, 0x1c

    .line 23
    if-lt p1, p3, :cond_23

    .line 25
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    .line 27
    sget p3, Lmiuix/popupwidget/R$color;->miuix_appcompat_drop_down_menu_spot_shadow_color:I

    .line 29
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    .line 32
    move-result p1

    .line 33
    invoke-static {p1, p2}, Lmiuix/appcompat/app/f;->b(ILandroid/view/View;)V

    .line 36
    :cond_23
    instance-of p1, p2, Landroid/widget/ListView;

    .line 38
    if-eqz p1, :cond_2e

    .line 40
    check-cast p2, Landroid/widget/ListView;

    .line 42
    invoke-direct {p0, p2}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->measureListViewWidth(Landroid/widget/ListView;)I

    .line 45
    move-result p1

    .line 46
    goto :goto_36

    .line 47
    :cond_2e
    const/4 p1, 0x0

    .line 48
    invoke-virtual {p2, p1, p1}, Landroid/view/View;->measure(II)V

    .line 51
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 54
    move-result p1

    .line 55
    :goto_36
    if-ge p1, p4, :cond_39

    .line 57
    goto :goto_3a

    .line 58
    :cond_39
    move p4, p1

    .line 59
    :goto_3a
    return p4
.end method

.method public show()V
    .registers 10

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1b

    .line 10
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    .line 12
    if-eqz v0, :cond_14

    .line 14
    iget-object v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 16
    invoke-virtual {v2, v0, v1, v1}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    .line 19
    goto/16 :goto_b3

    .line 21
    :cond_14
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 23
    invoke-virtual {v0, v1, v1}, Landroid/widget/PopupWindow;->update(II)V

    .line 26
    goto/16 :goto_b3

    .line 28
    :cond_1b
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;

    .line 30
    const/4 v2, -0x2

    .line 31
    if-eqz v0, :cond_36

    .line 33
    invoke-interface {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;->getContentView()Landroid/view/View;

    .line 36
    move-result-object v5

    .line 37
    iput-object v5, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    .line 39
    if-eqz v5, :cond_36

    .line 41
    iget-object v4, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    .line 43
    iget v6, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mElevation:I

    .line 45
    iget v7, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMinWidth:I

    .line 47
    iget-object v8, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainerController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

    .line 49
    move-object v3, p0

    .line 50
    invoke-virtual/range {v3 .. v8}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->setupContentView(Landroid/widget/FrameLayout;Landroid/view/View;IILmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;)I

    .line 53
    move-result v0

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move v0, v2

    .line 56
    :goto_37
    iget v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMaxWidth:I

    .line 58
    if-le v0, v3, :cond_3c

    .line 60
    move v0, v3

    .line 61
    :cond_3c
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    .line 63
    iput-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    .line 65
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 67
    new-instance v4, Lmiuix/popupwidget/widget/DropDownPopupWindow$4;

    .line 69
    invoke-direct {v4, p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$4;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V

    .line 72
    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 75
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainerController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

    .line 77
    if-eqz v3, :cond_51

    .line 79
    invoke-interface {v3}, Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;->onShow()V

    .line 82
    :cond_51
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 84
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 87
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 89
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 92
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 94
    iget-object v4, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    .line 96
    if-nez v4, :cond_63

    .line 98
    const/4 v4, 0x0

    .line 99
    goto :goto_67

    .line 100
    :cond_63
    invoke-virtual {v4}, Landroid/view/View;->getElevation()F

    .line 103
    move-result v4

    .line 104
    :goto_67
    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 107
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    .line 109
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 112
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    .line 114
    iget-object v4, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    .line 116
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    .line 121
    if-eqz v3, :cond_9e

    .line 123
    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_9e

    .line 129
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 131
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 134
    iget-object v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    .line 136
    invoke-direct {p0, v2}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->getCutout(Landroid/view/View;)Landroid/graphics/Rect;

    .line 139
    move-result-object v2

    .line 140
    invoke-direct {p0, v0, v2}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->computeLocation(ILandroid/graphics/Rect;)[I

    .line 143
    move-result-object v0

    .line 144
    iget-object v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 146
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    .line 148
    aget v4, v0, v1

    .line 150
    const/4 v5, 0x1

    .line 151
    aget v0, v0, v5

    .line 153
    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 156
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    .line 158
    goto :goto_aa

    .line 159
    :cond_9e
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 161
    iget-object v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    .line 163
    const v3, 0x800033

    .line 166
    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 169
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    .line 171
    :goto_aa
    if-eqz v0, :cond_b3

    .line 173
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    .line 175
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    .line 177
    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 180
    :cond_b3
    :goto_b3
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    .line 182
    if-eqz v0, :cond_c1

    .line 184
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 187
    move-result-object v0

    .line 188
    const v1, 0x3e99999a  # 0.3f

    .line 191
    invoke-virtual {p0, v0, v1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->changeWindowBackground(Landroid/view/View;F)V

    .line 194
    :cond_c1
    return-void
.end method
