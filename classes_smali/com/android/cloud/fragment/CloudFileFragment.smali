.class public Lcom/android/cloud/fragment/CloudFileFragment;
.super Lcom/android/cloud/fragment/BaseCloudFragment;
.source "CloudFileFragment.java"


# static fields
.field public static final SAVED_CLOUD_ID:Ljava/lang/String; = "saved_cloud_id"

.field public static final SAVED_ISJUMPTO_ID:Ljava/lang/String; = "saved_isjumpto_id"

.field public static final SAVED_PAGE_TITLE:Ljava/lang/String; = "saved_page_title"

.field public static final SAVED_PARENT_ID:Ljava/lang/String; = "saved_parent_id"

.field public static final SAVED_PATH_SEGMENTS:Ljava/lang/String; = "saved_path_segments"

.field public static final SAVED_REAL_PATH:Ljava/lang/String; = "saved_real_path"

.field public static final TAG:Ljava/lang/String; = "CloudFileFragment"


# instance fields
.field private isJumpTo:Z

.field private mCloudId:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field public mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

.field private mPathSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/PathSegment;",
            ">;"
        }
    .end annotation
.end field

.field private mRealWholePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mCloudId:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->isJumpTo:Z

    .line 11
    return-void
.end method

.method public static synthetic b(Lcom/android/cloud/fragment/CloudFileFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudFileFragment;->lambda$onUserVisible$2()V

    return-void
.end method

.method public static synthetic c(Lcom/android/cloud/fragment/CloudFileFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/CloudFileFragment;->lambda$setListGridMode$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/cloud/fragment/CloudFileFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/CloudFileFragment;->lambda$initSortView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/cloud/fragment/CloudFileFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/CloudFileFragment;->lambda$initSortView$1(Landroid/view/View;)V

    return-void
.end method

.method private initPathGallery()V
    .registers 6

    .line 1
    new-instance v0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 9
    invoke-direct {v0, v1, p0, v2}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;-><init>(Landroid/content/Context;Lcom/android/cloud/fragment/CloudFileFragment;Landroid/view/View;)V

    .line 12
    iput-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    .line 14
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathSegments:Ljava/util/ArrayList;

    .line 16
    if-eqz v0, :cond_20

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_18

    .line 24
    goto :goto_20

    .line 25
    :cond_18
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    .line 27
    iget-object v1, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathSegments:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0, v1}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->initPathBySegments(Ljava/util/ArrayList;)V

    .line 32
    goto :goto_3c

    .line 33
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    .line 35
    new-instance v1, Lcom/android/fileexplorer/model/PathSegment;

    .line 37
    const v2, 0x7f11006e

    .line 40
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    const-string v3, "0"

    .line 46
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v2, Lcom/android/fileexplorer/model/PathSegment;

    .line 51
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mPageTitle:Ljava/lang/String;

    .line 53
    iget-object v4, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mRealWholePath:Ljava/lang/String;

    .line 55
    invoke-direct {v2, v3, v4}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->initPath(Lcom/android/fileexplorer/model/PathSegment;Lcom/android/fileexplorer/model/PathSegment;)V

    .line 61
    :goto_3c
    return-void
.end method

.method private synthetic lambda$initSortView$0(Landroid/view/View;)V
    .registers 3

    .line 1
    new-instance p1, Lcom/android/fileexplorer/controller/FabMenuItem;

    .line 3
    const v0, 0x7f0a01eb

    .line 6
    invoke-direct {p1, v0}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 12
    return-void
.end method

.method private synthetic lambda$initSortView$1(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/cloud/fragment/CloudFileFragment;->onBack()Z

    .line 4
    return-void
.end method

.method private synthetic lambda$onUserVisible$2()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->U()Z

    .line 8
    return-void
.end method

.method private synthetic lambda$setListGridMode$3(Landroid/view/View;)V
    .registers 3

    .line 1
    sget-object p1, Lcom/android/cloud/fragment/BaseCloudFragment;->CATEGORY_KEY:Ljava/lang/String;

    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->showDisplaySettingFragment(ILjava/lang/String;)V

    .line 7
    return-void
.end method

.method private setListGridMode(Landroid/widget/ImageView;)V
    .registers 4

    .line 1
    const v0, 0x7f0802aa

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    new-instance v0, Lcom/android/cloud/fragment/d;

    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/d;-><init>(Lcom/android/cloud/fragment/CloudFileFragment;I)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    return-void
.end method

.method private showCloudDrivePage(Lcom/android/cloud/constant/PageConstant$PageStatus;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mContainerView:Lcom/android/cloud/widget/ListContainerView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mContainerView:Lcom/android/cloud/widget/ListContainerView;

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/cloud/widget/ListContainerView;->display(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    .line 12
    return-void
.end method


# virtual methods
.method public displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/cloud/fragment/CloudFileFragment$1;->$SwitchMap$com$android$cloud$constant$PageConstant$PageStatus:[I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_18

    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_18

    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_18

    .line 18
    const/4 v1, 0x4

    .line 19
    if-eq v0, v1, :cond_18

    .line 21
    const/4 v1, 0x5

    .line 22
    if-eq v0, v1, :cond_18

    .line 24
    return-void

    .line 25
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/CloudFileFragment;->showCloudDrivePage(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    .line 28
    return-void
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d0075

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    const-string v0, "CloudFileFragment"

    return-object v0
.end method

.method public getMarginSide()I
    .registers 2

    const v0, 0x7f0701f4

    return v0
.end method

.method public initActionBar()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_25

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    .line 15
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    .line 22
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    .line 29
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 32
    move-result-object v0

    .line 33
    const-string v1, " "

    .line 35
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    :cond_25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->setActionBar(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;Z)V

    .line 50
    return-void
.end method

.method public initPresenter(Landroid/os/Bundle;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "0"

    .line 7
    if-eqz v0, :cond_2e

    .line 9
    const-string v2, "bundle_key_page_title"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    iput-object v2, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mPageTitle:Ljava/lang/String;

    .line 17
    const-string v2, "current_directory"

    .line 19
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    const-string v3, "current_cloudinfo_id"

    .line 25
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    iput-object v3, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mCloudId:Ljava/lang/String;

    .line 31
    const/16 v3, 0xd

    .line 33
    const-string v4, "device_index"

    .line 35
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 38
    move-result v0

    .line 39
    if-ne v3, v0, :cond_2a

    .line 41
    const/4 v0, 0x1

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    const/4 v0, 0x0

    .line 44
    :goto_2b
    iput-boolean v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->isJumpTo:Z

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    move-object v2, v1

    .line 48
    :goto_2f
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathSegments:Ljava/util/ArrayList;

    .line 51
    if-eq v2, v1, :cond_3b

    .line 53
    const-string v0, "0/"

    .line 55
    invoke-static {v0, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    move-object v0, v2

    .line 61
    :goto_3c
    iput-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mRealWholePath:Ljava/lang/String;

    .line 63
    if-eqz p1, :cond_74

    .line 65
    const-string v0, "saved_parent_id"

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_74

    .line 73
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    const-string v0, "saved_page_title"

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mPageTitle:Ljava/lang/String;

    .line 85
    const-string v0, "saved_real_path"

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mRealWholePath:Ljava/lang/String;

    .line 93
    const-string v0, "saved_path_segments"

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathSegments:Ljava/util/ArrayList;

    .line 101
    const-string v0, "saved_cloud_id"

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mCloudId:Ljava/lang/String;

    .line 109
    const-string v0, "saved_isjumpto_id"

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 114
    move-result p1

    .line 115
    iput-boolean p1, p0, Lcom/android/cloud/fragment/CloudFileFragment;->isJumpTo:Z

    .line 117
    :cond_74
    new-instance p1, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 122
    move-result-object v0

    .line 123
    invoke-direct {p1, v0, p0, v2}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;-><init>(Landroid/content/Context;Lcom/android/cloud/fragment/presenter/CloudFileContract$View;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 128
    return-void
.end method

.method public initSortView(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    const v0, 0x7f0a0057

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    const v1, 0x7f0a0062

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/ImageView;

    .line 44
    invoke-direct {p0, v0}, Lcom/android/cloud/fragment/CloudFileFragment;->setListGridMode(Landroid/widget/ImageView;)V

    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 54
    new-instance v1, Lcom/android/cloud/fragment/d;

    .line 56
    invoke-direct {v1, p0, v0}, Lcom/android/cloud/fragment/d;-><init>(Lcom/android/cloud/fragment/CloudFileFragment;I)V

    .line 59
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    .line 69
    move-result-object p1

    .line 70
    new-instance v0, Lcom/android/cloud/fragment/d;

    .line 72
    const/4 v1, 0x1

    .line 73
    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/d;-><init>(Lcom/android/cloud/fragment/CloudFileFragment;I)V

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 86
    move-result-object p1

    .line 87
    const v0, 0x7f0a0074

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    move-result-object p1

    .line 94
    const/16 v0, 0x8

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 99
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->isJumpTo:Z

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudFileFragment;->initPathGallery()V

    .line 8
    goto :goto_2d

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathSegments:Ljava/util/ArrayList;

    .line 11
    if-eqz v0, :cond_26

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_13

    .line 19
    goto :goto_26

    .line 20
    :cond_13
    new-instance v0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 28
    invoke-direct {v0, v1, p0, v2}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;-><init>(Landroid/content/Context;Lcom/android/cloud/fragment/CloudFileFragment;Landroid/view/View;)V

    .line 31
    iput-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    .line 33
    iget-object v1, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathSegments:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v0, v1}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->initPathBySegments(Ljava/util/ArrayList;)V

    .line 38
    goto :goto_2d

    .line 39
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 41
    iget-object v1, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mCloudId:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->asyncGetFileAllPath(Ljava/lang/String;)V

    .line 46
    :goto_2d
    invoke-super {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->initView(Landroid/view/View;)V

    .line 49
    const v0, 0x7f0a00f3

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v0

    .line 56
    const/16 v1, 0x8

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    const v0, 0x7f0a02eb

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    new-instance p1, Lcom/android/fileexplorer/util/NestedHeaderHelper;

    .line 73
    invoke-direct {p1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;-><init>()V

    .line 76
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mContainerView:Lcom/android/cloud/widget/ListContainerView;

    .line 78
    invoke-virtual {v0}, Lcom/android/cloud/widget/ListContainerView;->getNestedHeader()Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;->registerNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;Lmiuix/appcompat/app/ActionBar;)V

    .line 89
    return-void
.end method

.method public isSupportOneCopyShare()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportOneHopShare()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onBack()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionModeNotTimeInterval()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    .line 11
    if-eqz v0, :cond_3c

    .line 13
    invoke-virtual {v0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->onBackPressed()Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_3c

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    move-result-object v0

    .line 23
    instance-of v0, v0, Lcom/android/fileexplorer/activity/FileActivity;

    .line 25
    if-eqz v0, :cond_22

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 34
    return v1

    .line 35
    :cond_22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 46
    move-result v0

    .line 47
    if-le v0, v1, :cond_34

    .line 49
    invoke-static {p0}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->jump2PrevFragment(Landroidx/fragment/app/Fragment;)V

    .line 52
    goto :goto_3b

    .line 53
    :cond_34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 60
    :goto_3b
    return v1

    .line 61
    :cond_3c
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    .line 63
    if-nez v0, :cond_52

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 68
    move-result-object v0

    .line 69
    instance-of v0, v0, Lcom/android/fileexplorer/activity/FileActivity;

    .line 71
    if-eqz v0, :cond_50

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 80
    return v1

    .line 81
    :cond_50
    const/4 v0, 0x0

    .line 82
    return v0

    .line 83
    :cond_52
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_2b

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_2b

    .line 20
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    const v0, 0x7f0a0074

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/ImageView;

    .line 37
    if-eqz p1, :cond_2b

    .line 39
    const/16 v0, 0x8

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    :cond_2b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    new-instance p1, Landroid/os/Handler;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    iput-object p1, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mHandler:Landroid/os/Handler;

    .line 15
    return-void
.end method

.method public onPathChange(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateCloudParentId(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 6
    invoke-virtual {v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->getCurrentParentId()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    const-string v1, "saved_parent_id"

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    .line 17
    if-eqz v0, :cond_49

    .line 19
    invoke-virtual {v0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->getCurrentPathSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_49

    .line 25
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    .line 27
    invoke-virtual {v0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->getCurrentPathSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 30
    move-result-object v0

    .line 31
    iget-object v0, v0, Lcom/android/fileexplorer/model/PathSegment;->name:Ljava/lang/String;

    .line 33
    const-string v1, "saved_page_title"

    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    .line 40
    invoke-virtual {v0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->getCurrentPath()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    const-string v1, "saved_real_path"

    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    .line 51
    invoke-virtual {v0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->getPathSegments()Ljava/util/ArrayList;

    .line 54
    move-result-object v0

    .line 55
    const-string v1, "saved_path_segments"

    .line 57
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 60
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mCloudId:Ljava/lang/String;

    .line 62
    const-string v1, "saved_cloud_id"

    .line 64
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-boolean v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->isJumpTo:Z

    .line 69
    const-string v1, "saved_isjumpto_id"

    .line 71
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    :cond_49
    return-void
.end method

.method public onUserVisible(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserVisible(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->checkAccountIfInvalid()Z

    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_1b

    .line 10
    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_13

    .line 16
    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->startSyncCloudData()V

    .line 19
    goto :goto_38

    .line 20
    :cond_13
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 22
    const/4 v0, 0x1

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateUI(ZZ)V

    .line 27
    goto :goto_38

    .line 28
    :cond_1b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 31
    move-result-object p1

    .line 32
    instance-of p1, p1, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 34
    if-eqz p1, :cond_31

    .line 36
    iget-object p1, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mHandler:Landroid/os/Handler;

    .line 38
    if-eqz p1, :cond_31

    .line 40
    new-instance v0, Landroidx/activity/b;

    .line 42
    const/4 v1, 0x4

    .line 43
    invoke-direct {v0, p0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    goto :goto_38

    .line 50
    :cond_31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 57
    :goto_38
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->onVisibilityChanged(Z)V

    .line 4
    if-eqz p1, :cond_13

    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/CloudFileFragment;->initPresenter(Landroid/os/Bundle;)V

    .line 10
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudFileFragment;->initPathGallery()V

    .line 13
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 15
    const/4 v0, 0x1

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateUI(ZZ)V

    .line 20
    :cond_13
    return-void
.end method

.method public openFolder(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    .line 3
    if-eqz v0, :cond_32

    .line 5
    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    .line 7
    iget-object v1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 9
    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 11
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    iget-object v3, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mRealWholePath:Ljava/lang/String;

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v3, "/"

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v3, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 30
    check-cast v3, Lcom/android/cloud/bean/CloudFileInfo;

    .line 32
    invoke-virtual {v3}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    .line 48
    invoke-virtual {v1, v0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->changePath(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 51
    :cond_32
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 53
    iget-object p1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 55
    check-cast p1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 57
    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateCloudParentId(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public updateChoiceItems()V
    .registers 1

    return-void
.end method

.method public updateFiles(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/cloud/fragment/BaseCloudFragment;->updateFiles(Ljava/util/List;Z)V

    .line 4
    iget-boolean p2, p0, Lcom/android/cloud/fragment/CloudFileFragment;->isJumpTo:Z

    .line 6
    if-eqz p2, :cond_2e

    .line 8
    iget-object p2, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mCloudId:Ljava/lang/String;

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_2e

    .line 16
    iget-object p2, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mCloudId:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 20
    invoke-virtual {v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->getCurrentParentId()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p2

    .line 28
    if-nez p2, :cond_2e

    .line 30
    iget-object p2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 32
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mCloudId:Ljava/lang/String;

    .line 34
    invoke-virtual {p2, p1, v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->getPosition(Ljava/util/List;Ljava/lang/String;)I

    .line 37
    move-result p1

    .line 38
    iget-object p2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 40
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 43
    const-string p1, ""

    .line 45
    iput-object p1, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mCloudId:Ljava/lang/String;

    .line 47
    :cond_2e
    return-void
.end method

.method public updatePathGallery(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/FolderParentInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_8c

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    goto/16 :goto_8c

    .line 11
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v1, Lcom/android/fileexplorer/model/PathSegment;

    .line 18
    const v2, 0x7f11006e

    .line 21
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    const-string v3, "0"

    .line 27
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    const/4 v1, 0x0

    .line 34
    :goto_21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 37
    move-result v2

    .line 38
    if-ge v1, v2, :cond_5a

    .line 40
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/micloud/midrive/infos/FolderParentInfo;

    .line 46
    if-eqz v2, :cond_57

    .line 48
    iget-object v3, v2, Lcom/micloud/midrive/infos/FolderParentInfo;->id:Ljava/lang/String;

    .line 50
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_38

    .line 56
    goto :goto_57

    .line 57
    :cond_38
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 60
    move-result v3

    .line 61
    add-int/lit8 v3, v3, -0x1

    .line 63
    if-ne v1, v3, :cond_4b

    .line 65
    iget-object v3, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 67
    iget-object v4, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mCloudId:Ljava/lang/String;

    .line 69
    invoke-virtual {v3, v4}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->isFolder(Ljava/lang/String;)Z

    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_4b

    .line 75
    goto :goto_57

    .line 76
    :cond_4b
    new-instance v3, Lcom/android/fileexplorer/model/PathSegment;

    .line 78
    iget-object v4, v2, Lcom/micloud/midrive/infos/FolderParentInfo;->name:Ljava/lang/String;

    .line 80
    iget-object v2, v2, Lcom/micloud/midrive/infos/FolderParentInfo;->id:Ljava/lang/String;

    .line 82
    invoke-direct {v3, v4, v2}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_57
    :goto_57
    add-int/lit8 v1, v1, 0x1

    .line 90
    goto :goto_21

    .line 91
    :cond_5a
    invoke-virtual {p0}, Lcom/android/cloud/fragment/CloudFileFragment;->getLogTag()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    const-string v1, "mRealWholePath:"

    .line 97
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mRealWholePath:Ljava/lang/String;

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v2, ";pathSegments = "

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 114
    move-result v2

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v1

    .line 122
    invoke-static {p1, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance p1, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 130
    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 133
    invoke-direct {p1, v1, p0, v2}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;-><init>(Landroid/content/Context;Lcom/android/cloud/fragment/CloudFileFragment;Landroid/view/View;)V

    .line 136
    iput-object p1, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    .line 138
    invoke-virtual {p1, v0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->initPathBySegments(Ljava/util/ArrayList;)V

    .line 141
    :cond_8c
    :goto_8c
    return-void
.end method
