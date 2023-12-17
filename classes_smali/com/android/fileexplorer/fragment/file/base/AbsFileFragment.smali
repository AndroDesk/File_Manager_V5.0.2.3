.class public abstract Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;
.super Lcom/android/fileexplorer/fragment/AbsActionBarFragment;
.source "AbsFileFragment.java"


# static fields
.field public static final DEFAULT_LANGUAGE:Ljava/lang/String;

.field public static final EXT_SEARCH_ACTION:Ljava/lang/String; = "com.android.fileexplorer.search"

.field private static final KEY_LAST_STORAGE_PATH:Ljava/lang/String; = "last_storage_path"


# instance fields
.field public mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public mBtnToSetting:Landroid/widget/Button;

.field public mForceMainSpace:Z

.field public mHasPermission:Z

.field public mParseSdk:Lcom/android/fileexplorer/service/DirParseSDK;

.field public mSearchFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 3
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->DEFAULT_LANGUAGE:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mHasPermission:Z

    .line 7
    return-void
.end method

.method private getDataPath()Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_13

    .line 19
    return-object v1

    .line 20
    :cond_13
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 23
    move-result-object v2

    .line 24
    if-nez v2, :cond_1a

    .line 26
    return-object v1

    .line 27
    :cond_1a
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    const-string v4, "com.android.mtp.documents"

    .line 33
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_27

    .line 39
    return-object v1

    .line 40
    :cond_27
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_32

    .line 50
    return-object v1

    .line 51
    :cond_32
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    const-string v1, "com.android.fileexplorer.search"

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_4b

    .line 63
    iput-object v2, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mSearchFilePath:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/io/File;

    .line 67
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mSearchFilePath:Ljava/lang/String;

    .line 69
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    :cond_4b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_62

    .line 82
    const-string v0, ".vcf"

    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_62

    .line 90
    new-instance v0, Ljava/io/File;

    .line 92
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 98
    move-result-object v2

    .line 99
    :cond_62
    return-object v2
.end method

.method private getExtraDirectory()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_13

    .line 19
    return-object v1

    .line 20
    :cond_13
    const-string v2, "current_directory"

    .line 22
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_20

    .line 28
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_20
    const-string v2, "explorer_path"

    .line 35
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_2d

    .line 41
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    return-object v0

    .line 46
    :cond_2d
    return-object v1
.end method


# virtual methods
.method public checkValid()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public getDeviceIndex()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_13

    .line 19
    return v1

    .line 20
    :cond_13
    const-string v2, "device_index"

    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 25
    move-result v0

    .line 26
    if-ne v0, v1, :cond_29

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_29

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 41
    move-result v0

    .line 42
    :cond_29
    return v0
.end method

.method public getExtraPath()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->getDataPath()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_e

    .line 11
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->getExtraDirectory()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    :cond_e
    return-object v0
.end method

.method public abstract getLayoutRes()I
.end method

.method public abstract getLogTag()Ljava/lang/String;
.end method

.method public abstract initEmptyView(Landroid/view/View;)V
.end method

.method public initFabMenu()V
    .registers 1

    return-void
.end method

.method public abstract initView(Landroid/view/View;)V
.end method

.method public isViewMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isViewMode(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 10
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/PermissionUtils;->isPermissionNotGranted(Landroid/content/Context;Ljava/lang/String;)Z

    .line 13
    move-result p1

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz p1, :cond_20

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/PermissionUtils;->getPermissionStatus(Landroid/content/Context;Ljava/lang/String;)I

    .line 24
    move-result p1

    .line 25
    const/4 v0, -0x1

    .line 26
    if-eq p1, v0, :cond_1d

    .line 28
    const/4 p1, 0x1

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move p1, v1

    .line 31
    :goto_1e
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mHasPermission:Z

    .line 33
    :cond_20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 39
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 41
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 48
    invoke-static {}, Lcom/android/fileexplorer/service/DirParseSDK;->getInstance()Lcom/android/fileexplorer/service/DirParseSDK;

    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mParseSdk:Lcom/android/fileexplorer/service/DirParseSDK;

    .line 54
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 56
    instance-of p1, p1, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 58
    if-eqz p1, :cond_45

    .line 60
    const p1, 0x7f12032d

    .line 63
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 66
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/Fragment;->setImmersionMenuEnabled(Z)V

    .line 69
    goto :goto_59

    .line 70
    :cond_45
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mHasPermission:Z

    .line 72
    if-eqz p1, :cond_59

    .line 74
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->isViewMode()Z

    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_53

    .line 80
    const p1, 0x7f120522

    .line 83
    goto :goto_56

    .line 84
    :cond_53
    const p1, 0x7f120523

    .line 87
    :goto_56
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 90
    :cond_59
    :goto_59
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->getLogTag()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "onDestroy: "

    .line 10
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 23
    move-result-object v0

    .line 24
    instance-of v0, v0, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 26
    if-eqz v0, :cond_24

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 34
    invoke-virtual {v0}, Lcom/android/fileexplorer/activity/BaseActivity;->dismissProgress()V

    .line 37
    :cond_24
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->getLogTag()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "onDestroyView: "

    .line 10
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mParseSdk:Lcom/android/fileexplorer/service/DirParseSDK;

    .line 15
    invoke-virtual {v0}, Lcom/android/fileexplorer/service/DirParseSDK;->close()V

    .line 18
    return-void
.end method

.method public abstract onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    const/4 p3, 0x1

    .line 2
    invoke-virtual {p0, p3}, Lmiuix/appcompat/app/Fragment;->setHasOptionsMenu(Z)V

    .line 5
    iget-object p3, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mParseSdk:Lcom/android/fileexplorer/service/DirParseSDK;

    .line 7
    invoke-virtual {p3}, Lcom/android/fileexplorer/service/DirParseSDK;->init()V

    .line 10
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->getLayoutRes()I

    .line 13
    move-result p3

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 21
    iget-boolean p2, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mHasPermission:Z

    .line 23
    if-eqz p2, :cond_1c

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->initView(Landroid/view/View;)V

    .line 28
    goto :goto_29

    .line 29
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->initEmptyView(Landroid/view/View;)V

    .line 32
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mBtnToSetting:Landroid/widget/Button;

    .line 34
    new-instance p2, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment$1;

    .line 36
    invoke-direct {p2, p0}, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment$1;-><init>(Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;)V

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    :goto_29
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 44
    return-object p1
.end method
