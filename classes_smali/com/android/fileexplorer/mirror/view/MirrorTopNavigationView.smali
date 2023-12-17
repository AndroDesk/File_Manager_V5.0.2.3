.class public Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "MirrorTopNavigationView.java"

# interfaces
.implements Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView$onSortItemClickListener;
.implements Landroid/view/View$OnHoverListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorTopNavigationView"


# instance fields
.field private btn_back:Landroid/view/View;

.field private btn_forward:Landroid/view/View;

.field private mClShowTypeView:Landroid/view/View;

.field private mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

.field private mElevation:I

.field private mGridView:Landroid/view/View;

.field private mIvClear:Landroid/widget/ImageView;

.field private mIvRefreshView:Landroid/widget/ImageView;

.field private mIvSortDesc:Landroid/widget/ImageView;

.field private mLastSearch:Ljava/lang/String;

.field private mListView:Landroid/view/View;

.field private mNewFile:Landroid/view/View;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mRefreshAnimator:Landroid/animation/ObjectAnimator;

.field private mSearchInputView:Landroid/widget/EditText;

.field private mSearchRoot:Landroid/view/View;

.field private mSearchTask:Ljava/lang/Runnable;

.field private mSortContentView:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;

.field private mTipPopupWindow:Landroid/widget/PopupWindow;

.field private mTvSortDesc:Landroid/widget/TextView;

.field private mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->initView()V

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->onClearClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;)Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mIvClear:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->lambda$showPopupWindow$3()V

    return-void
.end method

