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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mVolumeList:Ljava/util/List;

    .line 11
    new-instance v0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$1;

    .line 13
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$1;-><init>(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mRunnable:Ljava/lang/Runnable;

    .line 18
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Landroid/app/Activity;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mActivity:Landroid/app/Activity;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mOnFragmentInteractionListener:Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;Ljava/util/List;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->addCloudStorageInfo(Ljava/util/List;)V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mVolumeList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mRunnable:Ljava/lang/Runnable;

    .line 3
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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/model/StorageVolumeInfo;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/model/StorageVolumeInfo;-><init>()V

    .line 6
    new-instance v1, Lcom/android/fileexplorer/model/StorageInfo;

    .line 8
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    invoke-direct {v1, v2}, Lcom/android/fileexplorer/model/StorageInfo;-><init>(Ljava/lang/Boolean;)V

    .line 13
    iput-object v1, v0, Lcom/android/fileexplorer/model/StorageVolumeInfo;->storageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method private initActionBar()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    const/16 v1, 0xc

    .line 10
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayOptions(I)V

    .line 13
    const v1, 0x7f11044a

    .line 16
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 19
    return-void
.end method

.method private initRecyclerView(Landroid/view/View;)V
    .registers 4

    .line 1
    const v0, 0x102000a

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 10
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 12
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mVolumeList:Ljava/util/List;

    .line 16
    invoke-direct {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;-><init>(Ljava/util/List;)V

    .line 19
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    .line 27
    const/16 v0, 0x19

    .line 29
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    .line 32
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 34
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v1

    .line 40
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 46
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 48
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    .line 50
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 53
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    .line 55
    new-instance v0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$2;

    .line 57
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$2;-><init>(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)V

    .line 60
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 63
    return-void
.end method

.method private updateVolumeList()V
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$3;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$3;-><init>(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)V

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    .line 9
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a02d8

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 3

    .line 1
    const v0, 0x7f0a0163

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/fileexplorer/view/EmptyView;

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 12
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->initRecyclerView(Landroid/view/View;)V

    .line 15
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->initActionBar()V

    .line 18
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mActivity:Landroid/app/Activity;

    .line 6
    instance-of v0, p1, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;

    .line 8
    if-eqz v0, :cond_d

    .line 10
    check-cast p1, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;

    .line 12
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mOnFragmentInteractionListener:Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;

    .line 14
    :cond_d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f12011f

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mRunnable:Ljava/lang/Runnable;

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    .line 4
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 8
    if-ne v0, v1, :cond_12

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mOnFragmentInteractionListener:Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;

    .line 12
    if-eqz p1, :cond_10

    .line 14
    invoke-interface {p1}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;->onVolumeBack()V

    .line 17
    :cond_10
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_12
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public onOtgChangeEvent(Lcom/android/fileexplorer/event/OtgChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->updateVolumeList()V

    .line 4
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onPause()V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResume()V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->updateVolumeList()V

    .line 7
    return-void
.end method

.method public setOnFragmentInteractionListener(Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->mOnFragmentInteractionListener:Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;

    .line 3
    return-void
.end method
