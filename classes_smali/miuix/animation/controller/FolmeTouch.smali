.class public Lmiuix/animation/controller/FolmeTouch;
.super Lmiuix/animation/controller/FolmeBase;
.source "FolmeTouch.java"

# interfaces
.implements Lmiuix/animation/ITouchStyle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/controller/FolmeTouch$LongClickTask;,
        Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;,
        Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;,
        Lmiuix/animation/controller/FolmeTouch$ListViewInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCALE:F = 0.9f

.field private static final SCALE_DIS:I = 0xa

.field private static sTouchRecord:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClearTint:Z

.field private mClickInvoked:Z

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mDefListener:Lmiuix/animation/listener/TransitionListener;

.field private mDownConfig:Lmiuix/animation/base/AnimConfig;

.field private mDownWeight:I

.field private mDownX:F

.field private mDownY:F

.field private mFontStyle:Lmiuix/animation/controller/FolmeFont;

.field private mGlobalBoundInWindow:Landroid/graphics/Rect;

.field private mIsDown:Z

.field private mListView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationInScreen:[I

.field private mLongClickInvoked:Z

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

.field private mRootGlobalBoundInWindow:Landroid/graphics/Rect;

.field private mScaleDist:F

.field private mScaleSetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/animation/ITouchStyle$TouchType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSetTint:Z

.field private mTouchIndex:I

.field private mTouchView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mUpConfig:Lmiuix/animation/base/AnimConfig;

.field private mUpWeight:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 6
    sput-object v0, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    .line 8
    return-void
.end method

.method public varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeBase;-><init>([Lmiuix/animation/IAnimTarget;)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mGlobalBoundInWindow:Landroid/graphics/Rect;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 16
    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mRootGlobalBoundInWindow:Landroid/graphics/Rect;

    .line 18
    const/4 v0, 0x2

    .line 19
    new-array v1, v0, [I

    .line 21
    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mLocationInScreen:[I

    .line 23
    new-instance v1, Landroid/util/ArrayMap;

    .line 25
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 28
    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    .line 30
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 32
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 35
    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    .line 37
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 39
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 42
    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mUpConfig:Lmiuix/animation/base/AnimConfig;

    .line 44
    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lmiuix/animation/controller/FolmeTouch;->mClearTint:Z

    .line 47
    new-instance v2, Lmiuix/animation/controller/FolmeTouch$1;

    .line 49
    invoke-direct {v2, p0}, Lmiuix/animation/controller/FolmeTouch$1;-><init>(Lmiuix/animation/controller/FolmeTouch;)V

    .line 52
    iput-object v2, p0, Lmiuix/animation/controller/FolmeTouch;->mDefListener:Lmiuix/animation/listener/TransitionListener;

    .line 54
    array-length v2, p1

    .line 55
    if-lez v2, :cond_3b

    .line 57
    aget-object p1, p1, v1

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    const/4 p1, 0x0

    .line 61
    :goto_3c
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->initScaleDist(Lmiuix/animation/IAnimTarget;)V

    .line 64
    sget-object p1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 66
    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 68
    iget-object v3, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 70
    sget-object v4, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    .line 72
    invoke-interface {v3, v4}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 75
    move-result-object v3

    .line 76
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 78
    invoke-virtual {v3, p1, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1, v2, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 85
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->setTintColor()V

    .line 88
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    .line 90
    new-array v2, v0, [F

    .line 92
    fill-array-data v2, :array_8a

    .line 95
    const/4 v3, -0x2

    .line 96
    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {p1, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 103
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    .line 105
    const/4 v2, 0x1

    .line 106
    new-array v2, v2, [Lmiuix/animation/listener/TransitionListener;

    .line 108
    iget-object v4, p0, Lmiuix/animation/controller/FolmeTouch;->mDefListener:Lmiuix/animation/listener/TransitionListener;

    .line 110
    aput-object v4, v2, v1

    .line 112
    invoke-virtual {p1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 115
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mUpConfig:Lmiuix/animation/base/AnimConfig;

    .line 117
    new-array v1, v0, [F

    .line 119
    fill-array-data v1, :array_92

    .line 122
    invoke-virtual {p1, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 125
    move-result-object p1

    .line 126
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 128
    const-wide/16 v2, -0x2

    .line 130
    new-array v0, v0, [F

    .line 132
    fill-array-data v0, :array_9a

    .line 135
    invoke-virtual {p1, v1, v2, v3, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;J[F)Lmiuix/animation/base/AnimConfig;

    .line 138
    return-void

    .line 139
    :array_8a
    .array-data 4
        0x3f7d70a4  # 0.99f
        0x3e19999a  # 0.15f
    .end array-data

    :array_92
    .array-data 4
        0x3f7d70a4  # 0.99f
        0x3e99999a  # 0.3f
    .end array-data

    :array_9a
    .array-data 4
        0x3f666666  # 0.9f
        0x3e4ccccd  # 0.2f
    .end array-data
.end method

.method public static synthetic access$000(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->bindListView(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$100(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->resetViewTouch(Landroid/view/View;Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->invokeClick(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lmiuix/animation/controller/FolmeTouch;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    .line 3
    return p0
.end method

.method public static synthetic access$400(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->invokeLongClick(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->onEventUp([Lmiuix/animation/base/AnimConfig;)V

    .line 4
    return-void
.end method

.method public static synthetic access$700(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 4
    return-void
.end method

.method public static synthetic access$900(Lmiuix/animation/controller/FolmeTouch;)Landroid/view/View$OnLongClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 3
    return-object p0
.end method

.method private varargs bindListView(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_36

    .line 10
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->getListViewInfo(Landroid/view/View;)Lmiuix/animation/controller/FolmeTouch$ListViewInfo;

    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_36

    .line 16
    iget-object v2, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    .line 18
    if-eqz v2, :cond_36

    .line 20
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2f

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v3, "handleListViewTouch for "

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    new-array v1, v1, [Ljava/lang/Object;

    .line 45
    invoke-static {v2, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :cond_2f
    iget-object v0, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    .line 50
    invoke-direct {p0, v0, p1, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->handleListViewTouch(Landroid/widget/AbsListView;Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V

    .line 53
    const/4 p1, 0x1

    .line 54
    return p1

    .line 55
    :cond_36
    return v1
.end method

.method private varargs doHandleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z[Lmiuix/animation/base/AnimConfig;)V
    .registers 12

    .line 1
    invoke-direct {p0, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->setClickAndLongClickListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 4
    invoke-direct {p0, p1, p5}, Lmiuix/animation/controller/FolmeTouch;->handleViewTouch(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 7
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->setTouchView(Landroid/view/View;)Z

    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_3e

    .line 13
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_29

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string p3, "handleViewTouch for "

    .line 26
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    const/4 p3, 0x0

    .line 37
    new-array p3, p3, [Ljava/lang/Object;

    .line 39
    invoke-static {p2, p3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :cond_29
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    .line 45
    move-result v5

    .line 46
    const/4 p2, 0x1

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 50
    new-instance p2, Lmiuix/animation/controller/FolmeTouch$3;

    .line 52
    move-object v0, p2

    .line 53
    move-object v1, p0

    .line 54
    move v2, p4

    .line 55
    move-object v3, p1

    .line 56
    move-object v4, p5

    .line 57
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/controller/FolmeTouch$3;-><init>(Lmiuix/animation/controller/FolmeTouch;ZLandroid/view/View;[Lmiuix/animation/base/AnimConfig;Z)V

    .line 60
    invoke-static {p1, p2}, Lmiuix/animation/utils/CommonUtils;->runOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 63
    :cond_3e
    return-void
.end method

.method private varargs getDownConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 4
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    invoke-static {p1, v0}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, [Lmiuix/animation/base/AnimConfig;

    .line 15
    return-object p1
.end method

.method private getListViewInfo(Landroid/view/View;)Lmiuix/animation/controller/FolmeTouch$ListViewInfo;
    .registers 6

    .line 1
    new-instance v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;-><init>(Lmiuix/animation/controller/FolmeTouch$1;)V

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    move-result-object v2

    .line 11
    :goto_a
    if-eqz v2, :cond_20

    .line 13
    instance-of v3, v2, Landroid/widget/AbsListView;

    .line 15
    if-eqz v3, :cond_14

    .line 17
    move-object v1, v2

    .line 18
    check-cast v1, Landroid/widget/AbsListView;

    .line 20
    goto :goto_20

    .line 21
    :cond_14
    instance-of v3, v2, Landroid/view/View;

    .line 23
    if-eqz v3, :cond_1b

    .line 25
    move-object p1, v2

    .line 26
    check-cast p1, Landroid/view/View;

    .line 28
    :cond_1b
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 31
    move-result-object v2

    .line 32
    goto :goto_a

    .line 33
    :cond_20
    :goto_20
    if-eqz v1, :cond_2f

    .line 35
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 37
    iget-object v3, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    .line 39
    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 42
    iput-object v2, p0, Lmiuix/animation/controller/FolmeTouch;->mListView:Ljava/lang/ref/WeakReference;

    .line 44
    iput-object v1, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    .line 46
    iput-object p1, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->itemView:Landroid/view/View;

    .line 48
    :cond_2f
    return-object v0
.end method

.method public static getListViewTouchListener(Landroid/widget/AbsListView;)Lmiuix/animation/controller/ListViewTouchListener;
    .registers 2

    .line 1
    sget v0, Lmiuix/folme/R$id;->miuix_animation_tag_touch_listener:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmiuix/animation/controller/ListViewTouchListener;

    .line 9
    return-object p0
.end method

.method private varargs getType([Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle$TouchType;
    .registers 3

    .line 1
    array-length v0, p1

    .line 2
    if-lez v0, :cond_7

    .line 4
    const/4 v0, 0x0

    .line 5
    aget-object p1, p1, v0

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    sget-object p1, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    .line 10
    :goto_9
    return-object p1
.end method

.method private varargs getUpConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 4
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mUpConfig:Lmiuix/animation/base/AnimConfig;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    invoke-static {p1, v0}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, [Lmiuix/animation/base/AnimConfig;

    .line 15
    return-object p1
.end method

.method private handleClick(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    .line 3
    if-eqz v0, :cond_2c

    .line 5
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    .line 7
    if-eqz v0, :cond_2c

    .line 9
    iget v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchIndex:I

    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 14
    move-result v1

    .line 15
    if-ne v0, v1, :cond_2c

    .line 17
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 19
    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 22
    move-result-object v0

    .line 23
    instance-of v1, v0, Lmiuix/animation/ViewTarget;

    .line 25
    if-eqz v1, :cond_2c

    .line 27
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->isInTouchSlop(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2c

    .line 33
    check-cast v0, Lmiuix/animation/ViewTarget;

    .line 35
    invoke-virtual {v0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 42
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->invokeClick(Landroid/view/View;)V

    .line 45
    :cond_2c
    return-void
.end method

.method private varargs handleListViewTouch(Landroid/widget/AbsListView;Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V
    .registers 7

    .line 1
    invoke-static {p1}, Lmiuix/animation/controller/FolmeTouch;->getListViewTouchListener(Landroid/widget/AbsListView;)Lmiuix/animation/controller/ListViewTouchListener;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_10

    .line 7
    new-instance v0, Lmiuix/animation/controller/ListViewTouchListener;

    .line 9
    invoke-direct {v0, p1}, Lmiuix/animation/controller/ListViewTouchListener;-><init>(Landroid/widget/AbsListView;)V

    .line 12
    sget v1, Lmiuix/folme/R$id;->miuix_animation_tag_touch_listener:I

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 17
    :cond_10
    if-eqz p3, :cond_15

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 22
    :cond_15
    new-instance p1, Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;

    .line 24
    invoke-direct {p1, p0, p4}, Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;-><init>(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V

    .line 27
    invoke-virtual {v0, p2, p1}, Lmiuix/animation/controller/ListViewTouchListener;->putListener(Landroid/view/View;Landroid/view/View$OnTouchListener;)V

    .line 30
    return-void
.end method

.method private varargs handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .registers 6

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_18

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_11

    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_d

    .line 13
    goto :goto_14

    .line 14
    :cond_d
    invoke-direct {p0, p2, p1, p3}, Lmiuix/animation/controller/FolmeTouch;->onEventMove(Landroid/view/MotionEvent;Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 17
    goto :goto_1e

    .line 18
    :cond_11
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->handleClick(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 21
    :goto_14
    invoke-direct {p0, p3}, Lmiuix/animation/controller/FolmeTouch;->onEventUp([Lmiuix/animation/base/AnimConfig;)V

    .line 24
    goto :goto_1e

    .line 25
    :cond_18
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeTouch;->recordDownEvent(Landroid/view/MotionEvent;)V

    .line 28
    invoke-direct {p0, p3}, Lmiuix/animation/controller/FolmeTouch;->onEventDown([Lmiuix/animation/base/AnimConfig;)V

    .line 31
    :goto_1e
    return-void
.end method

.method private varargs handleViewTouch(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .registers 5

    .line 1
    sget-object v0, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;

    .line 9
    if-nez v0, :cond_15

    .line 11
    new-instance v0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;-><init>(Lmiuix/animation/controller/FolmeTouch$1;)V

    .line 17
    sget-object v1, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    .line 19
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_15
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 25
    invoke-virtual {v0, p0, p2}, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->addTouch(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V

    .line 28
    return-void
.end method

.method private initScaleDist(Lmiuix/animation/IAnimTarget;)V
    .registers 4

    .line 1
    instance-of v0, p1, Lmiuix/animation/ViewTarget;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    check-cast p1, Lmiuix/animation/ViewTarget;

    .line 7
    invoke-virtual {p1}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    :goto_c
    if-eqz p1, :cond_1f

    .line 15
    const/4 v0, 0x1

    .line 16
    const/high16 v1, 0x41200000  # 10.0f

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 25
    move-result-object p1

    .line 26
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleDist:F

    .line 32
    :cond_1f
    return-void
.end method

.method private invokeClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickInvoked:Z

    .line 3
    if-nez v0, :cond_10

    .line 5
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    .line 7
    if-nez v0, :cond_10

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickInvoked:Z

    .line 12
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    .line 14
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 17
    :cond_10
    return-void
.end method

.method private invokeLongClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    .line 3
    if-nez v0, :cond_c

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    .line 8
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 10
    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 13
    :cond_c
    return-void
.end method

.method private isInTouchSlop(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 8
    move-result p2

    .line 9
    iget v1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownX:F

    .line 11
    iget v2, p0, Lmiuix/animation/controller/FolmeTouch;->mDownY:F

    .line 13
    invoke-static {v1, v2, v0, p2}, Lmiuix/animation/utils/CommonUtils;->getDistance(FFFF)D

    .line 16
    move-result-wide v0

    .line 17
    invoke-static {p1}, Lmiuix/animation/utils/CommonUtils;->getTouchSlop(Landroid/view/View;)F

    .line 20
    move-result p1

    .line 21
    float-to-double p1, p1

    .line 22
    cmpg-double p1, v0, p1

    .line 24
    if-gez p1, :cond_1b

    .line 26
    const/4 p1, 0x1

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    const/4 p1, 0x0

    .line 29
    :goto_1c
    return p1
.end method

.method public static isOnTouchView(Landroid/view/View;[ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_32

    .line 4
    invoke-virtual {p0, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_13

    .line 13
    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 16
    invoke-virtual {v1, p3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 19
    goto :goto_19

    .line 20
    :cond_13
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 23
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 26
    :goto_19
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    .line 29
    move-result p0

    .line 30
    float-to-int p0, p0

    .line 31
    const/4 v1, 0x0

    .line 32
    aget v1, p1, v1

    .line 34
    sub-int/2addr p0, v1

    .line 35
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    .line 38
    move-result p4

    .line 39
    float-to-int p4, p4

    .line 40
    aget p1, p1, v0

    .line 42
    sub-int/2addr p4, p1

    .line 43
    iget p1, p3, Landroid/graphics/Rect;->top:I

    .line 45
    add-int/2addr p4, p1

    .line 46
    invoke-virtual {p2, p0, p4}, Landroid/graphics/Rect;->contains(II)Z

    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_32
    return v0
.end method

.method private isScaleSet(Lmiuix/animation/ITouchStyle$TouchType;)Z
    .registers 4

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    .line 5
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method private varargs onEventDown([Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    const-string v1, "onEventDown, touchDown"

    .line 12
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_e
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    .line 18
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->touchDown([Lmiuix/animation/base/AnimConfig;)V

    .line 21
    return-void
.end method

.method private varargs onEventMove(Landroid/view/MotionEvent;Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    .line 3
    if-eqz v0, :cond_26

    .line 5
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLocationInScreen:[I

    .line 7
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mGlobalBoundInWindow:Landroid/graphics/Rect;

    .line 9
    iget-object v2, p0, Lmiuix/animation/controller/FolmeTouch;->mRootGlobalBoundInWindow:Landroid/graphics/Rect;

    .line 11
    invoke-static {p2, v0, v1, v2, p1}, Lmiuix/animation/controller/FolmeTouch;->isOnTouchView(Landroid/view/View;[ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/MotionEvent;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_17

    .line 17
    invoke-virtual {p0, p3}, Lmiuix/animation/controller/FolmeTouch;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    .line 20
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->resetTouchStatus()V

    .line 23
    goto :goto_26

    .line 24
    :cond_17
    iget-object p3, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    .line 26
    if-eqz p3, :cond_26

    .line 28
    invoke-direct {p0, p2, p1}, Lmiuix/animation/controller/FolmeTouch;->isInTouchSlop(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_26

    .line 34
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    .line 36
    invoke-virtual {p1, p0}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;->stop(Lmiuix/animation/controller/FolmeTouch;)V

    .line 39
    :cond_26
    :goto_26
    return-void
.end method

.method private varargs onEventUp([Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    .line 3
    if-eqz v0, :cond_18

    .line 5
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_12

    .line 11
    const/4 v0, 0x0

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    const-string v1, "onEventUp, touchUp"

    .line 16
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :cond_12
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    .line 22
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->resetTouchStatus()V

    .line 25
    :cond_18
    return-void
.end method

.method private recordDownEvent(Landroid/view/MotionEvent;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    .line 3
    if-nez v0, :cond_8

    .line 5
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 7
    if-eqz v0, :cond_22

    .line 9
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchIndex:I

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownX:F

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownY:F

    .line 27
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeTouch;->mClickInvoked:Z

    .line 30
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    .line 32
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->startLongClickTask()V

    .line 35
    :cond_22
    return-void
.end method

.method private resetTouchStatus()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;->stop(Lmiuix/animation/controller/FolmeTouch;)V

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    .line 11
    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchIndex:I

    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownX:F

    .line 16
    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownY:F

    .line 18
    return-void
.end method

.method private resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/view/View;

    .line 7
    if-eqz p1, :cond_c

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 13
    :cond_c
    return-object p1
.end method

.method private resetViewTouch(Landroid/view/View;Z)V
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 4
    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8
    return-void
.end method

.method private setClickAndLongClickListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lmiuix/animation/ViewTarget;

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_12

    .line 12
    check-cast v0, Lmiuix/animation/ViewTarget;

    .line 14
    invoke-virtual {v0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move-object v0, v2

    .line 20
    :goto_13
    if-nez v0, :cond_16

    .line 22
    return-void

    .line 23
    :cond_16
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    .line 25
    if-eqz v1, :cond_20

    .line 27
    if-nez p1, :cond_20

    .line 29
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    goto :goto_2a

    .line 33
    :cond_20
    if-eqz p1, :cond_2a

    .line 35
    new-instance v1, Lmiuix/animation/controller/FolmeTouch$4;

    .line 37
    invoke-direct {v1, p0}, Lmiuix/animation/controller/FolmeTouch$4;-><init>(Lmiuix/animation/controller/FolmeTouch;)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    :cond_2a
    :goto_2a
    iput-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    .line 45
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 47
    if-eqz p1, :cond_36

    .line 49
    if-nez p2, :cond_36

    .line 51
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 54
    goto :goto_40

    .line 55
    :cond_36
    if-eqz p2, :cond_40

    .line 57
    new-instance p1, Lmiuix/animation/controller/FolmeTouch$5;

    .line 59
    invoke-direct {p1, p0}, Lmiuix/animation/controller/FolmeTouch$5;-><init>(Lmiuix/animation/controller/FolmeTouch;)V

    .line 62
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 65
    :cond_40
    :goto_40
    iput-object p2, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 67
    return-void
.end method

.method private setHoverCorner(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Landroid/view/View;

    .line 13
    if-eqz v1, :cond_19

    .line 15
    check-cast v0, Landroid/view/View;

    .line 17
    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_hover_corners:I

    .line 19
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 26
    :cond_19
    return-void
.end method

.method private setTargetValue(ILjava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Landroid/view/View;

    .line 13
    if-eqz v1, :cond_13

    .line 15
    check-cast v0, Landroid/view/View;

    .line 17
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 20
    :cond_13
    return-void
.end method

.method private setTintColor()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mSetTint:Z

    .line 3
    if-nez v0, :cond_45

    .line 5
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClearTint:Z

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_45

    .line 10
    :cond_9
    const/16 v0, 0x14

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 19
    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    instance-of v2, v1, Landroid/view/View;

    .line 29
    if-eqz v2, :cond_2a

    .line 31
    check-cast v1, Landroid/view/View;

    .line 33
    sget v0, Lmiuix/folme/R$color;->miuix_folme_color_touch_tint:I

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 42
    move-result v0

    .line 43
    :cond_2a
    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 45
    iget-object v2, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 47
    sget-object v3, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    .line 49
    invoke-interface {v2, v3}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 52
    move-result-object v2

    .line 53
    int-to-double v3, v0

    .line 54
    invoke-virtual {v2, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 57
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 59
    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    .line 61
    invoke-interface {v0, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 64
    move-result-object v0

    .line 65
    const-wide/16 v2, 0x0

    .line 67
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 70
    :cond_45
    :goto_45
    return-void
.end method

.method private setTouchView(Landroid/view/View;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    if-ne v0, p1, :cond_10

    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_10
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 19
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22
    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

    .line 24
    const/4 p1, 0x1

    .line 25
    return p1
.end method

.method private startLongClickTask()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    .line 8
    if-nez v0, :cond_11

    .line 10
    new-instance v0, Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;-><init>(Lmiuix/animation/controller/FolmeTouch$1;)V

    .line 16
    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    .line 18
    :cond_11
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    .line 20
    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;->start(Lmiuix/animation/controller/FolmeTouch;)V

    .line 23
    return-void
.end method


# virtual methods
.method public varargs bindViewOfListItem(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->setTouchView(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance v0, Lmiuix/animation/controller/FolmeTouch$2;

    .line 10
    invoke-direct {v0, p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch$2;-><init>(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 13
    invoke-static {p1, v0}, Lmiuix/animation/utils/CommonUtils;->runOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method public cancel()V
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/animation/controller/FolmeBase;->cancel()V

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lmiuix/animation/controller/FolmeBase;->cancel()V

    .line 11
    :cond_a
    return-void
.end method

.method public clean()V
    .registers 4

    .line 1
    invoke-super {p0}, Lmiuix/animation/controller/FolmeBase;->clean()V

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lmiuix/animation/controller/FolmeFont;->clean()V

    .line 11
    :cond_a
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 16
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_19

    .line 21
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeTouch;->resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;

    .line 24
    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

    .line 26
    :cond_19
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mListView:Ljava/lang/ref/WeakReference;

    .line 28
    if-eqz v0, :cond_2a

    .line 30
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeTouch;->resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_28

    .line 36
    sget v2, Lmiuix/folme/R$id;->miuix_animation_tag_touch_listener:I

    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 41
    :cond_28
    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mListView:Ljava/lang/ref/WeakReference;

    .line 43
    :cond_2a
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->resetTouchStatus()V

    .line 46
    return-void
.end method

.method public clearTintColor()Lmiuix/animation/ITouchStyle;
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClearTint:Z

    .line 4
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 6
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 8
    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    .line 10
    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 17
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 19
    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    .line 21
    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 28
    return-object p0
.end method

.method public varargs handleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;[Lmiuix/animation/base/AnimConfig;)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/controller/FolmeTouch;->doHandleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs handleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;[Lmiuix/animation/base/AnimConfig;)V
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/controller/FolmeTouch;->doHandleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs handleTouchOf(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    .line 4
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/controller/FolmeTouch;->doHandleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lmiuix/animation/controller/FolmeTouch;->handleTouchOf(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public ignoreTouchOf(Landroid/view/View;)V
    .registers 3

    .line 1
    sget-object v0, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;

    .line 9
    if-eqz v0, :cond_15

    .line 11
    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->removeTouch(Lmiuix/animation/controller/FolmeTouch;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_15

    .line 17
    sget-object v0, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_15
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v1, p1, v0}, Lmiuix/animation/controller/FolmeTouch;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 8
    return-void
.end method

.method public varargs onMotionEventEx(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 4
    return-void
.end method

.method public varargs setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeTouch;->getType([Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle$TouchType;

    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 10
    move-result-object p2

    .line 11
    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 13
    float-to-double v1, p1

    .line 14
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 17
    return-object p0
.end method

.method public setBackgroundColor(FFFF)Lmiuix/animation/ITouchStyle;
    .registers 6

    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    mul-float/2addr p4, v0

    float-to-int p4, p4

    .line 6
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->setBackgroundColor(I)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundColor(I)Lmiuix/animation/ITouchStyle;
    .registers 6

    .line 1
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    .line 2
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    int-to-double v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 3
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p1, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 4
    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->getValueOfTarget(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-double v1, v1

    .line 5
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setFontStyle(Lmiuix/animation/controller/FolmeFont;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    .line 3
    return-void
.end method

.method public varargs setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;
    .registers 6

    .line 1
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeTouch;->getType([Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle$TouchType;

    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    .line 7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 14
    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 17
    move-result-object p2

    .line 18
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 20
    float-to-double v1, p1

    .line 21
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 24
    move-result-object p1

    .line 25
    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 27
    invoke-virtual {p1, p2, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 30
    return-object p0
.end method

.method public setTint(FFFF)Lmiuix/animation/ITouchStyle;
    .registers 6

    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    mul-float/2addr p4, v0

    float-to-int p4, p4

    .line 4
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->setTint(I)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    return-object p1
.end method

.method public setTint(I)Lmiuix/animation/ITouchStyle;
    .registers 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mSetTint:Z

    if-nez p1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 2
    :goto_7
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClearTint:Z

    .line 3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    int-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setTintMode(I)Lmiuix/animation/ITouchStyle;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setTintMode(I)Lmiuix/animation/base/AnimConfig;

    .line 6
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mUpConfig:Lmiuix/animation/base/AnimConfig;

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setTintMode(I)Lmiuix/animation/base/AnimConfig;

    .line 11
    return-object p0
.end method

.method public setTouchDown()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->setTintColor()V

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 6
    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    .line 8
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 11
    return-void
.end method

.method public setTouchPadding(FFFF)Lmiuix/animation/ITouchStyle;
    .registers 7

    .line 1
    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_padding_rect:I

    .line 3
    new-instance v1, Landroid/graphics/RectF;

    .line 5
    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 8
    invoke-direct {p0, v0, v1}, Lmiuix/animation/controller/FolmeTouch;->setTargetValue(ILjava/lang/Object;)V

    .line 11
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect_location_mode:I

    .line 13
    const/4 p2, 0x4

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object p2

    .line 18
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->setTargetValue(ILjava/lang/Object;)V

    .line 21
    return-object p0
.end method

.method public setTouchRadius(F)Lmiuix/animation/ITouchStyle;
    .registers 3

    .line 1
    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_corners:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lmiuix/animation/controller/FolmeTouch;->setTargetValue(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setTouchRadius(FFFF)Lmiuix/animation/ITouchStyle;
    .registers 7

    .line 2
    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_corners:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, v0, v1}, Lmiuix/animation/controller/FolmeTouch;->setTargetValue(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setTouchRect(Landroid/graphics/RectF;Lmiuix/animation/ITouchStyle$TouchRectGravity;)Lmiuix/animation/ITouchStyle;
    .registers 4

    .line 1
    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect:I

    .line 3
    invoke-direct {p0, v0, p1}, Lmiuix/animation/controller/FolmeTouch;->setTargetValue(ILjava/lang/Object;)V

    .line 6
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect_gravity:I

    .line 8
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->setTargetValue(ILjava/lang/Object;)V

    .line 11
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect_location_mode:I

    .line 13
    const/16 p2, 0x1008

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p2

    .line 19
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->setTargetValue(ILjava/lang/Object;)V

    .line 22
    return-object p0
.end method

.method public setTouchUp()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    .line 5
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 8
    return-void
.end method

.method public varargs touchDown([Lmiuix/animation/base/AnimConfig;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeTouch;->setHoverCorner(F)V

    .line 5
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->setTintColor()V

    .line 8
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->getDownConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    .line 14
    if-eqz v0, :cond_14

    .line 16
    iget v1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownWeight:I

    .line 18
    invoke-virtual {v0, v1, p1}, Lmiuix/animation/controller/FolmeFont;->to(I[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IVarFontStyle;

    .line 21
    :cond_14
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 23
    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    .line 25
    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p0, v1}, Lmiuix/animation/controller/FolmeTouch;->isScaleSet(Lmiuix/animation/ITouchStyle$TouchType;)Z

    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_50

    .line 35
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 37
    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 40
    move-result-object v1

    .line 41
    sget-object v2, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    .line 43
    invoke-virtual {v1, v2}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 46
    move-result v2

    .line 47
    sget-object v3, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 49
    invoke-virtual {v1, v3}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 52
    move-result v1

    .line 53
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 56
    move-result v1

    .line 57
    iget v2, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleDist:F

    .line 59
    sub-float v2, v1, v2

    .line 61
    div-float/2addr v2, v1

    .line 62
    const v1, 0x3f666666  # 0.9f

    .line 65
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 68
    move-result v1

    .line 69
    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 71
    float-to-double v3, v1

    .line 72
    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 75
    move-result-object v1

    .line 76
    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 78
    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 81
    :cond_50
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 83
    invoke-interface {v1, v0, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 86
    return-void
.end method

.method public varargs touchUp([Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->getUpConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    .line 7
    if-eqz v0, :cond_d

    .line 9
    iget v1, p0, Lmiuix/animation/controller/FolmeTouch;->mUpWeight:I

    .line 11
    invoke-virtual {v0, v1, p1}, Lmiuix/animation/controller/FolmeFont;->to(I[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IVarFontStyle;

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 16
    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    .line 18
    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, v1, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 25
    return-void
.end method

.method public useVarFont(Landroid/widget/TextView;III)Lmiuix/animation/ITouchStyle;
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iput p3, p0, Lmiuix/animation/controller/FolmeTouch;->mUpWeight:I

    .line 7
    iput p4, p0, Lmiuix/animation/controller/FolmeTouch;->mDownWeight:I

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/animation/controller/FolmeFont;->useAt(Landroid/widget/TextView;II)Lmiuix/animation/IVarFontStyle;

    .line 12
    :cond_b
    return-object p0
.end method
