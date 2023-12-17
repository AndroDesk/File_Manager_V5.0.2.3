.class public Lcom/android/fileexplorer/fragment/StorageVolumesFragment;
.super Lcom/android/fileexplorer/fragment/BaseFragment;
.source "StorageVolumesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;
    }
.end annotation


# static fields
.field public static final SHOW_EXTENDED:Ljava/lang/String; = "show_extended"

.field public static final SHOW_MIDRIVE:Ljava/lang/String; = "show_midrive"

.field public static final SHOW_MTP:Ljava/lang/String; = "show_mtp"

.field public static final SHOW_ROUTER:Ljava/lang/String; = "show_router"

.field public static final TAG:Ljava/lang/String; = "StorageVolumesFragment"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter<",
            "Lcom/android/fileexplorer/model/StorageVolumeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFragmentInteractionListener:Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;

.field private mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

.field private mRunnable:Ljava/lang/Runnable;

.field private mVolumeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/StorageVolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mVolumeList:Ljava/util/List;

    new-instance v0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$1;-><init>(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mOnFragmentInteractionListener:Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->addCloudStorageInfo(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mVolumeList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private addCloudStorageInfo(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/StorageVolumeInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/model/StorageVolumeInfo;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/StorageVolumeInfo;-><init>()V

    new-instance v1, Lcom/android/fileexplorer/model/StorageInfo;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lcom/android/fileexplorer/model/StorageInfo;-><init>(Ljava/lang/Boolean;)V

    iput-object v1, v0, Lcom/android/fileexplorer/model/StorageVolumeInfo;->storageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initActionBar()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayOptions(I)V

    const v1, 0x7f11044a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    return-void
.end method

.method private initRecyclerView(Landroid/view/View;)V
    .registers 4

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mVolumeList:Ljava/util/List;

    invoke-direct {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    const/16 v0, 0x19

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    new-instance v0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$2;-><init>(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    return-void
.end method

.method private updateVolumeList()V
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$3;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$3;-><init>(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)V

    invoke-static {v0}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d0078

    return v0
.end method

.method public getScrollView()Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032f4e

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 3

    const v0, 0x7f032cf5

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/EmptyView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->initRecyclerView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->initActionBar()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mActivity:Landroid/app/Activity;

    instance-of v0, p1, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mOnFragmentInteractionListener:Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;

    :cond_d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f12011f

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_12

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mOnFragmentInteractionListener:Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;->onVolumeBack()V

    :cond_10
    const/4 p1, 0x1

    return p1

    :cond_12
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onOtgChangeEvent(Lcom/android/fileexplorer/event/OtgChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->updateVolumeList()V

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onPause()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->updateVolumeList()V

    return-void
.end method

.method public setOnFragmentInteractionListener(Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mOnFragmentInteractionListener:Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;

    return-void
.end method
