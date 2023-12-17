.class public Lcom/android/fileexplorer/pad/fragment/PadMainFragment;
.super Lcom/android/fileexplorer/AppLayoutBaseFragment;
.source "PadMainFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ARG_CONTENT_FRAGMENT_CATEGORY:Ljava/lang/String; = "arg_content_fragment_category"

.field public static final EXTRA_FILE_NAME:Ljava/lang/String; = "extraFileName"

.field private static final EXTRA_TAB_NAME:Ljava/lang/String; = "extraTabName"

.field public static final FRAGMENT_TAG_CONTENT:Ljava/lang/String; = "Content"

.field public static final FRAGMENT_TAG_NAVIGATION:Ljava/lang/String; = "Navigation"

.field public static final TAG:Ljava/lang/String; = "PadMainFragment"


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mPadContentFragment:Lcom/android/fileexplorer/pad/fragment/PadContentFragment;

.field private mPadNavigationFragment:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

.field private volatile mScreenOrientation:I

.field private mSplitLayout:Lmiuix/navigation/SplitLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/AppLayoutBaseFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mIntent:Landroid/content/Intent;

    .line 7
    return-void
.end method

.method private handleNavigation()V
    .registers 1

    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/pad/fragment/PadMainFragment;
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadMainFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadMainFragment;
    .registers 2

    .line 2
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;-><init>()V

    if-eqz p0, :cond_a

    .line 3
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method

.method private startFileActivity(Landroid/content/Intent;)V
    .registers 7

    .line 1
    const-class v0, Lcom/android/fileexplorer/activity/FileActivity;

    .line 3
    const-string v1, "current_directory"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v2

    .line 13
    const-string v3, "inner_call"

    .line 15
    const/4 v4, 0x0

    .line 16
    if-nez v2, :cond_30

    .line 18
    new-instance v2, Landroid/content/Intent;

    .line 20
    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 30
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    new-instance p1, Ljava/io/File;

    .line 35
    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 48
    goto :goto_65

    .line 49
    :cond_30
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_65

    .line 55
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_65

    .line 69
    new-instance v1, Landroid/content/Intent;

    .line 71
    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 84
    const-string v0, "pick_router"

    .line 86
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 102
    :cond_65
    :goto_65
    return-void
.end method


