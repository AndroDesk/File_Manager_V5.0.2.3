.class public Lcom/android/fileexplorer/view/FabMenuFunctionLayout;
.super Landroid/widget/FrameLayout;
.source "FabMenuFunctionLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;,
        Lcom/android/fileexplorer/view/FabMenuFunctionLayout$ExpandItem;,
        Lcom/android/fileexplorer/view/FabMenuFunctionLayout$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final KEY_IS_UP:Ljava/lang/String; = "isUp"

.field private static final KEY_POS:Ljava/lang/String; = "position"

.field private static final KEY_VIEW:Ljava/lang/String; = "view"

.field private static final POS_SORT_BY_DATE:I = 0x2

.field private static final POS_SORT_BY_NAME:I = 0x0

.field private static final POS_SORT_BY_SIZE:I = 0x1

.field private static final POS_SORT_BY_TYPE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FabMenuFunctionLayout"


# instance fields
.field private mCollapseState:Lmiuix/animation/controller/AnimState;

.field private mContentLayout:Lr/a;

.field private mExpand:Z

.field private mExpandItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/FabMenuFunctionLayout$ExpandItem;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandState:Lmiuix/animation/controller/AnimState;

.field private mFabButton:Landroid/widget/ImageView;

.field private mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

.field private mFabExpandViewStub:Landroid/view/ViewStub;

.field private mFloatEvaluator:Landroid/animation/FloatEvaluator;

.field private mHideTask:Ljava/lang/Runnable;

.field private mIsDoAnim:Z

.field private mKey:Ljava/lang/String;

.field private mOnItemClickListener:Lcom/android/fileexplorer/view/FabMenuFunctionLayout$OnItemClickListener;

.field private mPos:I

.field private mReverse:Z

.field private mViewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput-boolean p3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mIsDoAnim:Z

    .line 5
    iput-boolean p3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpand:Z

    .line 6
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mViewType:I

    .line 8
    iput p3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mPos:I

    .line 9
    iput-boolean p3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mReverse:Z

    .line 10
    new-instance v0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$10;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$10;-><init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mHideTask:Ljava/lang/Runnable;

    .line 11
    sget-object v0, Lcom/android/fileexplorer/R$styleable;->FabMenuFunctionLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 12
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mKey:Ljava/lang/String;

    .line 13
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0063

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0170

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabButton:Landroid/widget/ImageView;

    const p1, 0x7f0a0107

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lr/a;

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mContentLayout:Lr/a;

    const p1, 0x7f0a016c

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandViewStub:Landroid/view/ViewStub;

    .line 18
    new-instance p1, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$1;-><init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabButton:Landroid/widget/ImageView;

    new-instance p2, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$2;

    invoke-direct {p2, p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$2;-><init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mContentLayout:Lr/a;

    new-instance p2, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$3;

    invoke-direct {p2, p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$3;-><init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->collapse()V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->expand()V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)Lcom/android/fileexplorer/view/FabMenuFunctionLayout$OnItemClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mOnItemClickListener:Lcom/android/fileexplorer/view/FabMenuFunctionLayout$OnItemClickListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mIsDoAnim:Z

    .line 3
    return p1
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)Lr/a;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mContentLayout:Lr/a;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)Landroid/widget/ImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabButton:Landroid/widget/ImageView;

    .line 3
    return-object p0
.end method

