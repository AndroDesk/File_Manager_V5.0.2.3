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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/AppLayoutBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private handleNavigation()V
    .registers 1

    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/pad/fragment/PadMainFragment;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadMainFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadMainFragment;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;-><init>()V

    if-eqz p0, :cond_a

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method

.method private startFileActivity(Landroid/content/Intent;)V
    .registers 7

    const-class v0, Lcom/android/fileexplorer/activity/FileActivity;

    const-string v1, "current_directory"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "inner_call"

    const/4 v4, 0x0

    if-nez v2, :cond_30

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_65

    :cond_30
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_65

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "pick_router"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

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

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mIntent:Landroid/content/Intent;

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {p0}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->navigator2SearchFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_94

    :cond_16
    const-string v1, "com.android.fileexplorer.export.VIEW_HOME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v0, "extraTabName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_94

    iget-object v1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadNavigationFragment:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateTo(Ljava/lang/String;)V

    goto :goto_94

    :cond_30
    const-string v1, "com.android.fileexplorer.shortcut.START_PHONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/PageRouter;->navigate2HomeFile(Landroid/content/Context;)V

    goto :goto_94

    :cond_40
    const-string v1, "com.android.fileexplorer.shortcut.START_DOC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result p1

    if-eqz p1, :cond_94

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadNavigationFragment:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    const-string v0, "doc"

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->getPageIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_5f

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadNavigationFragment:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateTo(Ljava/lang/String;)V

    goto :goto_94

    :cond_5f
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadNavigationFragment:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    const-string v0, "more"

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateTo(Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v6, Lcom/android/fileexplorer/event/PadContentChangeEvent;

    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f182df0

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "more"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/event/PadContentChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_94

    :cond_91
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->startFileActivity(Landroid/content/Intent;)V

    :cond_94
    :goto_94
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mScreenOrientation:I

    const v0, 0x7f032e5b

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/navigation/SplitLayout;

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mSplitLayout:Lmiuix/navigation/SplitLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/navigation/SplitLayout;->setSplitMode(I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->handleNavigation()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "Navigation"

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_3b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadNavigationFragment:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    goto :goto_42

    :cond_3b
    new-instance p1, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-direct {p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadNavigationFragment:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    :goto_42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v2, "Content"

    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_5b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/pad/fragment/PadContentFragment;

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadContentFragment:Lcom/android/fileexplorer/pad/fragment/PadContentFragment;

    goto :goto_62

    :cond_5b
    new-instance p1, Lcom/android/fileexplorer/pad/fragment/PadContentFragment;

    invoke-direct {p1}, Lcom/android/fileexplorer/pad/fragment/PadContentFragment;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadContentFragment:Lcom/android/fileexplorer/pad/fragment/PadContentFragment;

    :goto_62
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_81

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_81

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v3, "open_path"

    invoke-static {v3, p1}, La/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v3, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadContentFragment:Lcom/android/fileexplorer/pad/fragment/PadContentFragment;

    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_88

    return-void

    :cond_88
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadNavigationFragment:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_b3

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadContentFragment:Lcom/android/fileexplorer/pad/fragment/PadContentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_b3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object p1

    const v3, 0x7f0a0293

    iget-object v4, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadContentFragment:Lcom/android/fileexplorer/pad/fragment/PadContentFragment;

    invoke-virtual {p1, v3, v4, v2, v0}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    const v2, 0x7f0a0295

    iget-object v3, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mPadNavigationFragment:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-virtual {p1, v2, v3, v1, v0}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroidx/fragment/app/a;->p()I

    :cond_b3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

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

.method public onPadContentChangeEvent(Lcom/android/fileexplorer/event/PadContentChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    invoke-static {p2}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->updateCurrentState(I)V

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mWindowingMode=freeform"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {p1}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->updateWindowState(Z)V

    :cond_15
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->mSplitLayout:Lmiuix/navigation/SplitLayout;

    if-nez p1, :cond_21

    const-string p1, "PadMainFragment"

    const-string p2, "splitLayout is null"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_21
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->handleNavigation()V

    return-void
.end method

.method public showNavButton()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