# virtual methods
.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d007e

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    const-string v0, "PadMainFragment"

    return-object v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .registers 9

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mIntent:Landroid/content/Intent;

    .line 3
    if-nez p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    const-string v1, "android.intent.action.SEARCH"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_16

    .line 18
    invoke-static {p0}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->navigator2SearchFragment(Landroidx/fragment/app/Fragment;)V

    .line 21
    goto/16 :goto_90

    .line 23
    :cond_16
    const-string v1, "com.android.fileexplorer.export.VIEW_HOME"

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_30

    .line 31
    const-string v0, "extraTabName"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_90

    .line 39
    iget-object v1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadNavigationFragment:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateTo(Ljava/lang/String;)V

    .line 48
    goto :goto_90

    .line 49
    :cond_30
    const-string v1, "com.android.fileexplorer.shortcut.START_PHONE"

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_40

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Lcom/android/fileexplorer/util/PageRouter;->navigate2HomeFile(Landroid/content/Context;)V

    .line 64
    goto :goto_90

    .line 65
    :cond_40
    const-string v1, "com.android.fileexplorer.shortcut.START_DOC"

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_8d

    .line 73
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_90

    .line 79
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadNavigationFragment:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 81
    const-string v0, "doc"

    .line 83
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->getPageIndex(Ljava/lang/String;)I

    .line 86
    move-result p1

    .line 87
    const/4 v1, -0x1

    .line 88
    if-eq p1, v1, :cond_5f

    .line 90
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadNavigationFragment:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 92
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateTo(Ljava/lang/String;)V

    .line 95
    goto :goto_90

    .line 96
    :cond_5f
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadNavigationFragment:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 98
    const-string v0, "more"

    .line 100
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateTo(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 106
    move-result-object p1

    .line 107
    new-instance v6, Lcom/android/fileexplorer/event/PadContentChangeEvent;

    .line 109
    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;

    .line 111
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 118
    move-result-object v0

    .line 119
    const v2, 0x7f110066

    .line 122
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 125
    move-result-object v2

    .line 126
    const/4 v3, 0x1

    .line 127
    new-instance v4, Landroid/os/Bundle;

    .line 129
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 132
    const-string v5, "more"

    .line 134
    move-object v0, v6

    .line 135
    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/event/PadContentChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 141
    goto :goto_90

    .line 142
    :cond_8d
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->startFileActivity(Landroid/content/Intent;)V

    .line 145
    :cond_90
    :goto_90
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 11
    iput v0, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mScreenOrientation:I

    .line 13
    const v0, 0x7f0a03cd

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lmiuix/navigation/SplitLayout;

    .line 22
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mSplitLayout:Lmiuix/navigation/SplitLayout;

    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p1, v0}, Lmiuix/navigation/SplitLayout;->setSplitMode(I)V

    .line 28
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->handleNavigation()V

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 34
    move-result-object p1

    .line 35
    const-string v1, "Navigation"

    .line 37
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_37

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 53
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadNavigationFragment:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 55
    goto :goto_3e

    .line 56
    :cond_37
    new-instance p1, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 58
    invoke-direct {p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadNavigationFragment:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 63
    :goto_3e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 66
    move-result-object p1

    .line 67
    const-string v2, "Content"

    .line 69
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_57

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/android/fileexplorer/pad/fragment/PadContentFragment;

    .line 85
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadContentFragment:Lcom/android/fileexplorer/pad/fragment/PadContentFragment;

    .line 87
    goto :goto_5e

    .line 88
    :cond_57
    new-instance p1, Lcom/android/fileexplorer/pad/fragment/PadContentFragment;

    .line 90
    invoke-direct {p1}, Lcom/android/fileexplorer/pad/fragment/PadContentFragment;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadContentFragment:Lcom/android/fileexplorer/pad/fragment/PadContentFragment;

    .line 95
    :goto_5e
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mIntent:Landroid/content/Intent;

    .line 97
    if-eqz p1, :cond_7d

    .line 99
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_7d

    .line 105
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mIntent:Landroid/content/Intent;

    .line 107
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    const-string v3, "open_path"

    .line 117
    invoke-static {v3, p1}, La/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 120
    move-result-object p1

    .line 121
    iget-object v3, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadContentFragment:Lcom/android/fileexplorer/pad/fragment/PadContentFragment;

    .line 123
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 126
    :cond_7d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 129
    move-result p1

    .line 130
    if-nez p1, :cond_84

    .line 132
    return-void

    .line 133
    :cond_84
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadNavigationFragment:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 135
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 138
    move-result p1

    .line 139
    if-nez p1, :cond_af

    .line 141
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadContentFragment:Lcom/android/fileexplorer/pad/fragment/PadContentFragment;

    .line 143
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 146
    move-result p1

    .line 147
    if-nez p1, :cond_af

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 152
    move-result-object p1

    .line 153
    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 156
    move-result-object p1

    .line 157
    const v3, 0x7f0a0293

    .line 160
    iget-object v4, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadContentFragment:Lcom/android/fileexplorer/pad/fragment/PadContentFragment;

    .line 162
    invoke-virtual {p1, v3, v4, v2, v0}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 165
    const v2, 0x7f0a0295

    .line 168
    iget-object v3, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadNavigationFragment:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 170
    invoke-virtual {p1, v2, v3, v1, v0}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 173
    invoke-virtual {p1}, Landroidx/fragment/app/a;->p()I

    .line 176
    :cond_af
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 11
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

.method public onPadContentChangeEvent(Lcom/android/fileexplorer/event/PadContentChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    .line 4
    invoke-static {p2}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->updateCurrentState(I)V

    .line 7
    if-eqz p1, :cond_15

    .line 9
    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    const-string p2, "mWindowingMode=freeform"

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->updateWindowState(Z)V

    .line 22
    :cond_15
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mSplitLayout:Lmiuix/navigation/SplitLayout;

    .line 24
    if-nez p1, :cond_21

    .line 26
    const-string p1, "PadMainFragment"

    .line 28
    const-string p2, "splitLayout is null"

    .line 30
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void

    .line 34
    :cond_21
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->handleNavigation()V

    .line 37
    return-void
.end method

.method public showNavButton()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