.method private animCollapse()V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mIsDoAnim:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mCollapseState:Lmiuix/animation/controller/AnimState;

    .line 8
    if-nez v0, :cond_2c

    .line 10
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 12
    const-string v1, "collapse"

    .line 14
    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 17
    iput-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mCollapseState:Lmiuix/animation/controller/AnimState;

    .line 19
    sget-object v1, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    .line 21
    iget-object v2, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabButton:Landroid/widget/ImageView;

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 26
    move-result v2

    .line 27
    int-to-double v2, v2

    .line 28
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mCollapseState:Lmiuix/animation/controller/AnimState;

    .line 33
    sget-object v1, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 35
    iget-object v2, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabButton:Landroid/widget/ImageView;

    .line 37
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 40
    move-result v2

    .line 41
    int-to-double v2, v2

    .line 42
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 45
    :cond_2c
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    .line 47
    const/4 v1, 0x0

    .line 48
    const/4 v2, 0x1

    .line 49
    const-wide/16 v3, 0x0

    .line 51
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->animShowHide(Landroid/view/View;ZZJ)V

    .line 54
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabButton:Landroid/widget/ImageView;

    .line 56
    invoke-static {v0, v2, v2, v3, v4}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->animShowHide(Landroid/view/View;ZZJ)V

    .line 59
    new-array v0, v2, [Landroid/view/View;

    .line 61
    iget-object v3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mContentLayout:Lr/a;

    .line 63
    aput-object v3, v0, v1

    .line 65
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 72
    move-result-object v0

    .line 73
    iget-object v3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mCollapseState:Lmiuix/animation/controller/AnimState;

    .line 75
    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    .line 77
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    .line 79
    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 82
    new-array v2, v2, [Lmiuix/animation/listener/TransitionListener;

    .line 84
    new-instance v6, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$6;

    .line 86
    invoke-direct {v6, p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$6;-><init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V

    .line 89
    aput-object v6, v2, v1

    .line 91
    invoke-virtual {v5, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 94
    move-result-object v2

    .line 95
    aput-object v2, v4, v1

    .line 97
    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 100
    return-void
.end method

.method private animExpand()V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mIsDoAnim:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    .line 8
    if-nez v0, :cond_c

    .line 10
    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->initFabExpandView()V

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpandState:Lmiuix/animation/controller/AnimState;

    .line 21
    const/4 v2, 0x1

    .line 22
    if-nez v0, :cond_3a

    .line 24
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 26
    const-string v3, "expand"

    .line 28
    invoke-direct {v0, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 31
    iput-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpandState:Lmiuix/animation/controller/AnimState;

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    .line 35
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/FabExpandView;->getDesiredSize()[I

    .line 38
    move-result-object v0

    .line 39
    iget-object v3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpandState:Lmiuix/animation/controller/AnimState;

    .line 41
    sget-object v4, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    .line 43
    aget v5, v0, v1

    .line 45
    int-to-double v5, v5

    .line 46
    invoke-virtual {v3, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 49
    iget-object v3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpandState:Lmiuix/animation/controller/AnimState;

    .line 51
    sget-object v4, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 53
    aget v0, v0, v2

    .line 55
    int-to-double v5, v0

    .line 56
    invoke-virtual {v3, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 59
    :cond_3a
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabButton:Landroid/widget/ImageView;

    .line 61
    const-wide/16 v3, 0x0

    .line 63
    invoke-static {v0, v1, v1, v3, v4}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->animShowHide(Landroid/view/View;ZZJ)V

    .line 66
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    .line 68
    invoke-static {v0, v2, v2, v3, v4}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->animShowHide(Landroid/view/View;ZZJ)V

    .line 71
    new-array v0, v2, [Landroid/view/View;

    .line 73
    iget-object v3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mContentLayout:Lr/a;

    .line 75
    aput-object v3, v0, v1

    .line 77
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 84
    move-result-object v0

    .line 85
    iget-object v3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpandState:Lmiuix/animation/controller/AnimState;

    .line 87
    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    .line 89
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    .line 91
    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 94
    new-array v2, v2, [Lmiuix/animation/listener/TransitionListener;

    .line 96
    new-instance v6, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$5;

    .line 98
    invoke-direct {v6, p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$5;-><init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V

    .line 101
    aput-object v6, v2, v1

    .line 103
    invoke-virtual {v5, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 106
    move-result-object v2

    .line 107
    aput-object v2, v4, v1

    .line 109
    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 112
    return-void
.end method

.method private cancelHideTask()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mHideTask:Ljava/lang/Runnable;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    return-void
.end method

.method private collapse()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mIsDoAnim:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpand:Z

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    const/4 v0, -0x2

    .line 13
    invoke-direct {p0, p0, v0, v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->setLayoutParams(Landroid/view/View;II)V

    .line 16
    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->animCollapse()V

    .line 19
    return-void
.end method

.method private expand()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mIsDoAnim:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpand:Z

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    const/4 v0, -0x1

    .line 14
    invoke-direct {p0, p0, v0, v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->setLayoutParams(Landroid/view/View;II)V

    .line 17
    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->animExpand()V

    .line 20
    return-void
.end method

.method private getPosBySortMethod(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)I
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$11;->$SwitchMap$com$android$fileexplorer$apptag$strategy$sort$Sorter$Method:[I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 9
    const/4 v0, 0x2

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq p1, v1, :cond_1a

    .line 13
    if-eq p1, v0, :cond_18

    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p1, v0, :cond_17

    .line 18
    const/4 v1, 0x4

    .line 19
    if-eq p1, v1, :cond_16

    .line 21
    const/4 p1, -0x1

    .line 22
    return p1

    .line 23
    :cond_16
    return v0

    .line 24
    :cond_17
    return v1

    .line 25
    :cond_18
    const/4 p1, 0x0

    .line 26
    return p1

    .line 27
    :cond_1a
    return v0
.end method

.method private getSavedInfo()Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mKey:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_62

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, "_preferences"

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    iget-object v3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mKey:Ljava/lang/String;

    .line 46
    const-string v4, "_"

    .line 48
    const-string v5, "view"

    .line 50
    invoke-static {v1, v3, v4, v5}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    iget-object v5, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mKey:Ljava/lang/String;

    .line 61
    const-string v6, "position"

    .line 63
    invoke-static {v3, v5, v4, v6}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    iget-object v6, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mKey:Ljava/lang/String;

    .line 74
    const-string v7, "isUp"

    .line 76
    invoke-static {v5, v6, v4, v7}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v4

    .line 80
    const/4 v5, 0x1

    .line 81
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 84
    move-result v1

    .line 85
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 88
    move-result v2

    .line 89
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 92
    move-result v0

    .line 93
    new-instance v3, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;

    .line 95
    invoke-direct {v3, v1, v2, v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;-><init>(IIZ)V

    .line 98
    return-object v3

    .line 99
    :cond_62
    const/4 v0, 0x0

    .line 100
    return-object v0
.end method

.method private initFabExpandView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandViewStub:Landroid/view/ViewStub;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 6
    const v0, 0x7f0a0226

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/fileexplorer/view/FabExpandView;

    .line 15
    iput-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->initData(Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;)Ljava/util/List;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpandItems:Ljava/util/List;

    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    .line 26
    iget v1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mViewType:I

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/FabExpandView;->selectViewType(I)V

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    .line 33
    iget-object v1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpandItems:Ljava/util/List;

    .line 35
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/FabExpandView;->setData(Ljava/util/List;)V

    .line 38
    iget v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mPos:I

    .line 40
    iget-boolean v1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mReverse:Z

    .line 42
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->setSelectMethod(IZ)V

    .line 45
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    .line 47
    new-instance v1, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$4;

    .line 49
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$4;-><init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/FabExpandView;->setOnItemClickListener(Lcom/android/fileexplorer/view/FabExpandView$OnItemClickListener;)V

    .line 55
    return-void
.end method

.method private isExpand()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpand:Z

    .line 3
    return v0
.end method

.method private setLayoutParams(Landroid/view/View;II)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    return-void
.end method

.method private setSelectMethod(IZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    .line 3
    if-nez v0, :cond_9

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mPos:I

    .line 7
    iput-boolean p2, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mReverse:Z

    .line 9
    goto :goto_c

    .line 10
    :cond_9
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/view/FabExpandView;->selectMethod(IZ)V

    .line 13
    :goto_c
    return-void
.end method

.method private setSelectViewType(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    .line 3
    if-nez v0, :cond_7

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mViewType:I

    .line 7
    goto :goto_a

    .line 8
    :cond_7
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/FabExpandView;->selectViewType(I)V

    .line 11
    :goto_a
    return-void
.end method

.method private startHideTask()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->cancelHideTask()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mHideTask:Ljava/lang/Runnable;

    .line 6
    const-wide/16 v1, 0xbb8

    .line 8
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 11
    return-void
.end method


# virtual methods
.method public animFromShowToShow()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->getAnimView()Lr/a;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabButton:Landroid/widget/ImageView;

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->animShowToShow(Landroid/view/View;Landroid/view/View;J)V

    .line 12
    return-void
.end method

.method public animHide()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->getAnimView()Lr/a;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$8;

    .line 7
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$8;-><init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V

    .line 10
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->animHide(Landroid/view/View;Lmiuix/animation/listener/TransitionListener;)V

    .line 13
    return-void
.end method

.method public animScroll(F)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    .line 3
    const/high16 v1, 0x3f800000  # 1.0f

    .line 5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    move-result-object v1

    .line 9
    const v2, 0x3f4ccccd  # 0.8f

    .line 12
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 23
    move-result v0

    .line 24
    iget-object v2, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    .line 26
    const v3, 0x3f19999a  # 0.6f

    .line 29
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, p1, v1, v3}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 40
    move-result v1

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v3, "animScroll factor = "

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 54
    const-string p1, ", scale = "

    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 62
    const-string p1, ", alpha = "

    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    const-string v2, "FabMenuFunctionLayout"

    .line 76
    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabButton:Landroid/widget/ImageView;

    .line 81
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 84
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->getAnimView()Lr/a;

    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 91
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->getAnimView()Lr/a;

    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 98
    return-void
.end method

.method public animShow()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->getAnimView()Lr/a;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$9;

    .line 7
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$9;-><init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V

    .line 10
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->animShow(Landroid/view/View;Lmiuix/animation/listener/TransitionListener;)V

    .line 13
    return-void
.end method

.method public animShowHide(Z)V
    .registers 4

    .line 1
    if-eqz p1, :cond_6

    .line 3
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->animShow()V

    .line 6
    goto :goto_15

    .line 7
    :cond_6
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->getAnimView()Lr/a;

    .line 10
    move-result-object p1

    .line 11
    const v0, 0x3f19999a  # 0.6f

    .line 14
    new-instance v1, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$7;

    .line 16
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$7;-><init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V

    .line 19
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->animHide(Landroid/view/View;FLmiuix/animation/listener/TransitionListener;)V

    .line 22
    :goto_15
    return-void
.end method

.method public closeIfExpand()Z
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->isExpand()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_15

    .line 7
    const-string v0, "FabMenuFunctionLayout"

    .line 9
    const-string v1, "closeIfExpand start"

    .line 11
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->collapse()V

    .line 17
    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->cancelHideTask()V

    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public getAnimView()Lr/a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mContentLayout:Lr/a;

    .line 3
    return-object v0
.end method

.method public getSelectItemId()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/FabExpandView;->getSelectItemId()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSelectViewTypeId()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/FabExpandView;->getSelectViewTypeId()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public initData(Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/FabMenuFunctionLayout$ExpandItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f03000e

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x4

    .line 13
    new-array v2, v1, [I

    .line 15
    fill-array-data v2, :array_52

    .line 18
    new-array v1, v1, [I

    .line 20
    fill-array-data v1, :array_5e

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    .line 25
    array-length v4, v0

    .line 26
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz p1, :cond_24

    .line 32
    iget v5, p1, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;->pos:I

    .line 34
    iget-boolean p1, p1, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;->isUp:Z

    .line 36
    goto :goto_26

    .line 37
    :cond_24
    const/4 p1, 0x1

    .line 38
    move v5, v4

    .line 39
    :goto_26
    array-length v6, v0

    .line 40
    move v7, v4

    .line 41
    move v8, v7

    .line 42
    :goto_29
    if-ge v7, v6, :cond_51

    .line 44
    aget-object v9, v0, v7

    .line 46
    new-instance v10, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$ExpandItem;

    .line 48
    invoke-direct {v10}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$ExpandItem;-><init>()V

    .line 51
    iput-object v9, v10, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->title:Ljava/lang/String;

    .line 53
    if-ne v8, v5, :cond_3d

    .line 55
    iput-boolean p1, v10, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isUpSelect:Z

    .line 57
    xor-int/lit8 v9, p1, 0x1

    .line 59
    iput-boolean v9, v10, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isDownSelect:Z

    .line 61
    goto :goto_41

    .line 62
    :cond_3d
    iput-boolean v4, v10, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isUpSelect:Z

    .line 64
    iput-boolean v4, v10, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isDownSelect:Z

    .line 66
    :goto_41
    aget v9, v2, v8

    .line 68
    iput v9, v10, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->upId:I

    .line 70
    aget v9, v1, v8

    .line 72
    iput v9, v10, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->downId:I

    .line 74
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v8, v8, 0x1

    .line 79
    add-int/lit8 v7, v7, 0x1

    .line 81
    goto :goto_29

    .line 82
    :cond_51
    return-object v3

    .line 83
    :array_52
    .array-data 4
        0x7f0a03b4
        0x7f0a03b6
        0x7f0a03af
        0x7f0a03ba
    .end array-data

    :array_5e
    .array-data 4
        0x7f0a03b5
        0x7f0a03b7
        0x7f0a03b0
        0x7f0a03bb
    .end array-data
.end method

.method public saveSortMethodIfNeed(IZ)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mKey:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_51

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, "_preferences"

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    iget-object v2, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mKey:Ljava/lang/String;

    .line 46
    const-string v3, "_"

    .line 48
    const-string v4, "position"

    .line 50
    invoke-static {v1, v2, v3, v4}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    iget-object v4, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mKey:Ljava/lang/String;

    .line 61
    const-string v5, "isUp"

    .line 63
    invoke-static {v2, v4, v3, v5}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 78
    move-result-object p1

    .line 79
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    :cond_51
    return-void
.end method

.method public saveViewTypeIfNeed(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mKey:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_40

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, "_preferences"

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    iget-object v2, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mKey:Ljava/lang/String;

    .line 46
    const-string v3, "_"

    .line 48
    const-string v4, "view"

    .line 50
    invoke-static {v1, v2, v3, v4}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    :cond_40
    return-void
.end method

.method public selectMethod(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->getPosBySortMethod(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)I

    .line 4
    move-result p1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->setSelectMethod(IZ)V

    .line 8
    return-void
.end method

.method public selectViewType(I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->setSelectViewType(I)V

    .line 4
    return-void
.end method

.method public setExpandItems(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/FabMenuFunctionLayout$ExpandItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/FabExpandView;->setData(Ljava/util/List;)V

    .line 6
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mKey:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->getSavedInfo()Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_3e

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpandItems:Ljava/util/List;

    .line 11
    if-eqz v0, :cond_3e

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_32

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$ExpandItem;

    .line 31
    iget v4, p1, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;->pos:I

    .line 33
    if-ne v2, v4, :cond_2b

    .line 35
    iget-boolean v4, p1, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;->isUp:Z

    .line 37
    iput-boolean v4, v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isUpSelect:Z

    .line 39
    xor-int/lit8 v4, v4, 0x1

    .line 41
    iput-boolean v4, v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isDownSelect:Z

    .line 43
    goto :goto_2f

    .line 44
    :cond_2b
    iput-boolean v1, v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isUpSelect:Z

    .line 46
    iput-boolean v1, v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isDownSelect:Z

    .line 48
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    .line 50
    goto :goto_12

    .line 51
    :cond_32
    iget p1, p1, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;->viewType:I

    .line 53
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->setSelectViewType(I)V

    .line 56
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    .line 58
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpandItems:Ljava/util/List;

    .line 60
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/FabExpandView;->setData(Ljava/util/List;)V

    .line 63
    :cond_3e
    return-void
.end method

.method public setOnItemClickListener(Lcom/android/fileexplorer/view/FabMenuFunctionLayout$OnItemClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mOnItemClickListener:Lcom/android/fileexplorer/view/FabMenuFunctionLayout$OnItemClickListener;

    .line 3
    return-void
.end method
