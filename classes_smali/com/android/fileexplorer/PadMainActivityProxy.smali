.class Lcom/android/fileexplorer/PadMainActivityProxy;
.super Lcom/android/fileexplorer/BaseMainActivityProxy;
.source "PadMainActivityProxy.java"


# static fields
.field public static final FRAGMENT_TAG_GUIDE:Ljava/lang/String; = "Guide"

.field public static final FRAGMENT_TAG_MAIN:Ljava/lang/String; = "Main"


# instance fields
.field private mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mGuideFragment:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/BaseActivity;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/BaseMainActivityProxy;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 6
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/PadMainActivityProxy;)Lcom/android/fileexplorer/AppLayoutBaseFragment;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

    .line 3
    return-object p0
.end method

.method private replaceFragment(Lcom/android/fileexplorer/fragment/BaseFragment;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v1, Landroidx/fragment/app/a;

    .line 8
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 11
    const v0, 0x7f0a0225

    .line 14
    invoke-virtual {v1, v0, p1, p2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    .line 20
    return-void
.end method

.method private showFragment()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_18

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isShowGuide()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_18

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->newInstance()Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mGuideFragment:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    .line 19
    const-string v1, "Guide"

    .line 21
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/PadMainActivityProxy;->replaceFragment(Lcom/android/fileexplorer/fragment/BaseFragment;Ljava/lang/String;)V

    .line 24
    goto :goto_23

    .line 25
    :cond_18
    invoke-static {}, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->newInstance()Lcom/android/fileexplorer/pad/fragment/PadMainFragment;

    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

    .line 31
    const-string v1, "Main"

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/PadMainActivityProxy;->replaceFragment(Lcom/android/fileexplorer/fragment/BaseFragment;Ljava/lang/String;)V

    .line 36
    :goto_23
    return-void
.end method


# virtual methods
.method public PadGuidFinishEvent(Lcom/android/fileexplorer/event/PadGuidFinishEvent;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mGuideFragment:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->newInstance()Lcom/android/fileexplorer/pad/fragment/PadMainFragment;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->setShowGuide()V

    .line 13
    iget-object p1, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 15
    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 18
    move-result-object p1

    .line 19
    const v0, 0x7f01005a

    .line 22
    const/4 v1, 0x0

    .line 23
    const v2, 0x7f01005c

    .line 26
    invoke-virtual {p1, v0, v1, v1, v2}, Landroidx/fragment/app/b0;->l(IIII)V

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

    .line 31
    const v1, 0x7f0a0225

    .line 34
    const-string v2, "Main"

    .line 36
    invoke-virtual {p1, v1, v0, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Landroidx/fragment/app/a;->d()I

    .line 42
    return-void
.end method

.method public dismissLoading()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 3
    const v1, 0x7f0a0228

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_10

    .line 12
    const/16 v1, 0x8

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_10
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

    .line 3
    if-eqz v0, :cond_22

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_10

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

    .line 13
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/AppLayoutBaseFragment;->handleIntent(Landroid/content/Intent;)V

    .line 16
    goto :goto_22

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 19
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lcom/android/fileexplorer/PadMainActivityProxy$1;

    .line 29
    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/PadMainActivityProxy$1;-><init>(Lcom/android/fileexplorer/PadMainActivityProxy;Landroid/content/Intent;)V

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 35
    :cond_22
    :goto_22
    return-void
.end method

.method public initView(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 9
    if-nez p1, :cond_d

    .line 11
    invoke-direct {p0}, Lcom/android/fileexplorer/PadMainActivityProxy;->showFragment()V

    .line 14
    :cond_d
    iget-object p1, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 16
    const-string v0, "Main"

    .line 18
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_21

    .line 24
    iget-object p1, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 26
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/android/fileexplorer/AppLayoutBaseFragment;

    .line 32
    iput-object p1, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

    .line 34
    :cond_21
    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/AppLayoutBaseFragment;->onBack()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_f

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

    .line 13
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mGuideFragment:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    .line 18
    if-eqz v0, :cond_1e

    .line 20
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1e

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mGuideFragment:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    .line 28
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 31
    :cond_1e
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

    .line 11
    iput-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mGuideFragment:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    .line 13
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .registers 2

    return-void
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public setupContentView()V
    .registers 3

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 10
    const v1, 0x7f0d00be

    .line 13
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 16
    return-void
.end method

.method public showLoading()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 3
    const v1, 0x7f0a0228

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_f

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :cond_f
    return-void
.end method
