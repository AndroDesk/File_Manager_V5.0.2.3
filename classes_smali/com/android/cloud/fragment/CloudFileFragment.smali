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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mCloudId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->isJumpTo:Z

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

    new-instance v0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;-><init>(Landroid/content/Context;Lcom/android/cloud/fragment/CloudFileFragment;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathSegments:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_20

    :cond_18
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    iget-object v1, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->initPathBySegments(Ljava/util/ArrayList;)V

    goto :goto_3c

    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    new-instance v1, Lcom/android/fileexplorer/model/PathSegment;

    const v2, 0x7f11006e

    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/fileexplorer/model/PathSegment;

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mPageTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mRealWholePath:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->initPath(Lcom/android/fileexplorer/model/PathSegment;Lcom/android/fileexplorer/model/PathSegment;)V

    :goto_3c
    return-void
.end method

.method private synthetic lambda$initSortView$0(Landroid/view/View;)V
    .registers 3

    new-instance p1, Lcom/android/fileexplorer/controller/FabMenuItem;

    const v0, 0x7f0a01eb

    invoke-direct {p1, v0}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    return-void
.end method

.method private synthetic lambda$initSortView$1(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/cloud/fragment/CloudFileFragment;->onBack()Z

    return-void
.end method

.method private synthetic lambda$onUserVisible$2()V
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->U()Z

    return-void
.end method

.method private synthetic lambda$setListGridMode$3(Landroid/view/View;)V
    .registers 3

    sget-object p1, Lcom/android/cloud/fragment/BaseCloudFragment;->CATEGORY_KEY:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->showDisplaySettingFragment(ILjava/lang/String;)V

    return-void
.end method

.method private setListGridMode(Landroid/widget/ImageView;)V
    .registers 4

    const v0, 0x7f0802aa

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Lcom/android/cloud/fragment/d;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/d;-><init>(Lcom/android/cloud/fragment/CloudFileFragment;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showCloudDrivePage(Lcom/android/cloud/constant/PageConstant$PageStatus;)V
    .registers 4

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mContainerView:Lcom/android/cloud/widget/ListContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mContainerView:Lcom/android/cloud/widget/ListContainerView;

    invoke-virtual {v0, p1}, Lcom/android/cloud/widget/ListContainerView;->display(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    return-void
.end method


# virtual methods
.method public displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V
    .registers 4

    sget-object v0, Lcom/android/cloud/fragment/CloudFileFragment$1;->$SwitchMap$com$android$cloud$constant$PageConstant$PageStatus:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    const/4 v1, 0x4

    if-eq v0, v1, :cond_18

    const/4 v1, 0x5

    if-eq v0, v1, :cond_18

    return-void

    :cond_18
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/CloudFileFragment;->showCloudDrivePage(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

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

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    :cond_25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->setActionBar(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;Z)V

    return-void
.end method

.method public initPresenter(Landroid/os/Bundle;)V
    .registers 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "0"

    if-eqz v0, :cond_2e

    const-string v2, "bundle_key_page_title"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mPageTitle:Ljava/lang/String;

    const-string v2, "current_directory"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "current_cloudinfo_id"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mCloudId:Ljava/lang/String;

    const/16 v3, 0xd

    const-string v4, "device_index"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    iput-boolean v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->isJumpTo:Z

    goto :goto_2f

    :cond_2e
    move-object v2, v1

    :goto_2f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathSegments:Ljava/util/ArrayList;

    if-eq v2, v1, :cond_3b

    const-string v0, "0/"

    invoke-static {v0, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :cond_3b
    move-object v0, v2

    :goto_3c
    iput-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mRealWholePath:Ljava/lang/String;

    if-eqz p1, :cond_74

    const-string v0, "saved_parent_id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_74

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "saved_page_title"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mPageTitle:Ljava/lang/String;

    const-string v0, "saved_real_path"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mRealWholePath:Ljava/lang/String;

    const-string v0, "saved_path_segments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathSegments:Ljava/util/ArrayList;

    const-string v0, "saved_cloud_id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mCloudId:Ljava/lang/String;

    const-string v0, "saved_isjumpto_id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/cloud/fragment/CloudFileFragment;->isJumpTo:Z

    :cond_74
    new-instance p1, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0, v2}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;-><init>(Landroid/content/Context;Lcom/android/cloud/fragment/presenter/CloudFileContract$View;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    return-void
.end method

.method public initSortView(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f032dc1

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f032df4

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/cloud/fragment/CloudFileFragment;->setListGridMode(Landroid/widget/ImageView;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/android/cloud/fragment/d;

    invoke-direct {v1, p0, v0}, Lcom/android/cloud/fragment/d;-><init>(Lcom/android/cloud/fragment/CloudFileFragment;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/cloud/fragment/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/d;-><init>(Lcom/android/cloud/fragment/CloudFileFragment;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f032de2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->isJumpTo:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudFileFragment;->initPathGallery()V

    goto :goto_2d

    :cond_8
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathSegments:Ljava/util/ArrayList;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_26

    :cond_13
    new-instance v0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;-><init>(Landroid/content/Context;Lcom/android/cloud/fragment/CloudFileFragment;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    iget-object v1, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->initPathBySegments(Ljava/util/ArrayList;)V

    goto :goto_2d

    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    iget-object v1, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mCloudId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->asyncGetFileAllPath(Ljava/lang/String;)V

    :goto_2d
    invoke-super {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->initView(Landroid/view/View;)V

    const v0, 0x7f032d65

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f032f7d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Lcom/android/fileexplorer/util/NestedHeaderHelper;

    invoke-direct {p1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;-><init>()V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mContainerView:Lcom/android/cloud/widget/ListContainerView;

    invoke-virtual {v0}, Lcom/android/cloud/widget/ListContainerView;->getNestedHeader()Lmiuix/nestedheader/widget/NestedHeaderLayout;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;->registerNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;Lmiuix/appcompat/app/ActionBar;)V

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

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionModeNotTimeInterval()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/activity/FileActivity;

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return v1

    :cond_22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_34

    invoke-static {p0}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->jump2PrevFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_3b

    :cond_34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_3b
    return v1

    :cond_3c
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    if-nez v0, :cond_52

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/activity/FileActivity;

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return v1

    :cond_50
    const/4 v0, 0x0

    return v0

    :cond_52
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f032de2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_2f

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2f
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onPathChange(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {v0, p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateCloudParentId(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->getCurrentParentId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "saved_parent_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->getCurrentPathSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    invoke-virtual {v0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->getCurrentPathSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/model/PathSegment;->name:Ljava/lang/String;

    const-string v1, "saved_page_title"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    invoke-virtual {v0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "saved_real_path"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    invoke-virtual {v0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->getPathSegments()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "saved_path_segments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mCloudId:Ljava/lang/String;

    const-string v1, "saved_cloud_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->isJumpTo:Z

    const-string v1, "saved_isjumpto_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_49
    return-void
.end method

.method public onUserVisible(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserVisible(Z)V

    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->checkAccountIfInvalid()Z

    move-result p1

    if-nez p1, :cond_1b

    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    move-result p1

    if-nez p1, :cond_13

    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->startSyncCloudData()V

    goto :goto_38

    :cond_13
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateUI(ZZ)V

    goto :goto_38

    :cond_1b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/android/fileexplorer/FileExplorerTabActivity;

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_31

    new-instance v0, Landroidx/activity/b;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_38

    :cond_31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_38
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_13

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/CloudFileFragment;->initPresenter(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudFileFragment;->initPathGallery()V

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateUI(ZZ)V

    :cond_13
    return-void
.end method

.method public openFolder(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V
    .registers 6

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    if-eqz v0, :cond_32

    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    iget-object v1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mRealWholePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v3, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v3}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    invoke-virtual {v1, v0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->changePath(Lcom/android/fileexplorer/model/PathSegment;)V

    :cond_32
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    iget-object p1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast p1, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateCloudParentId(Ljava/lang/String;)V

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

    invoke-super {p0, p1, p2}, Lcom/android/cloud/fragment/BaseCloudFragment;->updateFiles(Ljava/util/List;Z)V

    iget-boolean p2, p0, Lcom/android/cloud/fragment/CloudFileFragment;->isJumpTo:Z

    if-eqz p2, :cond_2e

    iget-object p2, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mCloudId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2e

    iget-object p2, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mCloudId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->getCurrentParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2e

    iget-object p2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mCloudId:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->getPosition(Ljava/util/List;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    const-string p1, ""

    iput-object p1, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mCloudId:Ljava/lang/String;

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

    if-eqz p1, :cond_8c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_8c

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/fileexplorer/model/PathSegment;

    const v2, 0x7f11006e

    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5a

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/micloud/midrive/infos/FolderParentInfo;

    if-eqz v2, :cond_57

    iget-object v3, v2, Lcom/micloud/midrive/infos/FolderParentInfo;->id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_57

    :cond_38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_4b

    iget-object v3, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    iget-object v4, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mCloudId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->isFolder(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4b

    goto :goto_57

    :cond_4b
    new-instance v3, Lcom/android/fileexplorer/model/PathSegment;

    iget-object v4, v2, Lcom/micloud/midrive/infos/FolderParentInfo;->name:Ljava/lang/String;

    iget-object v2, v2, Lcom/micloud/midrive/infos/FolderParentInfo;->id:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_57
    :goto_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_5a
    invoke-virtual {p0}, Lcom/android/cloud/fragment/CloudFileFragment;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mRealWholePath:"

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mRealWholePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";pathSegments = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    invoke-direct {p1, v1, p0, v2}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;-><init>(Landroid/content/Context;Lcom/android/cloud/fragment/CloudFileFragment;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    invoke-virtual {p1, v0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->initPathBySegments(Ljava/util/ArrayList;)V

    :cond_8c
    :goto_8c
    return-void
.end method
