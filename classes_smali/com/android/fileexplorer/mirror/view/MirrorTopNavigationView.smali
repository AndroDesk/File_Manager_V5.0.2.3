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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
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

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;)Landroid/widget/ImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mIvClear:Landroid/widget/ImageView;

    .line 3
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mRefreshAnimator:Landroid/animation/ObjectAnimator;

    .line 3
    if-nez v0, :cond_25

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mIvRefreshView:Landroid/widget/ImageView;

    .line 7
    sget-object v1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v2, v2, [F

    .line 12
    fill-array-data v2, :array_28

    .line 15
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mRefreshAnimator:Landroid/animation/ObjectAnimator;

    .line 21
    const/4 v1, -0x1

    .line 22
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mRefreshAnimator:Landroid/animation/ObjectAnimator;

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mRefreshAnimator:Landroid/animation/ObjectAnimator;

    .line 33
    const-wide/16 v1, 0x3e8

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 38
    :cond_25
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mRefreshAnimator:Landroid/animation/ObjectAnimator;

    .line 40
    return-object v0

    .line 41
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

    .line 1
    if-eqz p1, :cond_6a

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    move-result p1

    .line 7
    packed-switch p1, :pswitch_data_6e

    .line 10
    :pswitch_9  #0x7f0a048f, 0x7f0a0491, 0x7f0a0492, 0x7f0a0494, 0x7f0a0495, 0x7f0a0497
    goto :goto_6a

    .line 11
    :pswitch_a  #0x7f0a0498
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object p1

    .line 15
    const v0, 0x7f11024c

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    goto :goto_6c

    .line 23
    :pswitch_16  #0x7f0a0496
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p1

    .line 27
    const v0, 0x7f11024b

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    goto :goto_6c

    .line 35
    :pswitch_22  #0x7f0a0493
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object p1

    .line 39
    const v0, 0x7f11024a

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    goto :goto_6c

    .line 47
    :pswitch_2e  #0x7f0a0490
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object p1

    .line 51
    const v0, 0x7f110249

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    goto :goto_6c

    .line 59
    :pswitch_3a  #0x7f0a048e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 62
    move-result-object p1

    .line 63
    const v0, 0x7f110248

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    goto :goto_6c

    .line 71
    :pswitch_46  #0x7f0a048d
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 74
    move-result-object p1

    .line 75
    const v0, 0x7f110247

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    goto :goto_6c

    .line 83
    :pswitch_52  #0x7f0a048c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 86
    move-result-object p1

    .line 87
    const v0, 0x7f110246

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    goto :goto_6c

    .line 95
    :pswitch_5e  #0x7f0a048b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 98
    move-result-object p1

    .line 99
    const v0, 0x7f110245

    .line 102
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    goto :goto_6c

    .line 107
    :cond_6a
    :goto_6a
    const-string p1, ""

    .line 109
    :goto_6c
    return-object p1

    .line 110
    nop

    .line 111
    :pswitch_data_6e
    .packed-switch 0x7f0a048b
        :pswitch_5e  #7f0a048b
        :pswitch_52  #7f0a048c
        :pswitch_46  #7f0a048d
        :pswitch_3a  #7f0a048e
        :pswitch_9  #7f0a048f
        :pswitch_2e  #7f0a0490
        :pswitch_9  #7f0a0491
        :pswitch_9  #7f0a0492
        :pswitch_22  #7f0a0493
        :pswitch_9  #7f0a0494
        :pswitch_9  #7f0a0495
        :pswitch_16  #7f0a0496
        :pswitch_9  #7f0a0497
        :pswitch_a  #7f0a0498
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setShowSoftInputOnFocus(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    .line 9
    new-instance v1, Lcom/android/fileexplorer/mirror/view/i;

    .line 11
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/view/i;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    .line 19
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView$1;

    .line 21
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView$1;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;)V

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 27
    return-void
.end method

.method private initView()V
    .registers 15

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d00cf

    .line 8
    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Landroidx/lifecycle/c0;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroidx/lifecycle/f0;

    .line 20
    invoke-direct {v1, v2}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    .line 23
    const-class v2, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 25
    invoke-virtual {v1, v2}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 31
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 33
    const v1, 0x7f0a00b9

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_back:Landroid/view/View;

    .line 42
    const v1, 0x7f0a00bc

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v1

    .line 49
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_forward:Landroid/view/View;

    .line 51
    const v1, 0x1020009

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/EditText;

    .line 60
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    .line 62
    const v0, 0x7f0a0213

    .line 65
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    .line 71
    const v0, 0x7f0a0216

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    .line 80
    const v0, 0x7f0a0218

    .line 83
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Landroid/widget/ImageView;

    .line 89
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mIvRefreshView:Landroid/widget/ImageView;

    .line 91
    const v0, 0x7f0a019a

    .line 94
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object v0

    .line 98
    const v1, 0x7f0a00e5

    .line 101
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    move-result-object v1

    .line 105
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    .line 107
    const v1, 0x7f0a046c

    .line 110
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Landroid/widget/TextView;

    .line 116
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTvSortDesc:Landroid/widget/TextView;

    .line 118
    const v1, 0x7f0a021b

    .line 121
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Landroid/widget/ImageView;

    .line 127
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mIvSortDesc:Landroid/widget/ImageView;

    .line 129
    const v1, 0x7f0a00b8

    .line 132
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    move-result-object v1

    .line 136
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mNewFile:Landroid/view/View;

    .line 138
    const v1, 0x7f0a021a

    .line 141
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    move-result-object v1

    .line 145
    check-cast v1, Landroid/widget/ImageView;

    .line 147
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mIvClear:Landroid/widget/ImageView;

    .line 149
    const v1, 0x7f0a0376

    .line 152
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    move-result-object v1

    .line 156
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchRoot:Landroid/view/View;

    .line 158
    const v1, 0x7f0a00ba

    .line 161
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    move-result-object v1

    .line 165
    const/4 v2, 0x1

    .line 166
    new-array v3, v2, [Landroid/view/View;

    .line 168
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    .line 170
    const/4 v5, 0x0

    .line 171
    aput-object v4, v3, v5

    .line 173
    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 176
    move-result-object v3

    .line 177
    invoke-interface {v3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 180
    move-result-object v3

    .line 181
    new-array v4, v5, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 183
    const/high16 v6, 0x3f800000  # 1.0f

    .line 185
    invoke-interface {v3, v6, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 188
    move-result-object v3

    .line 189
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    .line 191
    new-array v7, v5, [Lmiuix/animation/base/AnimConfig;

    .line 193
    invoke-interface {v3, v4, v7}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 196
    new-array v3, v2, [Landroid/view/View;

    .line 198
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    .line 200
    aput-object v4, v3, v5

    .line 202
    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 205
    move-result-object v3

    .line 206
    invoke-interface {v3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 209
    move-result-object v3

    .line 210
    new-array v4, v5, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 212
    invoke-interface {v3, v6, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 215
    move-result-object v3

    .line 216
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    .line 218
    new-array v7, v5, [Lmiuix/animation/base/AnimConfig;

    .line 220
    invoke-interface {v3, v4, v7}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 223
    new-array v3, v2, [Landroid/view/View;

    .line 225
    aput-object v0, v3, v5

    .line 227
    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 230
    move-result-object v3

    .line 231
    invoke-interface {v3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 234
    move-result-object v3

    .line 235
    new-array v4, v5, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 237
    invoke-interface {v3, v6, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 240
    move-result-object v3

    .line 241
    new-array v4, v5, [Lmiuix/animation/base/AnimConfig;

    .line 243
    invoke-interface {v3, v0, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 246
    new-array v3, v2, [Landroid/view/View;

    .line 248
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    .line 250
    aput-object v4, v3, v5

    .line 252
    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 255
    move-result-object v3

    .line 256
    invoke-interface {v3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 259
    move-result-object v3

    .line 260
    new-array v4, v5, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 262
    invoke-interface {v3, v6, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 265
    move-result-object v3

    .line 266
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    .line 268
    new-array v7, v5, [Lmiuix/animation/base/AnimConfig;

    .line 270
    invoke-interface {v3, v4, v7}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 273
    new-array v3, v2, [Landroid/view/View;

    .line 275
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_forward:Landroid/view/View;

    .line 277
    aput-object v4, v3, v5

    .line 279
    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 282
    move-result-object v3

    .line 283
    invoke-interface {v3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 286
    move-result-object v3

    .line 287
    new-array v4, v5, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 289
    invoke-interface {v3, v6, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 292
    move-result-object v3

    .line 293
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_forward:Landroid/view/View;

    .line 295
    new-array v7, v5, [Lmiuix/animation/base/AnimConfig;

    .line 297
    invoke-interface {v3, v4, v7}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 300
    new-array v3, v2, [Landroid/view/View;

    .line 302
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_back:Landroid/view/View;

    .line 304
    aput-object v4, v3, v5

    .line 306
    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 309
    move-result-object v3

    .line 310
    invoke-interface {v3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 313
    move-result-object v3

    .line 314
    new-array v4, v5, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 316
    invoke-interface {v3, v6, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 319
    move-result-object v3

    .line 320
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_back:Landroid/view/View;

    .line 322
    new-array v7, v5, [Lmiuix/animation/base/AnimConfig;

    .line 324
    invoke-interface {v3, v4, v7}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 327
    new-array v3, v2, [Landroid/view/View;

    .line 329
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mNewFile:Landroid/view/View;

    .line 331
    aput-object v4, v3, v5

    .line 333
    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 336
    move-result-object v3

    .line 337
    invoke-interface {v3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 340
    move-result-object v3

    .line 341
    new-array v4, v5, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 343
    invoke-interface {v3, v6, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 346
    move-result-object v3

    .line 347
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mNewFile:Landroid/view/View;

    .line 349
    new-array v7, v5, [Lmiuix/animation/base/AnimConfig;

    .line 351
    invoke-interface {v3, v4, v7}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 354
    new-array v3, v2, [Landroid/view/View;

    .line 356
    aput-object v1, v3, v5

    .line 358
    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 361
    move-result-object v3

    .line 362
    invoke-interface {v3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 365
    move-result-object v3

    .line 366
    new-array v4, v5, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 368
    invoke-interface {v3, v6, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 371
    move-result-object v3

    .line 372
    new-array v4, v5, [Lmiuix/animation/base/AnimConfig;

    .line 374
    invoke-interface {v3, v1, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 377
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    .line 379
    new-instance v4, Lcom/android/fileexplorer/mirror/view/j;

    .line 381
    invoke-direct {v4, p0, v5}, Lcom/android/fileexplorer/mirror/view/j;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;I)V

    .line 384
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    .line 389
    new-instance v4, Lcom/android/fileexplorer/mirror/view/j;

    .line 391
    invoke-direct {v4, p0, v2}, Lcom/android/fileexplorer/mirror/view/j;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;I)V

    .line 394
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    new-instance v3, Lcom/android/fileexplorer/mirror/view/j;

    .line 399
    const/4 v4, 0x2

    .line 400
    invoke-direct {v3, p0, v4}, Lcom/android/fileexplorer/mirror/view/j;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;I)V

    .line 403
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mNewFile:Landroid/view/View;

    .line 408
    new-instance v6, Lcom/android/fileexplorer/mirror/view/j;

    .line 410
    const/4 v7, 0x3

    .line 411
    invoke-direct {v6, p0, v7}, Lcom/android/fileexplorer/mirror/view/j;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;I)V

    .line 414
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mIvClear:Landroid/widget/ImageView;

    .line 419
    new-instance v6, Lcom/android/fileexplorer/mirror/view/j;

    .line 421
    const/4 v8, 0x4

    .line 422
    invoke-direct {v6, p0, v8}, Lcom/android/fileexplorer/mirror/view/j;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;I)V

    .line 425
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    new-instance v3, Lcom/android/fileexplorer/mirror/view/j;

    .line 430
    const/4 v6, 0x5

    .line 431
    invoke-direct {v3, p0, v6}, Lcom/android/fileexplorer/mirror/view/j;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;I)V

    .line 434
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mNewFile:Landroid/view/View;

    .line 439
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 442
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    .line 444
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 447
    sget-object v3, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;->FILE_APP_TAG:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 449
    iput-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 451
    iget-object v9, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    .line 453
    new-instance v10, Lcom/android/fileexplorer/mirror/view/j;

    .line 455
    const/4 v11, 0x6

    .line 456
    invoke-direct {v10, p0, v11}, Lcom/android/fileexplorer/mirror/view/j;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;I)V

    .line 459
    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    iget-object v9, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_back:Landroid/view/View;

    .line 464
    new-instance v10, Lcom/android/fileexplorer/mirror/view/j;

    .line 466
    const/4 v12, 0x7

    .line 467
    invoke-direct {v10, p0, v12}, Lcom/android/fileexplorer/mirror/view/j;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;I)V

    .line 470
    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    iget-object v9, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_forward:Landroid/view/View;

    .line 475
    new-instance v10, Lcom/android/fileexplorer/mirror/view/j;

    .line 477
    const/16 v13, 0x8

    .line 479
    invoke-direct {v10, p0, v13}, Lcom/android/fileexplorer/mirror/view/j;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;I)V

    .line 482
    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 488
    move-result-object v9

    .line 489
    const v10, 0x7f0702d8

    .line 492
    invoke-static {v9, v10}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    .line 495
    move-result v9

    .line 496
    iput v9, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mElevation:I

    .line 498
    iget-object v9, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_back:Landroid/view/View;

    .line 500
    invoke-virtual {v9, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 503
    iget-object v9, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_forward:Landroid/view/View;

    .line 505
    invoke-virtual {v9, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 508
    iput-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 510
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->initSearchView()V

    .line 513
    const v3, 0x7f0a048c

    .line 516
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 519
    move-result-object v3

    .line 520
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 523
    const v3, 0x7f0a048e

    .line 526
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 529
    move-result-object v3

    .line 530
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 533
    const v3, 0x7f0a0490

    .line 536
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 539
    move-result-object v3

    .line 540
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 543
    const v3, 0x7f0a0493

    .line 546
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 549
    move-result-object v3

    .line 550
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 553
    const v3, 0x7f0a048d

    .line 556
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 559
    move-result-object v3

    .line 560
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 563
    const v3, 0x7f0a048b

    .line 566
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 569
    move-result-object v3

    .line 570
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 573
    const v3, 0x7f0a0496

    .line 576
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 579
    move-result-object v3

    .line 580
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 583
    const v3, 0x7f0a0498

    .line 586
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 589
    move-result-object v3

    .line 590
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 593
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_back:Landroid/view/View;

    .line 595
    new-instance v9, Lcom/android/fileexplorer/mirror/view/k;

    .line 597
    invoke-direct {v9, p0, v13}, Lcom/android/fileexplorer/mirror/view/k;-><init>(Landroid/view/ViewGroup;I)V

    .line 600
    invoke-virtual {v3, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 603
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_forward:Landroid/view/View;

    .line 605
    new-instance v9, Lcom/android/fileexplorer/mirror/view/k;

    .line 607
    invoke-direct {v9, p0, v5}, Lcom/android/fileexplorer/mirror/view/k;-><init>(Landroid/view/ViewGroup;I)V

    .line 610
    invoke-virtual {v3, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 613
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    .line 615
    new-instance v5, Lcom/android/fileexplorer/mirror/view/k;

    .line 617
    invoke-direct {v5, p0, v2}, Lcom/android/fileexplorer/mirror/view/k;-><init>(Landroid/view/ViewGroup;I)V

    .line 620
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 623
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    .line 625
    new-instance v3, Lcom/android/fileexplorer/mirror/view/k;

    .line 627
    invoke-direct {v3, p0, v4}, Lcom/android/fileexplorer/mirror/view/k;-><init>(Landroid/view/ViewGroup;I)V

    .line 630
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 633
    new-instance v2, Lcom/android/fileexplorer/mirror/view/k;

    .line 635
    invoke-direct {v2, p0, v7}, Lcom/android/fileexplorer/mirror/view/k;-><init>(Landroid/view/ViewGroup;I)V

    .line 638
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 641
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mNewFile:Landroid/view/View;

    .line 643
    new-instance v2, Lcom/android/fileexplorer/mirror/view/k;

    .line 645
    invoke-direct {v2, p0, v8}, Lcom/android/fileexplorer/mirror/view/k;-><init>(Landroid/view/ViewGroup;I)V

    .line 648
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 651
    new-instance v1, Lcom/android/fileexplorer/mirror/view/k;

    .line 653
    invoke-direct {v1, p0, v6}, Lcom/android/fileexplorer/mirror/view/k;-><init>(Landroid/view/ViewGroup;I)V

    .line 656
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 659
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    .line 661
    new-instance v1, Lcom/android/fileexplorer/mirror/view/k;

    .line 663
    invoke-direct {v1, p0, v11}, Lcom/android/fileexplorer/mirror/view/k;-><init>(Landroid/view/ViewGroup;I)V

    .line 666
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 669
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    .line 671
    new-instance v1, Lcom/android/fileexplorer/mirror/view/k;

    .line 673
    invoke-direct {v1, p0, v12}, Lcom/android/fileexplorer/mirror/view/k;-><init>(Landroid/view/ViewGroup;I)V

    .line 676
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 679
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

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchRoot:Landroid/view/View;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    if-eqz p2, :cond_c

    .line 9
    const p2, 0x7f08068f

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    const p2, 0x7f080688

    .line 16
    :goto_f
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, p2, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 24
    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->showPopupWindow()V

    .line 4
    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->forward_model:Landroidx/lifecycle/q;

    .line 5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method private synthetic lambda$initView$2(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->forward_model:Landroidx/lifecycle/q;

    .line 5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method private synthetic lambda$showPopupWindow$3()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    .line 3
    const v1, 0x7f080688

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 9
    const/4 v0, 0x1

    .line 10
    new-array v1, v0, [Landroid/view/View;

    .line 12
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mIvSortDesc:Landroid/widget/ImageView;

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v2, v1, v3

    .line 17
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x2

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    sget-object v4, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    .line 30
    aput-object v4, v2, v3

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    move-result-object v3

    .line 37
    aput-object v3, v2, v0

    .line 39
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 42
    return-void
.end method

.method private needHideFocus(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_46

    .line 6
    const/4 v2, 0x2

    .line 7
    new-array v2, v2, [I

    .line 9
    fill-array-data v2, :array_48

    .line 12
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 15
    aget v0, v2, v1

    .line 17
    const/4 v3, 0x1

    .line 18
    aget v2, v2, v3

    .line 20
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    .line 22
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 25
    move-result v4

    .line 26
    add-int/2addr v4, v2

    .line 27
    iget-object v5, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    .line 29
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 32
    move-result v5

    .line 33
    add-int/2addr v5, v0

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 37
    move-result v6

    .line 38
    int-to-float v0, v0

    .line 39
    cmpl-float v0, v6, v0

    .line 41
    if-lez v0, :cond_45

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 46
    move-result v0

    .line 47
    int-to-float v5, v5

    .line 48
    cmpg-float v0, v0, v5

    .line 50
    if-gez v0, :cond_45

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 55
    move-result v0

    .line 56
    int-to-float v2, v2

    .line 57
    cmpl-float v0, v0, v2

    .line 59
    if-lez v0, :cond_45

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 64
    move-result p1

    .line 65
    int-to-float v0, v4

    .line 66
    cmpg-float p1, p1, v0

    .line 68
    if-ltz p1, :cond_46

    .line 70
    :cond_45
    move v1, v3

    .line 71
    :cond_46
    return v1

    .line 72
    nop

    .line 73
    :array_48
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private onClearClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    .line 3
    if-eqz p1, :cond_9

    .line 5
    const-string v0, ""

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_9
    return-void
.end method

.method private onCloudClick(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->openMiCloudOnSynergy(Landroid/content/Context;)I

    .line 12
    return-void
.end method

.method private onGridTypeClick(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 7
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->menuId:Landroidx/lifecycle/q;

    .line 9
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Integer;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    move-result v0

    .line 19
    if-ne p1, v0, :cond_15

    .line 21
    return-void

    .line 22
    :cond_15
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 24
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->menuId:Landroidx/lifecycle/q;

    .line 26
    const v0, 0x7f0a026d

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 42
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 48
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    .line 50
    const v0, 0x7f08066f

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 56
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    .line 58
    const v0, 0x7f08068a

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 64
    return-void
.end method

.method private onHoverEnter(Landroid/view/View;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->getTips(Landroid/view/View;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_5f

    .line 11
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTipPopupWindow:Landroid/widget/PopupWindow;

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_23

    .line 16
    new-instance v1, Landroid/widget/PopupWindow;

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v1, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTipPopupWindow:Landroid/widget/PopupWindow;

    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTipPopupWindow:Landroid/widget/PopupWindow;

    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 36
    :cond_23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v1

    .line 40
    const v3, 0x7f0d00c5

    .line 43
    invoke-static {v1, v3, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    move-result-object v1

    .line 47
    const v2, 0x7f0a0460

    .line 50
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Landroid/widget/TextView;

    .line 56
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTipPopupWindow:Landroid/widget/PopupWindow;

    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTipPopupWindow:Landroid/widget/PopupWindow;

    .line 67
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTipPopupWindow:Landroid/widget/PopupWindow;

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTipPopupWindow:Landroid/widget/PopupWindow;

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 80
    move-result v1

    .line 81
    div-int/lit8 v1, v1, 0x2

    .line 83
    iget v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mElevation:I

    .line 85
    sub-int/2addr v1, v2

    .line 86
    rsub-int/lit8 v2, v2, 0xa

    .line 88
    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 91
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTipPopupWindow:Landroid/widget/PopupWindow;

    .line 93
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->update()V

    .line 96
    :cond_5f
    return-void
.end method

.method private onHoverExit(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTipPopupWindow:Landroid/widget/PopupWindow;

    .line 3
    if-eqz p1, :cond_7

    .line 5
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 8
    :cond_7
    return-void
.end method

.method private onListTypeClick(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 7
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->menuId:Landroidx/lifecycle/q;

    .line 9
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Integer;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    move-result v0

    .line 19
    if-ne p1, v0, :cond_15

    .line 21
    return-void

    .line 22
    :cond_15
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 24
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->menuId:Landroidx/lifecycle/q;

    .line 26
    const v0, 0x7f0a026e

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 42
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 48
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    .line 50
    const v0, 0x7f08066f

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 56
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    .line 58
    const v0, 0x7f08068a

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 64
    return-void
.end method

.method private onNewFileClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->menuId:Landroidx/lifecycle/q;

    .line 5
    const v0, 0x7f0a01eb

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method private onRefreshClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->menuId:Landroidx/lifecycle/q;

    .line 5
    const v0, 0x7f0a01ec

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method private varargs refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSortContentView:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;

    .line 3
    if-nez v0, :cond_f

    .line 5
    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSortContentView:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;

    .line 16
    :cond_f
    if-eqz p1, :cond_38

    .line 18
    if-eqz p2, :cond_38

    .line 20
    array-length v0, p2

    .line 21
    if-nez v0, :cond_17

    .line 23
    goto :goto_38

    .line 24
    :cond_17
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTvSortDesc:Landroid/widget/TextView;

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mIvSortDesc:Landroid/widget/ImageView;

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSortContentView:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;

    .line 42
    invoke-virtual {v0, p2, p1}, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->refreshSortView([Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 45
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTvSortDesc:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSortContentView:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;

    .line 49
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->getItemDesc(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    goto :goto_48

    .line 57
    :cond_38
    :goto_38
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    .line 59
    const/4 p2, 0x0

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 63
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mTvSortDesc:Landroid/widget/TextView;

    .line 65
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 68
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mIvSortDesc:Landroid/widget/ImageView;

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 73
    :goto_48
    return-void
.end method

.method private setShowTypeEnable(ZZI)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    .line 8
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 11
    const v0, 0x7f08068a

    .line 14
    const v1, 0x7f08066f

    .line 17
    if-eq p1, p2, :cond_2f

    .line 19
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    .line 21
    invoke-virtual {v2, p1}, Landroid/view/View;->setSelected(Z)V

    .line 24
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    .line 26
    invoke-virtual {v2, p2}, Landroid/view/View;->setSelected(Z)V

    .line 29
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    .line 31
    if-eqz p2, :cond_22

    .line 33
    move p2, v0

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move p2, v1

    .line 36
    :goto_23
    invoke-virtual {v2, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 39
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    .line 41
    if-eqz p1, :cond_2b

    .line 43
    move v1, v0

    .line 44
    :cond_2b
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 47
    goto :goto_44

    .line 48
    :cond_2f
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    .line 50
    const/4 p2, 0x0

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 54
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 59
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    .line 61
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 64
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    .line 66
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 69
    :goto_44
    const p1, 0x7f0a026e

    .line 72
    const/4 p2, 0x1

    .line 73
    if-ne p3, p1, :cond_55

    .line 75
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 80
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mListView:Landroid/view/View;

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    goto :goto_64

    .line 86
    :cond_55
    const p1, 0x7f0a026d

    .line 89
    if-ne p3, p1, :cond_64

    .line 91
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 96
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mGridView:Landroid/view/View;

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 101
    :cond_64
    :goto_64
    return-void
.end method

.method private showPopupWindow()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_56

    .line 7
    new-instance v0, Landroid/widget/PopupWindow;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v3

    .line 13
    invoke-direct {v0, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSortContentView:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;

    .line 20
    if-nez v0, :cond_20

    .line 22
    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v3

    .line 28
    invoke-direct {v0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSortContentView:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 35
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 38
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 46
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 49
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 51
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSortContentView:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;

    .line 53
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 56
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 58
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    .line 60
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 63
    move-result v3

    .line 64
    iget v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mElevation:I

    .line 66
    mul-int/2addr v4, v1

    .line 67
    add-int/2addr v4, v3

    .line 68
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 71
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSortContentView:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;

    .line 73
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->setOnSortItemClickListener(Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView$onSortItemClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 78
    new-instance v3, Lcom/android/fileexplorer/mirror/view/c;

    .line 80
    const/4 v4, 0x3

    .line 81
    invoke-direct {v3, p0, v4}, Lcom/android/fileexplorer/mirror/view/c;-><init>(Ljava/lang/Object;I)V

    .line 84
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 87
    :cond_56
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 89
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    .line 91
    iget v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mElevation:I

    .line 93
    neg-int v5, v4

    .line 94
    neg-int v4, v4

    .line 95
    div-int/2addr v4, v1

    .line 96
    invoke-virtual {v0, v3, v5, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 99
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 101
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 104
    new-array v0, v2, [Landroid/view/View;

    .line 106
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mIvSortDesc:Landroid/widget/ImageView;

    .line 108
    const/4 v4, 0x0

    .line 109
    aput-object v3, v0, v4

    .line 111
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 114
    move-result-object v0

    .line 115
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 118
    move-result-object v0

    .line 119
    new-array v1, v1, [Ljava/lang/Object;

    .line 121
    sget-object v3, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    .line 123
    aput-object v3, v1, v4

    .line 125
    const/high16 v3, 0x43340000  # 180.0f

    .line 127
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 130
    move-result-object v3

    .line 131
    aput-object v3, v1, v2

    .line 133
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 136
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mClShowTypeView:Landroid/view/View;

    .line 138
    const v1, 0x7f08068b

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 144
    return-void
.end method


# virtual methods
.method public handleFocus(Landroid/view/MotionEvent;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->needHideFocus(Landroid/view/MotionEvent;)Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_b

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 12
    :cond_b
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result p2

    .line 5
    const/16 v0, 0x9

    .line 7
    if-eq p2, v0, :cond_11

    .line 9
    const/16 v0, 0xa

    .line 11
    if-eq p2, v0, :cond_d

    .line 13
    goto :goto_14

    .line 14
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->onHoverExit(Landroid/view/View;)V

    .line 17
    goto :goto_14

    .line 18
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->onHoverEnter(Landroid/view/View;)V

    .line 21
    :goto_14
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string p3, "onKey: "

    .line 8
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const-string p3, "MirrorTopNavigationView"

    .line 20
    invoke-static {p3, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/16 p1, 0x42

    .line 25
    if-eq p2, p1, :cond_1f

    .line 27
    const/16 p1, 0xa0

    .line 29
    if-eq p2, p1, :cond_1f

    .line 31
    goto :goto_66

    .line 32
    :cond_1f
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    .line 34
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_66

    .line 52
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 54
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    .line 56
    new-instance p2, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 58
    invoke-direct {p2}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;-><init>()V

    .line 61
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->SearchResult:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 63
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->id(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p1, p2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 70
    new-instance p1, Lcom/android/fileexplorer/mirror/events/SearchKeyEvent;

    .line 72
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mSearchInputView:Landroid/widget/EditText;

    .line 74
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 85
    move-result-object p2

    .line 86
    invoke-direct {p1, p2}, Lcom/android/fileexplorer/mirror/events/SearchKeyEvent;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 96
    const-string p1, "onKeyUp: return true, go to search"

    .line 98
    invoke-static {p3, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 p1, 0x1

    .line 102
    return p1

    .line 103
    :cond_66
    :goto_66
    const/4 p1, 0x0

    .line 104
    return p1
.end method

.method public onKeyEnter(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string p3, "onKey: "

    .line 8
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const-string p3, "MirrorTopNavigationView"

    .line 20
    invoke-static {p3, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/16 p1, 0x42

    .line 25
    if-eq p2, p1, :cond_20

    .line 27
    const/16 p1, 0xa0

    .line 29
    if-eq p2, p1, :cond_20

    .line 31
    const/4 p1, 0x0

    .line 32
    return p1

    .line 33
    :cond_20
    const/4 p1, 0x1

    .line 34
    return p1
.end method

.method public onSortItemClick(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 10
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->menuId:Landroidx/lifecycle/q;

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 21
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    .line 23
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_2d

    .line 29
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 31
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    .line 33
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 39
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->showMenuLayoutByPage(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    .line 46
    :cond_2d
    return-void
.end method

.method public refreshLoadingState(Z)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->getRefreshAnimator()Landroid/animation/ObjectAnimator;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mRefreshAnimator:Landroid/animation/ObjectAnimator;

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mIvRefreshView:Landroid/widget/ImageView;

    .line 9
    if-eqz p1, :cond_e

    .line 11
    const v1, 0x7f080267

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    const v1, 0x7f080266

    .line 18
    :goto_11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    if-eqz p1, :cond_24

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mRefreshAnimator:Landroid/animation/ObjectAnimator;

    .line 25
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_31

    .line 31
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mRefreshAnimator:Landroid/animation/ObjectAnimator;

    .line 33
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 36
    goto :goto_31

    .line 37
    :cond_24
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mRefreshAnimator:Landroid/animation/ObjectAnimator;

    .line 39
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_31

    .line 45
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mRefreshAnimator:Landroid/animation/ObjectAnimator;

    .line 47
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 50
    :cond_31
    :goto_31
    return-void
.end method

.method public setPathBtnEnabled(I)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "setPathBtnEnabled "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MirrorTopNavigationView"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    .line 24
    if-eqz p1, :cond_44

    .line 26
    const/4 v1, 0x1

    .line 27
    if-eq p1, v1, :cond_39

    .line 29
    const/4 v2, 0x2

    .line 30
    if-eq p1, v2, :cond_2e

    .line 32
    const/4 v0, 0x3

    .line 33
    if-eq p1, v0, :cond_23

    .line 35
    goto :goto_4e

    .line 36
    :cond_23
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_forward:Landroid/view/View;

    .line 38
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 41
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_back:Landroid/view/View;

    .line 43
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 46
    goto :goto_4e

    .line 47
    :cond_2e
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_forward:Landroid/view/View;

    .line 49
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 52
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_back:Landroid/view/View;

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 57
    goto :goto_4e

    .line 58
    :cond_39
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_forward:Landroid/view/View;

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 63
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_back:Landroid/view/View;

    .line 65
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 68
    goto :goto_4e

    .line 69
    :cond_44
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_forward:Landroid/view/View;

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 74
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->btn_back:Landroid/view/View;

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 79
    :goto_4e
    return-void
.end method

.method public showMenuLayoutByPage(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V
    .registers 11

    .line 1
    const-string v0, "showMenuLayoutByPage page = "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MirrorTopNavigationView"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mViewModel:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 25
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->refreshState:Landroidx/lifecycle/q;

    .line 27
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 32
    sget-object v0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView$2;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 34
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 37
    move-result v1

    .line 38
    aget v0, v0, v1

    .line 40
    const/4 v1, 0x0

    .line 41
    const/4 v2, 0x5

    .line 42
    const/4 v3, 0x4

    .line 43
    const/4 v4, -0x1

    .line 44
    const/4 v5, 0x3

    .line 45
    const/4 v6, 0x2

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v8, 0x1

    .line 48
    packed-switch v0, :pswitch_data_184

    .line 51
    :pswitch_32  #0x10
    goto/16 :goto_174

    .line 53
    :pswitch_34  #0x11
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 56
    move-result-object v0

    .line 57
    new-array v1, v2, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 59
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 61
    aput-object v2, v1, v7

    .line 63
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 65
    aput-object v2, v1, v8

    .line 67
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 69
    aput-object v2, v1, v6

    .line 71
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 73
    aput-object v2, v1, v5

    .line 75
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TIME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 77
    aput-object v2, v1, v3

    .line 79
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 82
    invoke-direct {p0, v7, v8, v4}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    .line 85
    goto/16 :goto_174

    .line 87
    :pswitch_56  #0xd, 0xe, 0xf
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 90
    move-result-object v0

    .line 91
    new-array v1, v2, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 93
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 95
    aput-object v2, v1, v7

    .line 97
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 99
    aput-object v2, v1, v8

    .line 101
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 103
    aput-object v2, v1, v6

    .line 105
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 107
    aput-object v2, v1, v5

    .line 109
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 111
    aput-object v2, v1, v3

    .line 113
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 116
    invoke-direct {p0, v7, v8, v4}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    .line 119
    goto/16 :goto_174

    .line 121
    :pswitch_78  #0xc
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 124
    move-result-object v0

    .line 125
    new-array v1, v2, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 127
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 129
    aput-object v2, v1, v7

    .line 131
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 133
    aput-object v2, v1, v8

    .line 135
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 137
    aput-object v2, v1, v6

    .line 139
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 141
    aput-object v2, v1, v5

    .line 143
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TIME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 145
    aput-object v2, v1, v3

    .line 147
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 150
    invoke-direct {p0, v8, v7, v4}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    .line 153
    goto/16 :goto_174

    .line 155
    :pswitch_9a  #0xb
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 158
    move-result-object v0

    .line 159
    new-array v1, v2, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 161
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 163
    aput-object v2, v1, v7

    .line 165
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 167
    aput-object v2, v1, v8

    .line 169
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 171
    aput-object v2, v1, v6

    .line 173
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 175
    aput-object v2, v1, v5

    .line 177
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 179
    aput-object v2, v1, v3

    .line 181
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 184
    invoke-direct {p0, v7, v8, v4}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    .line 187
    goto/16 :goto_174

    .line 189
    :pswitch_bc  #0xa
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 192
    move-result-object v0

    .line 193
    new-array v1, v5, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 195
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 197
    aput-object v2, v1, v7

    .line 199
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 201
    aput-object v2, v1, v8

    .line 203
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 205
    aput-object v2, v1, v6

    .line 207
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 210
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 213
    move-result v0

    .line 214
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->getShowTypeMenuId(I)I

    .line 217
    move-result v0

    .line 218
    invoke-direct {p0, v8, v8, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    .line 221
    goto/16 :goto_174

    .line 223
    :pswitch_de  #0x9
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 226
    move-result-object v0

    .line 227
    new-array v1, v5, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 229
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 231
    aput-object v2, v1, v7

    .line 233
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 235
    aput-object v2, v1, v8

    .line 237
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 239
    aput-object v2, v1, v6

    .line 241
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 244
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 247
    move-result v0

    .line 248
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->getShowTypeMenuId(I)I

    .line 251
    move-result v0

    .line 252
    invoke-direct {p0, v8, v8, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    .line 255
    goto/16 :goto_174

    .line 257
    :pswitch_100  #0x8
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 260
    move-result-object v0

    .line 261
    new-array v1, v3, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 263
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 265
    aput-object v2, v1, v7

    .line 267
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 269
    aput-object v2, v1, v8

    .line 271
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 273
    aput-object v2, v1, v6

    .line 275
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 277
    aput-object v2, v1, v5

    .line 279
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 282
    sget-object v0, Lcom/android/fileexplorer/util/WpsSupportUtil;->WPS_APP_MI_NAME:Ljava/lang/String;

    .line 284
    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->hasInstalledApp(Ljava/lang/String;)Z

    .line 287
    move-result v0

    .line 288
    if-nez v0, :cond_125

    .line 290
    invoke-direct {p0, v7, v7, v4}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    .line 293
    goto :goto_174

    .line 294
    :cond_125
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 297
    move-result v0

    .line 298
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->getShowTypeMenuId(I)I

    .line 301
    move-result v0

    .line 302
    invoke-direct {p0, v8, v8, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    .line 305
    goto :goto_174

    .line 306
    :pswitch_131  #0x7
    invoke-direct {p0, v7, v8, v4}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    .line 309
    new-array v0, v7, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 311
    invoke-direct {p0, v1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 314
    goto :goto_174

    .line 315
    :pswitch_13a  #0x5, 0x6
    invoke-direct {p0, v8, v7, v4}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    .line 318
    new-array v0, v7, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 320
    invoke-direct {p0, v1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 323
    goto :goto_174

    .line 324
    :pswitch_143  #0x4
    invoke-direct {p0, v8, v7, v4}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    .line 327
    new-array v0, v7, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 329
    invoke-direct {p0, v1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 332
    goto :goto_174

    .line 333
    :pswitch_14c  #0x1, 0x2, 0x3
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 336
    move-result-object v0

    .line 337
    new-array v1, v2, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 339
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 341
    aput-object v2, v1, v7

    .line 343
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 345
    aput-object v2, v1, v8

    .line 347
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 349
    aput-object v2, v1, v6

    .line 351
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 353
    aput-object v2, v1, v5

    .line 355
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 357
    aput-object v2, v1, v3

    .line 359
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshSortView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 362
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 365
    move-result v0

    .line 366
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->getShowTypeMenuId(I)I

    .line 369
    move-result v0

    .line 370
    invoke-direct {p0, v8, v8, v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setShowTypeEnable(ZZI)V

    .line 373
    :goto_174
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->mNewFile:Landroid/view/View;

    .line 375
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 377
    if-eq p1, v1, :cond_17e

    .line 379
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picker:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 381
    if-ne p1, v1, :cond_17f

    .line 383
    :cond_17e
    move v7, v8

    .line 384
    :cond_17f
    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 387
    return-void

    .line 388
    nop

    .line 389
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
