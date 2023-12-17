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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;-><init>()V

    .line 4
    const-string v0, "PhoneAppTagFragment"

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->TAG:Ljava/lang/String;

    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mPage:I

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTagList:Ljava/util/List;

    .line 18
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTagList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;)Lcom/android/fileexplorer/activity/BaseActivity;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;ZI)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->showEmptyView(ZI)V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;)Lcom/android/fileexplorer/adapter/AppTagListAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTagListAdapter:Lcom/android/fileexplorer/adapter/AppTagListAdapter;

    .line 3
    return-object p0
.end method

.method private initActionBar()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mPage:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v1, v0, :cond_d

    .line 6
    const v0, 0x7f110448

    .line 9
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_2c

    .line 14
    :cond_d
    const/4 v1, 0x4

    .line 15
    if-ne v1, v0, :cond_17

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mGroupPath:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupPathName(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    goto :goto_2c

    .line 24
    :cond_17
    const/4 v1, 0x6

    .line 25
    if-ne v1, v0, :cond_22

    .line 27
    const v0, 0x7f110446

    .line 30
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    goto :goto_2c

    .line 35
    :cond_22
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 37
    if-eqz v0, :cond_2b

    .line 39
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    const/4 v0, 0x0

    .line 45
    :goto_2c
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_3b

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_3b

    .line 57
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    :cond_3b
    return-void
.end method

.method private initUI()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 3
    if-nez v0, :cond_7

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mGroupPath:Ljava/lang/String;

    .line 7
    goto :goto_f

    .line 8
    :cond_7
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByLocale(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    :goto_f
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 18
    const v2, 0x7f0a0099

    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/widget/ListView;

    .line 27
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTagListView:Landroid/widget/ListView;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v2, "initUI path:"

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    const-string v1, "TAG"

    .line 48
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->switchUI()V

    .line 54
    new-instance v0, Lcom/android/fileexplorer/adapter/AppTagListAdapter;

    .line 56
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 58
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTagList:Ljava/util/List;

    .line 60
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/adapter/AppTagListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 63
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTagListAdapter:Lcom/android/fileexplorer/adapter/AppTagListAdapter;

    .line 65
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTagListView:Landroid/widget/ListView;

    .line 67
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTagListView:Landroid/widget/ListView;

    .line 72
    new-instance v1, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$1;

    .line 74
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$1;-><init>(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;)V

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    return-void
.end method

.method private refreshAppTagList()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mRefreshSourceTask:Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$RefreshSourceTask;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 9
    :cond_8
    new-instance v0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$RefreshSourceTask;

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$RefreshSourceTask;-><init>(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$1;)V

    .line 15
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mRefreshSourceTask:Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$RefreshSourceTask;

    .line 17
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    new-array v2, v2, [Ljava/lang/Void;

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 27
    return-void
.end method

.method private showEmptyView(ZI)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a0162

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_20

    .line 12
    if-eqz p1, :cond_f

    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const/16 p1, 0x8

    .line 18
    :goto_11
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    const p1, 0x7f0a0161

    .line 24
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/widget/TextView;

    .line 30
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 33
    :cond_20
    return-void
.end method

.method private switchUI()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mPage:I

    .line 3
    const/4 v1, 0x6

    .line 4
    if-ne v1, v0, :cond_c

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTagListView:Landroid/widget/ListView;

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    goto :goto_13

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTagListView:Landroid/widget/ListView;

    .line 15
    const/16 v1, 0x8

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
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

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setHasOptionsMenu(Z)V

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->initActionBar()V

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->initUI()V

    .line 11
    const-string v0, "PAGE_PhoneAppTagFragment"

    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->initDragEvent(Landroid/view/View;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public onBack()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f1202e3

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 18
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_84

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 34
    move-result-object p1

    .line 35
    const/4 v0, 0x1

    .line 36
    const-string v1, "page"

    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 41
    move-result p1

    .line 42
    iput p1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mPage:I

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 47
    move-result-object p1

    .line 48
    const-string v0, "app_tag"

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 56
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 61
    move-result-object p1

    .line 62
    const-string v0, "group_path"

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mGroupPath:Ljava/lang/String;

    .line 70
    const-string p1, "mGroupPath: "

    .line 72
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mGroupPath:Ljava/lang/String;

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    const-string v0, "PhoneAppTagFragment"

    .line 87
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    const-string v1, "mPage"

    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget v1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mPage:I

    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 109
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 115
    move-result-object p1

    .line 116
    const-string v0, "paths"

    .line 118
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mExtraFilePath:Ljava/util/List;

    .line 124
    if-nez p1, :cond_84

    .line 126
    new-instance p1, Ljava/util/ArrayList;

    .line 128
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mExtraFilePath:Ljava/util/List;

    .line 133
    :cond_84
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshRecent:Z

    .line 3
    if-nez p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 p1, 0x6

    .line 7
    iget v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mPage:I

    .line 9
    if-ne p1, v0, :cond_d

    .line 11
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->refreshAppTagList()V

    .line 14
    :cond_d
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
    if-ne v0, v1, :cond_e

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 12
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 15
    :cond_e
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public onPause()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onPause()V

    .line 4
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResume()V

    .line 4
    iget v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->mPage:I

    .line 6
    const/4 v1, 0x6

    .line 7
    if-ne v1, v0, :cond_b

    .line 9
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->refreshAppTagList()V

    .line 12
    :cond_b
    return-void
.end method
