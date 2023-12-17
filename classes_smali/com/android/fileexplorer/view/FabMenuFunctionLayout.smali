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

.field private static final POS_SORT_BY_DATE:I

.field private static final POS_SORT_BY_NAME:I

.field private static final POS_SORT_BY_SIZE:I

.field private static final POS_SORT_BY_TYPE:I

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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->POS_SORT_BY_DATE:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->POS_SORT_BY_NAME:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->POS_SORT_BY_SIZE:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->POS_SORT_BY_TYPE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mIsDoAnim:Z

    iput-boolean p3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpand:Z

    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mViewType:I

    iput p3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mPos:I

    iput-boolean p3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mReverse:Z

    new-instance v0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$10;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$10;-><init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mHideTask:Ljava/lang/Runnable;

    sget-object v0, Lcom/android/fileexplorer/R$styleable;->FabMenuFunctionLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mKey:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0063

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f032ce6

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabButton:Landroid/widget/ImageView;

    const p1, 0x7f032c91

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lr/a;

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mContentLayout:Lr/a;

    const p1, 0x7f032cfa

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandViewStub:Landroid/view/ViewStub;

    new-instance p1, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$1;-><init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabButton:Landroid/widget/ImageView;

    new-instance p2, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$2;

    invoke-direct {p2, p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$2;-><init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mContentLayout:Lr/a;

    new-instance p2, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$3;

    invoke-direct {p2, p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$3;-><init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->collapse()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->expand()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)Lcom/android/fileexplorer/view/FabMenuFunctionLayout$OnItemClickListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mOnItemClickListener:Lcom/android/fileexplorer/view/FabMenuFunctionLayout$OnItemClickListener;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mIsDoAnim:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)Lr/a;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mContentLayout:Lr/a;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method private animCollapse()V
    .registers 8

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mIsDoAnim:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mCollapseState:Lmiuix/animation/controller/AnimState;

    if-nez v0, :cond_2c

    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "collapse"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mCollapseState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    iget-object v2, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mCollapseState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    iget-object v2, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    :cond_2c
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->animShowHide(Landroid/view/View;ZZJ)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabButton:Landroid/widget/ImageView;

    invoke-static {v0, v2, v2, v3, v4}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->animShowHide(Landroid/view/View;ZZJ)V

    new-array v0, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mContentLayout:Lr/a;

    aput-object v3, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget-object v3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mCollapseState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v6, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$6;

    invoke-direct {v6, p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$6;-><init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V

    aput-object v6, v2, v1

    invoke-virtual {v5, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private animExpand()V
    .registers 8

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mIsDoAnim:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->initFabExpandView()V

    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpandState:Lmiuix/animation/controller/AnimState;

    const/4 v2, 0x1

    if-nez v0, :cond_3a

    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v3, "expand"

    invoke-direct {v0, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpandState:Lmiuix/animation/controller/AnimState;

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/FabExpandView;->getDesiredSize()[I

    move-result-object v0

    iget-object v3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpandState:Lmiuix/animation/controller/AnimState;

    sget-object v4, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    aget v5, v0, v1

    int-to-double v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    iget-object v3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpandState:Lmiuix/animation/controller/AnimState;

    sget-object v4, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    aget v0, v0, v2

    int-to-double v5, v0

    invoke-virtual {v3, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    :cond_3a
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabButton:Landroid/widget/ImageView;

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v1, v3, v4}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->animShowHide(Landroid/view/View;ZZJ)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    invoke-static {v0, v2, v2, v3, v4}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->animShowHide(Landroid/view/View;ZZJ)V

    new-array v0, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mContentLayout:Lr/a;

    aput-object v3, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget-object v3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpandState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v6, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$5;

    invoke-direct {v6, p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$5;-><init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V

    aput-object v6, v2, v1

    invoke-virtual {v5, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private cancelHideTask()V
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mHideTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private collapse()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mIsDoAnim:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpand:Z

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, -0x2

    invoke-direct {p0, p0, v0, v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->setLayoutParams(Landroid/view/View;II)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->animCollapse()V

    return-void
.end method

.method private expand()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mIsDoAnim:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpand:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, -0x1

    invoke-direct {p0, p0, v0, v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->setLayoutParams(Landroid/view/View;II)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->animExpand()V

    return-void
.end method

.method private getPosBySortMethod(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)I
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$11;->$SwitchMap$com$android$fileexplorer$apptag$strategy$sort$Sorter$Method:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1a

    if-eq p1, v0, :cond_18

    const/4 v0, 0x3

    if-eq p1, v0, :cond_17

    const/4 v1, 0x4

    if-eq p1, v1, :cond_16

    const/4 p1, -0x1

    return p1

    :cond_16
    return v0

    :cond_17
    return v1

    :cond_18
    const/4 p1, 0x0

    return p1

    :cond_1a
    return v0
.end method

.method private getSavedInfo()Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mKey:Ljava/lang/String;

    const-string v4, "_"

    const-string v5, "view"

    invoke-static {v1, v3, v4, v5}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mKey:Ljava/lang/String;

    const-string v6, "position"

    invoke-static {v3, v5, v4, v6}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mKey:Ljava/lang/String;

    const-string v7, "isUp"

    invoke-static {v5, v6, v4, v7}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v3, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;

    invoke-direct {v3, v1, v2, v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;-><init>(IIZ)V

    return-object v3

    :cond_62
    const/4 v0, 0x0

    return-object v0
.end method

.method private initFabExpandView()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f032fb0

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/FabExpandView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->initData(Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpandItems:Ljava/util/List;

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    iget v1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mViewType:I

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/FabExpandView;->selectViewType(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    iget-object v1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpandItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/FabExpandView;->setData(Ljava/util/List;)V

    iget v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mPos:I

    iget-boolean v1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mReverse:Z

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->setSelectMethod(IZ)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    new-instance v1, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$4;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$4;-><init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/FabExpandView;->setOnItemClickListener(Lcom/android/fileexplorer/view/FabExpandView$OnItemClickListener;)V

    return-void
.end method

.method private isExpand()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpand:Z

    return v0
.end method

.method private setLayoutParams(Landroid/view/View;II)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setSelectMethod(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    if-nez v0, :cond_9

    iput p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mPos:I

    iput-boolean p2, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mReverse:Z

    goto :goto_c

    :cond_9
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/view/FabExpandView;->selectMethod(IZ)V

    :goto_c
    return-void
.end method

.method private setSelectViewType(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    if-nez v0, :cond_7

    iput p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mViewType:I

    goto :goto_a

    :cond_7
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/FabExpandView;->selectViewType(I)V

    :goto_a
    return-void
.end method

.method private startHideTask()V
    .registers 4

    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->cancelHideTask()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mHideTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public animFromShowToShow()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->getAnimView()Lr/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabButton:Landroid/widget/ImageView;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->animShowToShow(Landroid/view/View;Landroid/view/View;J)V

    return-void
.end method

.method public animHide()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->getAnimView()Lr/a;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$8;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$8;-><init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->animHide(Landroid/view/View;Lmiuix/animation/listener/TransitionListener;)V

    return-void
.end method

.method public animScroll(F)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x3f4ccccd  # 0.8f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    const v3, 0x3f19999a  # 0.6f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, p1, v1, v3}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animScroll factor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", scale = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", alpha = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "FabMenuFunctionLayout"

    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->getAnimView()Lr/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->getAnimView()Lr/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public animShow()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->getAnimView()Lr/a;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$9;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$9;-><init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->animShow(Landroid/view/View;Lmiuix/animation/listener/TransitionListener;)V

    return-void
.end method

.method public animShowHide(Z)V
    .registers 4

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->animShow()V

    goto :goto_15

    :cond_6
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->getAnimView()Lr/a;

    move-result-object p1

    const v0, 0x3f19999a  # 0.6f

    new-instance v1, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$7;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$7;-><init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->animHide(Landroid/view/View;FLmiuix/animation/listener/TransitionListener;)V

    :goto_15
    return-void
.end method

.method public closeIfExpand()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->isExpand()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "FabMenuFunctionLayout"

    const-string v1, "closeIfExpand start"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->collapse()V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->cancelHideTask()V

    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public getAnimView()Lr/a;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mContentLayout:Lr/a;

    return-object v0
.end method

.method public getSelectItemId()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/FabExpandView;->getSelectItemId()I

    move-result v0

    return v0
.end method

.method public getSelectViewTypeId()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/FabExpandView;->getSelectViewTypeId()I

    move-result v0

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

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_52

    new-array v1, v1, [I

    fill-array-data v1, :array_5e

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    if-eqz p1, :cond_24

    iget v5, p1, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;->pos:I

    iget-boolean p1, p1, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;->isUp:Z

    goto :goto_26

    :cond_24
    const/4 p1, 0x1

    move v5, v4

    :goto_26
    array-length v6, v0

    move v7, v4

    move v8, v7

    :goto_29
    if-ge v7, v6, :cond_51

    aget-object v9, v0, v7

    new-instance v10, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$ExpandItem;

    invoke-direct {v10}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$ExpandItem;-><init>()V

    iput-object v9, v10, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->title:Ljava/lang/String;

    if-ne v8, v5, :cond_3d

    iput-boolean p1, v10, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isUpSelect:Z

    xor-int/lit8 v9, p1, 0x1

    iput-boolean v9, v10, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isDownSelect:Z

    goto :goto_41

    :cond_3d
    iput-boolean v4, v10, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isUpSelect:Z

    iput-boolean v4, v10, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isDownSelect:Z

    :goto_41
    aget v9, v2, v8

    iput v9, v10, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->upId:I

    aget v9, v1, v8

    iput v9, v10, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->downId:I

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    :cond_51
    return-object v3

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

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mKey:Ljava/lang/String;

    const-string v3, "_"

    const-string v4, "position"

    invoke-static {v1, v2, v3, v4}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mKey:Ljava/lang/String;

    const-string v5, "isUp"

    invoke-static {v2, v4, v3, v5}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_51
    return-void
.end method

.method public saveViewTypeIfNeed(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mKey:Ljava/lang/String;

    const-string v3, "_"

    const-string v4, "view"

    invoke-static {v1, v2, v3, v4}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_40
    return-void
.end method

.method public selectMethod(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;Z)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->getPosBySortMethod(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->setSelectMethod(IZ)V

    return-void
.end method

.method public selectViewType(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->setSelectViewType(I)V

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

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/FabExpandView;->setData(Ljava/util/List;)V

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mKey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->getSavedInfo()Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;

    move-result-object p1

    if-eqz p1, :cond_3e

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpandItems:Ljava/util/List;

    if-eqz v0, :cond_3e

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$ExpandItem;

    iget v4, p1, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;->pos:I

    if-ne v2, v4, :cond_2b

    iget-boolean v4, p1, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;->isUp:Z

    iput-boolean v4, v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isUpSelect:Z

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isDownSelect:Z

    goto :goto_2f

    :cond_2b
    iput-boolean v1, v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isUpSelect:Z

    iput-boolean v1, v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isDownSelect:Z

    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_32
    iget p1, p1, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;->viewType:I

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->setSelectViewType(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mFabExpandView:Lcom/android/fileexplorer/view/FabExpandView;

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mExpandItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/FabExpandView;->setData(Ljava/util/List;)V

    :cond_3e
    return-void
.end method

.method public setOnItemClickListener(Lcom/android/fileexplorer/view/FabMenuFunctionLayout$OnItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->mOnItemClickListener:Lcom/android/fileexplorer/view/FabMenuFunctionLayout$OnItemClickListener;

    return-void
.end method
