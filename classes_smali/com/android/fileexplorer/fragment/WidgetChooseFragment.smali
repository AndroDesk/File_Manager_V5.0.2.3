.class public Lcom/android/fileexplorer/fragment/WidgetChooseFragment;
.super Lcom/android/fileexplorer/fragment/LazyFragment;
.source "WidgetChooseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/WidgetChooseFragment$WidgetChooseEntryClickListener;
    }
.end annotation


# static fields
.field public static final CHOICE_MODE:Ljava/lang/String; = "CHOICE_MODE"

.field private static final TAG:Ljava/lang/String; = "WidgetChooseFragment"


# instance fields
.field public mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mAdapter:Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;

.field public mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

.field private mContext:Landroid/content/Context;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation
.end field

.field public mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

.field private mHasPermission:Z

.field public mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mEntries:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/WidgetChooseFragment;Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->getPageInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPageInfo(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_b0

    goto :goto_50

    :sswitch_f
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_50

    :cond_18
    const/4 v4, 0x5

    goto :goto_50

    :sswitch_1a
    const-string v0, "music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_50

    :cond_23
    const/4 v4, 0x4

    goto :goto_50

    :sswitch_25
    const-string v0, "zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_50

    :cond_2e
    const/4 v4, 0x3

    goto :goto_50

    :sswitch_30
    const-string v0, "doc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto :goto_50

    :cond_39
    move v4, v1

    goto :goto_50

    :sswitch_3b
    const-string v0, "apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    goto :goto_50

    :cond_44
    move v4, v2

    goto :goto_50

    :sswitch_46
    const-string v0, "picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    goto :goto_50

    :cond_4f
    move v4, v3

    :goto_50
    const-string p1, "选择文件"

    packed-switch v4, :pswitch_data_ca

    new-array v0, v1, [Ljava/lang/String;

    const-class v1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p1, v0, v2

    return-object v0

    :pswitch_62  #0x5
    new-array v0, v1, [Ljava/lang/String;

    const-class v1, Lcom/android/fileexplorer/pad/fragment/PadVideoCategoryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p1, v0, v2

    return-object v0

    :pswitch_6f  #0x4
    new-array v0, v1, [Ljava/lang/String;

    const-class v1, Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p1, v0, v2

    return-object v0

    :pswitch_7c  #0x3
    new-array v0, v1, [Ljava/lang/String;

    const-class v1, Lcom/android/fileexplorer/pad/fragment/PadZipCategoryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p1, v0, v2

    return-object v0

    :pswitch_89  #0x2
    new-array v0, v1, [Ljava/lang/String;

    const-class v1, Lcom/android/fileexplorer/fragment/category/WidgetDocCategorySubFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p1, v0, v2

    return-object v0

    :pswitch_96  #0x1
    new-array v0, v1, [Ljava/lang/String;

    const-class v1, Lcom/android/fileexplorer/pad/fragment/PadApkCategoryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p1, v0, v2

    return-object v0

    :pswitch_a3  #0x0
    new-array v0, v1, [Ljava/lang/String;

    const-class v1, Lcom/android/fileexplorer/pad/fragment/PadPictureCategoryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p1, v0, v2

    return-object v0

    :sswitch_data_b0
    .sparse-switch
        -0x226fa302 -> :sswitch_46
        0x17a1c -> :sswitch_3b
        0x18538 -> :sswitch_30
        0x1d721 -> :sswitch_25
        0x636ee25 -> :sswitch_1a
        0x6b0147b -> :sswitch_f
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_a3  #00000000
        :pswitch_96  #00000001
        :pswitch_89  #00000002
        :pswitch_7c  #00000003
        :pswitch_6f  #00000004
        :pswitch_62  #00000005
    .end packed-switch
.end method

.method private handleNavigationBar()V
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, 0x8000000

    if-nez v0, :cond_3c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f2dda

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_61

    :cond_3c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f2814

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :goto_61
    return-void
.end method

.method private initUI()V
    .registers 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032e44

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f032f77

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f032d5d

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->getSpanCount()I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getWidgetChooseEntries()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mEntries:Ljava/util/List;

    new-instance v0, Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/fileexplorer/fragment/WidgetChooseFragment$WidgetChooseEntryClickListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment$WidgetChooseEntryClickListener;-><init>(Lcom/android/fileexplorer/fragment/WidgetChooseFragment;Lcom/android/fileexplorer/fragment/WidgetChooseFragment$1;)V

    invoke-direct {v0, v1, v3}, Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mAdapter:Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mAdapter:Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f070280

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f07027f

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f070275

    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f070274

    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v4

    new-instance v5, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->getSpanCount()I

    move-result v6

    invoke-direct {v5, v0, v1, v6}, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;-><init>(III)V

    iput-object v5, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    const v0, 0x7f070273

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v5, v4, v3, v2, v0}, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->setMargin(IIII)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/fragment/WidgetChooseFragment;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/WidgetChooseFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/WidgetChooseFragment;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;-><init>()V

    if-eqz p0, :cond_a

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method

.method private showNoPermissionView()V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032e44

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f032f77

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f032d5d

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v3, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mHasPermission:Z

    if-nez v3, :cond_41

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_41
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    const v0, 0x7f032f74

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0329b8

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/android/fileexplorer/fragment/WidgetChooseFragment$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment$1;-><init>(Lcom/android/fileexplorer/fragment/WidgetChooseFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d01e4

    return v0
.end method

.method public getScrollView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public getSpanCount()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 2

    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mHasPermission:Z

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->initUI()V

    goto :goto_b

    :cond_8
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->showNoPermissionView()V

    :goto_b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mHasPermission:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->handleNavigationBar()V

    const p1, 0x7f12011e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->getSpanCount()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->handleNavigationBar()V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mHasPermission:Z

    if-eq v1, v0, :cond_1c

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mHasPermission:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->initView(Landroid/view/View;)V

    goto :goto_1c

    :cond_19
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->showNoPermissionView()V

    :cond_1c
    :goto_1c
    return-void
.end method
