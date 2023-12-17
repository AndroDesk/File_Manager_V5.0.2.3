.class public Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;
.super Lcom/android/fileexplorer/fragment/BaseFragment;
.source "PhoneAppTagFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$RefreshSourceTask;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

.field private mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

.field private mAppTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;"
        }
    .end annotation
.end field

.field private mAppTagListAdapter:Lcom/android/fileexplorer/adapter/AppTagListAdapter;

.field private mAppTagListView:Landroid/widget/ListView;

.field private mExtraFilePath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupPath:Ljava/lang/String;

.field private mPage:I

.field private mRefreshSourceTask:Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$RefreshSourceTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;-><init>()V

    const-string v0, "PhoneAppTagFragment"

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mPage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTagList:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTagList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;)Lcom/android/fileexplorer/activity/BaseActivity;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->showEmptyView(ZI)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;)Lcom/android/fileexplorer/adapter/AppTagListAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTagListAdapter:Lcom/android/fileexplorer/adapter/AppTagListAdapter;

    return-object p0
.end method

.method private initActionBar()V
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mPage:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_11

    const v0, 0x7f1829de

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :cond_11
    const/4 v1, 0x4

    if-ne v1, v0, :cond_1b

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mGroupPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :cond_1b
    const/4 v1, 0x6

    if-ne v1, v0, :cond_2a

    const v0, 0x7f1829d0

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :cond_2a
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    if-eqz v0, :cond_33

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    :cond_43
    return-void
.end method

.method private initUI()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mGroupPath:Ljava/lang/String;

    goto :goto_f

    :cond_7
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f032d0f

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTagListView:Landroid/widget/ListView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initUI path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->switchUI()V

    new-instance v0, Lcom/android/fileexplorer/adapter/AppTagListAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTagList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/adapter/AppTagListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTagListAdapter:Lcom/android/fileexplorer/adapter/AppTagListAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTagListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTagListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$1;-><init>(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private refreshAppTagList()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mRefreshSourceTask:Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$RefreshSourceTask;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_8
    new-instance v0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$RefreshSourceTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$RefreshSourceTask;-><init>(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$1;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mRefreshSourceTask:Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$RefreshSourceTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private showEmptyView(ZI)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032cf4

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_28

    if-eqz p1, :cond_13

    const/4 p1, 0x0

    goto :goto_15

    :cond_13
    const/16 p1, 0x8

    :goto_15
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f032cf7

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_28
    return-void
.end method

.method private switchUI()V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mPage:I

    const/4 v1, 0x6

    if-ne v1, v0, :cond_c

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTagListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTagListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_13
    return-void
.end method


# virtual methods
.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d0072

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->initActionBar()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->initUI()V

    const-string v0, "PAGE_PhoneAppTagFragment"

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->initDragEvent(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public onBack()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1202e3

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_84

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "page"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mPage:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "app_tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/dao/file/AppTag;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "group_path"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mGroupPath:Ljava/lang/String;

    const-string p1, "mGroupPath: "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mGroupPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhoneAppTagFragment"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPage"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mPage:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "paths"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mExtraFilePath:Ljava/util/List;

    if-nez p1, :cond_84

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mExtraFilePath:Ljava/util/List;

    :cond_84
    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshRecent:Z

    if-nez p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x6

    iget v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mPage:I

    if-ne p1, v0, :cond_d

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->refreshAppTagList()V

    :cond_d
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_e
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResume()V

    iget v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mPage:I

    const/4 v1, 0x6

    if-ne v1, v0, :cond_b

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->refreshAppTagList()V

    :cond_b
    return-void
.end method