.method public static synthetic c(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->onGridTypeClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->onNewFileClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;Landroid/view/View;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->lambda$initSearchView$4(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic f(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->onListTypeClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->lambda$initView$0(Landroid/view/View;)V

    return-void
.end method

.method private getRefreshAnimator()Landroid/animation/ObjectAnimator;
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mRefreshAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mIvRefreshView:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_28

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mRefreshAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mRefreshAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mRefreshAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_25
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mRefreshAnimator:Landroid/animation/ObjectAnimator;

    return-object v0

    :array_28
    .array-data 4
        0x0
        0x43b40000  # 360.0f
    .end array-data
.end method

.method private getShowTypeMenuId(I)I
    .registers 3

    const/16 v0, 0x32

    if-ne v0, p1, :cond_8

    const p1, 0x7f0a026e

    return p1

    :cond_8
    const p1, 0x7f0a026d

    return p1
.end method

.method private getTips(Landroid/view/View;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_8b

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_8e

    :pswitch_9  #0x7f0a048f, 0x7f0a0491, 0x7f0a0492, 0x7f0a0494, 0x7f0a0495, 0x7f0a0497
    goto/16 :goto_8b

    :pswitch_b  #0x7f0a0498
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f182fda

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8d

    :pswitch_1b  #0x7f0a0496
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f182fdd

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8d

    :pswitch_2b  #0x7f0a0493
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f182fdc

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8d

    :pswitch_3b  #0x7f0a0490
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f182fdf

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8d

    :pswitch_4b  #0x7f0a048e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f182fde

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8d

    :pswitch_5b  #0x7f0a048d
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f182fd1

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8d

    :pswitch_6b  #0x7f0a048c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f182fd0

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8d

    :pswitch_7b  #0x7f0a048b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f182fd3

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8d

    :cond_8b
    :goto_8b
    const-string p1, ""

    :goto_8d
    return-object p1

    :pswitch_data_8e
    .packed-switch 0x7f0a048b
        :pswitch_7b  #7f0a048b
        :pswitch_6b  #7f0a048c
        :pswitch_5b  #7f0a048d
        :pswitch_4b  #7f0a048e
        :pswitch_9  #7f0a048f
        :pswitch_3b  #7f0a0490
        :pswitch_9  #7f0a0491
        :pswitch_9  #7f0a0492
        :pswitch_2b  #7f0a0493
        :pswitch_9  #7f0a0494
        :pswitch_9  #7f0a0495
        :pswitch_1b  #7f0a0496
        :pswitch_9  #7f0a0497
        :pswitch_b  #7f0a0498
    .end packed-switch
.end method

.method public static synthetic h(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->onCloudClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->onRefreshClick(Landroid/view/View;)V

    return-void
.end method

.method private initSearchView()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setShowSoftInputOnFocus(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    new-instance v1, Lcom/android/fileexplorer/mirror/view/i;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/view/i;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView$1;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private initView()V
    .registers 15

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d00cf

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroidx/lifecycle/c0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/f0;

    invoke-direct {v1, v2}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    const-class v2, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    const v1, 0x7f032d2f

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_back:Landroid/view/View;

    const v1, 0x7f032d2a

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_forward:Landroid/view/View;

    const v1, 0x1020009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    const v0, 0x7f032f85

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    const v0, 0x7f032f80

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    const v0, 0x7f032f8e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mIvRefreshView:Landroid/widget/ImageView;

    const v0, 0x7f032c0c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f032d73

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    const v1, 0x7f0329fa

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTvSortDesc:Landroid/widget/TextView;

    const v1, 0x7f032f8d

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mIvSortDesc:Landroid/widget/ImageView;

    const v1, 0x7f032d2e

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mNewFile:Landroid/view/View;

    const v1, 0x7f032f8c

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mIvClear:Landroid/widget/ImageView;

    const v1, 0x7f032ee0

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchRoot:Landroid/view/View;

    const v1, 0x7f032d2c

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v3

    new-array v4, v5, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-interface {v3, v6, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    new-array v7, v5, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v3, v4, v7}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v3, v2, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v3

    new-array v4, v5, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v3, v6, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    new-array v7, v5, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v3, v4, v7}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v3, v2, [Landroid/view/View;

    aput-object v0, v3, v5

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v3

    new-array v4, v5, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v3, v6, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v3

    new-array v4, v5, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v3, v0, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v3, v2, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v3

    new-array v4, v5, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v3, v6, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    new-array v7, v5, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v3, v4, v7}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v3, v2, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_forward:Landroid/view/View;

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v3

    new-array v4, v5, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v3, v6, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_forward:Landroid/view/View;

    new-array v7, v5, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v3, v4, v7}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v3, v2, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_back:Landroid/view/View;

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v3

    new-array v4, v5, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v3, v6, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_back:Landroid/view/View;

    new-array v7, v5, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v3, v4, v7}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v3, v2, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mNewFile:Landroid/view/View;

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v3

    new-array v4, v5, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v3, v6, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mNewFile:Landroid/view/View;

    new-array v7, v5, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v3, v4, v7}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v3, v2, [Landroid/view/View;

    aput-object v1, v3, v5

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v3

    new-array v4, v5, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v3, v6, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v3

    new-array v4, v5, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v3, v1, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    new-instance v4, Lcom/android/fileexplorer/mirror/view/j;

    invoke-direct {v4, p0, v5}, Lcom/android/fileexplorer/mirror/view/j;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    new-instance v4, Lcom/android/fileexplorer/mirror/view/j;

    invoke-direct {v4, p0, v2}, Lcom/android/fileexplorer/mirror/view/j;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/android/fileexplorer/mirror/view/j;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/android/fileexplorer/mirror/view/j;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mNewFile:Landroid/view/View;

    new-instance v6, Lcom/android/fileexplorer/mirror/view/j;

    const/4 v7, 0x3

    invoke-direct {v6, p0, v7}, Lcom/android/fileexplorer/mirror/view/j;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mIvClear:Landroid/widget/ImageView;

    new-instance v6, Lcom/android/fileexplorer/mirror/view/j;

    const/4 v8, 0x4

    invoke-direct {v6, p0, v8}, Lcom/android/fileexplorer/mirror/view/j;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/android/fileexplorer/mirror/view/j;

    const/4 v6, 0x5

    invoke-direct {v3, p0, v6}, Lcom/android/fileexplorer/mirror/view/j;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mNewFile:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    sget-object v3, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;->FILE_APP_TAG:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    iput-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    iget-object v9, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    new-instance v10, Lcom/android/fileexplorer/mirror/view/j;

    const/4 v11, 0x6

    invoke-direct {v10, p0, v11}, Lcom/android/fileexplorer/mirror/view/j;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;I)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_back:Landroid/view/View;

    new-instance v10, Lcom/android/fileexplorer/mirror/view/j;

    const/4 v12, 0x7

    invoke-direct {v10, p0, v12}, Lcom/android/fileexplorer/mirror/view/j;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;I)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_forward:Landroid/view/View;

    new-instance v10, Lcom/android/fileexplorer/mirror/view/j;

    const/16 v13, 0x8

    invoke-direct {v10, p0, v13}, Lcom/android/fileexplorer/mirror/view/j;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;I)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0702d8

    invoke-static {v9, v10}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v9

    iput v9, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mElevation:I

    iget-object v9, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_back:Landroid/view/View;

    invoke-virtual {v9, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_forward:Landroid/view/View;

    invoke-virtual {v9, v5}, Landroid/view/View;->setEnabled(Z)V

    iput-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->initSearchView()V

    const v3, 0x7f03291a

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    const v3, 0x7f032918

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    const v3, 0x7f032906

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    const v3, 0x7f032905

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    const v3, 0x7f03291b

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    const v3, 0x7f03291d

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    const v3, 0x7f032900

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    const v3, 0x7f03290e

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_back:Landroid/view/View;

    new-instance v9, Lcom/android/fileexplorer/mirror/view/k;

    invoke-direct {v9, p0, v13}, Lcom/android/fileexplorer/mirror/view/k;-><init>(Landroid/view/ViewGroup;I)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_forward:Landroid/view/View;

    new-instance v9, Lcom/android/fileexplorer/mirror/view/k;

    invoke-direct {v9, p0, v5}, Lcom/android/fileexplorer/mirror/view/k;-><init>(Landroid/view/ViewGroup;I)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    new-instance v5, Lcom/android/fileexplorer/mirror/view/k;

    invoke-direct {v5, p0, v2}, Lcom/android/fileexplorer/mirror/view/k;-><init>(Landroid/view/ViewGroup;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    new-instance v3, Lcom/android/fileexplorer/mirror/view/k;

    invoke-direct {v3, p0, v4}, Lcom/android/fileexplorer/mirror/view/k;-><init>(Landroid/view/ViewGroup;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v2, Lcom/android/fileexplorer/mirror/view/k;

    invoke-direct {v2, p0, v7}, Lcom/android/fileexplorer/mirror/view/k;-><init>(Landroid/view/ViewGroup;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mNewFile:Landroid/view/View;

    new-instance v2, Lcom/android/fileexplorer/mirror/view/k;

    invoke-direct {v2, p0, v8}, Lcom/android/fileexplorer/mirror/view/k;-><init>(Landroid/view/ViewGroup;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v1, Lcom/android/fileexplorer/mirror/view/k;

    invoke-direct {v1, p0, v6}, Lcom/android/fileexplorer/mirror/view/k;-><init>(Landroid/view/ViewGroup;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    new-instance v1, Lcom/android/fileexplorer/mirror/view/k;

    invoke-direct {v1, p0, v11}, Lcom/android/fileexplorer/mirror/view/k;-><init>(Landroid/view/ViewGroup;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    new-instance v1, Lcom/android/fileexplorer/mirror/view/k;

    invoke-direct {v1, p0, v12}, Lcom/android/fileexplorer/mirror/view/k;-><init>(Landroid/view/ViewGroup;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->lambda$initView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->lambda$initView$1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$initSearchView$4(Landroid/view/View;Z)V
    .registers 5

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchRoot:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_c

    const p2, 0x7f08068f

    goto :goto_f

    :cond_c
    const p2, 0x7f080688

    :goto_f
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->showPopupWindow()V

    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->forward_model:Landroidx/lifecycle/q;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$initView$2(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->forward_model:Landroidx/lifecycle/q;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showPopupWindow$3()V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    const v1, 0x7f080688

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mIvSortDesc:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private needHideFocus(Landroid/view/MotionEvent;)Z
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_48

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, v2, v1

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v0, v0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_45

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_45

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_45

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v0, v4

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_46

    :cond_45
    move v1, v3

    :cond_46
    return v1

    nop

    :array_48
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private onClearClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    if-eqz p1, :cond_9

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method private onCloudClick(Landroid/view/View;)V
    .registers 3

    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->openMiCloudOnSynergy(Landroid/content/Context;)I

    return-void
.end method

.method private onGridTypeClick(Landroid/view/View;)V
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    move-result p1

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->menuId:Landroidx/lifecycle/q;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_15

    return-void

    :cond_15
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->menuId:Landroidx/lifecycle/q;

    const v0, 0x7f0a026d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    const v0, 0x7f08066f

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    const v0, 0x7f08068a

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private onHoverEnter(Landroid/view/View;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->getTips(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTipPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    if-nez v1, :cond_23

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTipPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTipPopupWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    :cond_23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0d00c5

    invoke-static {v1, v3, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0329f6

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTipPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTipPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTipPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTipPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mElevation:I

    sub-int/2addr v1, v2

    rsub-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTipPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->update()V

    :cond_63
    return-void
.end method

.method private onHoverExit(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTipPopupWindow:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_7
    return-void
.end method

.method private onListTypeClick(Landroid/view/View;)V
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    move-result p1

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->menuId:Landroidx/lifecycle/q;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_15

    return-void

    :cond_15
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->menuId:Landroidx/lifecycle/q;

    const v0, 0x7f0a026e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    const v0, 0x7f08066f

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    const v0, 0x7f08068a

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private onNewFileClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->menuId:Landroidx/lifecycle/q;

    const v0, 0x7f0a01eb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    return-void
.end method

.method private onRefreshClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->menuId:Landroidx/lifecycle/q;

    const v0, 0x7f0a01ec

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    return-void
.end method

.method private varargs refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSortContentView:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;

    if-nez v0, :cond_f

    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSortContentView:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;

    :cond_f
    if-eqz p1, :cond_38

    if-eqz p2, :cond_38

    array-length v0, p2

    if-nez v0, :cond_17

    goto :goto_38

    :cond_17
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTvSortDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mIvSortDesc:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSortContentView:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;

    invoke-virtual {v0, p2, p1}, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->refreshSortView([Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTvSortDesc:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSortContentView:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->getItemDesc(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_48

    :cond_38
    :goto_38
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTvSortDesc:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mIvSortDesc:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :goto_48
    return-void
.end method

.method private setShowTypeEnable(ZZI)V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f08068a

    const v1, 0x7f08066f

    if-eq p1, p2, :cond_2f

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    invoke-virtual {v2, p2}, Landroid/view/View;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    if-eqz p2, :cond_22

    move p2, v0

    goto :goto_23

    :cond_22
    move p2, v1

    :goto_23
    invoke-virtual {v2, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    if-eqz p1, :cond_2b

    move v1, v0

    :cond_2b
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_44

    :cond_2f
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_44
    const p1, 0x7f0a026e

    const/4 p2, 0x1

    if-ne p3, p1, :cond_55

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_64

    :cond_55
    const p1, 0x7f0a026d

    if-ne p3, p1, :cond_64

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_64
    :goto_64
    return-void
.end method

.method private showPopupWindow()V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_56

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSortContentView:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;

    if-nez v0, :cond_20

    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSortContentView:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;

    :cond_20
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSortContentView:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mElevation:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSortContentView:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->setOnSortItemClickListener(Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView$onSortItemClickListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/android/fileexplorer/mirror/view/c;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lcom/android/fileexplorer/mirror/view/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_56
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    iget v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mElevation:I

    neg-int v5, v4

    neg-int v4, v4

    div-int/2addr v4, v1

    invoke-virtual {v0, v3, v5, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    new-array v0, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mIvSortDesc:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    aput-object v3, v1, v4

    const/high16 v3, 0x43340000  # 180.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    const v1, 0x7f08068b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public handleFocus(Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->needHideFocus(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_b
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_11

    const/16 v0, 0xa

    if-eq p2, v0, :cond_d

    goto :goto_14

    :cond_d
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->onHoverExit(Landroid/view/View;)V

    goto :goto_14

    :cond_11
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->onHoverEnter(Landroid/view/View;)V

    :goto_14
    const/4 p1, 0x0

    return p1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onKey: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MirrorTopNavigationView"

    invoke-static {p3, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x42

    if-eq p2, p1, :cond_1f

    const/16 p1, 0xa0

    if-eq p2, p1, :cond_1f

    goto :goto_66

    :cond_1f
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_66

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    new-instance p2, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    invoke-direct {p2}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;-><init>()V

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->SearchResult:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->id(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    new-instance p1, Lcom/android/fileexplorer/mirror/events/SearchKeyEvent;

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/fileexplorer/mirror/events/SearchKeyEvent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const-string p1, "onKeyUp: return true, go to search"

    invoke-static {p3, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_66
    :goto_66
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyEnter(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onKey: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MirrorTopNavigationView"

    invoke-static {p3, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x42

    if-eq p2, p1, :cond_20

    const/16 p1, 0xa0

    if-eq p2, p1, :cond_20

    const/4 p1, 0x0

    return p1

    :cond_20
    const/4 p1, 0x1

    return p1
.end method

.method public onSortItemClick(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->menuId:Landroidx/lifecycle/q;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->showMenuLayoutByPage(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    :cond_2d
    return-void
.end method

.method public refreshLoadingState(Z)V
    .registers 4

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->getRefreshAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mRefreshAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mIvRefreshView:Landroid/widget/ImageView;

    if-eqz p1, :cond_e

    const v1, 0x7f080267

    goto :goto_11

    :cond_e
    const v1, 0x7f080266

    :goto_11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mRefreshAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mRefreshAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_31

    :cond_24
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mRefreshAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mRefreshAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    :cond_31
    :goto_31
    return-void
.end method

.method public setPathBtnEnabled(I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPathBtnEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorTopNavigationView"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_44

    const/4 v1, 0x1

    if-eq p1, v1, :cond_39

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_23

    goto :goto_4e

    :cond_23
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_forward:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_back:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4e

    :cond_2e
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_forward:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_back:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4e

    :cond_39
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_forward:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_back:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4e

    :cond_44
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_forward:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_back:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :goto_4e
    return-void
.end method

.method public showMenuLayoutByPage(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V
    .registers 11

    const-string v0, "showMenuLayoutByPage page = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorTopNavigationView"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->refreshState:Landroidx/lifecycle/q;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    sget-object v0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView$2;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_184

    :pswitch_32  #0x10
    goto/16 :goto_174

    :pswitch_34  #0x11
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v0

    new-array v1, v2, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TIME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    invoke-direct {p0, v7, v8, v4}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    goto/16 :goto_174

    :pswitch_56  #0xd, 0xe, 0xf
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v0

    new-array v1, v2, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    invoke-direct {p0, v7, v8, v4}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    goto/16 :goto_174

    :pswitch_78  #0xc
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v0

    new-array v1, v2, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TIME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    invoke-direct {p0, v8, v7, v4}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    goto/16 :goto_174

    :pswitch_9a  #0xb
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v0

    new-array v1, v2, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    invoke-direct {p0, v7, v8, v4}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    goto/16 :goto_174

    :pswitch_bc  #0xa
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v0

    new-array v1, v5, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v6

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->getShowTypeMenuId(I)I

    move-result v0

    invoke-direct {p0, v8, v8, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    goto/16 :goto_174

    :pswitch_de  #0x9
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v0

    new-array v1, v5, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v6

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->getShowTypeMenuId(I)I

    move-result v0

    invoke-direct {p0, v8, v8, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    goto/16 :goto_174

    :pswitch_100  #0x8
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v0

    new-array v1, v3, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    sget-object v0, Lcom/android/fileexplorer/util/WpsSupportUtil;->WPS_APP_MI_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->hasInstalledApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_125

    invoke-direct {p0, v7, v7, v4}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    goto :goto_174

    :cond_125
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->getShowTypeMenuId(I)I

    move-result v0

    invoke-direct {p0, v8, v8, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    goto :goto_174

    :pswitch_131  #0x7
    invoke-direct {p0, v7, v8, v4}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    new-array v0, v7, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-direct {p0, v1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    goto :goto_174

    :pswitch_13a  #0x5, 0x6
    invoke-direct {p0, v8, v7, v4}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    new-array v0, v7, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-direct {p0, v1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    goto :goto_174

    :pswitch_143  #0x4
    invoke-direct {p0, v8, v7, v4}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    new-array v0, v7, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-direct {p0, v1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    goto :goto_174

    :pswitch_14c  #0x1, 0x2, 0x3
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v0

    new-array v1, v2, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->getShowTypeMenuId(I)I

    move-result v0

    invoke-direct {p0, v8, v8, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    :goto_174
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mNewFile:Landroid/view/View;

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    if-eq p1, v1, :cond_17e

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picker:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    if-ne p1, v1, :cond_17f

    :cond_17e
    move v7, v8

    :cond_17f
    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    return-void

    nop

    :pswitch_data_184
    .packed-switch 0x1
        :pswitch_14c  #00000001
        :pswitch_14c  #00000002
        :pswitch_14c  #00000003
        :pswitch_143  #00000004
        :pswitch_13a  #00000005
        :pswitch_13a  #00000006
        :pswitch_131  #00000007
        :pswitch_100  #00000008
        :pswitch_de  #00000009
        :pswitch_bc  #0000000a
        :pswitch_9a  #0000000b
        :pswitch_78  #0000000c
        :pswitch_56  #0000000d
        :pswitch_56  #0000000e
        :pswitch_56  #0000000f
        :pswitch_32  #00000010
        :pswitch_34  #00000011
    .end packed-switch
.end method
