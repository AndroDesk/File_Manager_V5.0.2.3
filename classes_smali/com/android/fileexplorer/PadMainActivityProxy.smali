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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/BaseActivity;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/BaseMainActivityProxy;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/PadMainActivityProxy;)Lcom/android/fileexplorer/AppLayoutBaseFragment;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

    return-object p0
.end method

.method private replaceFragment(Lcom/android/fileexplorer/fragment/BaseFragment;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const v0, 0x7f0a0225

    invoke-virtual {v1, v0, p1, p2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    return-void
.end method

.method private showFragment()V
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isShowGuide()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->newInstance()Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mGuideFragment:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    const-string v1, "Guide"

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/PadMainActivityProxy;->replaceFragment(Lcom/android/fileexplorer/fragment/BaseFragment;Ljava/lang/String;)V

    goto :goto_23

    :cond_18
    invoke-static {}, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->newInstance()Lcom/android/fileexplorer/pad/fragment/PadMainFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

    const-string v1, "Main"

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/PadMainActivityProxy;->replaceFragment(Lcom/android/fileexplorer/fragment/BaseFragment;Ljava/lang/String;)V

    :goto_23
    return-void
.end method


# virtual methods
.method public PadGuidFinishEvent(Lcom/android/fileexplorer/event/PadGuidFinishEvent;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mGuideFragment:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    invoke-static {}, Lcom/android/fileexplorer/pad/fragment/PadMainFragment;->newInstance()Lcom/android/fileexplorer/pad/fragment/PadMainFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->setShowGuide()V

    iget-object p1, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object p1

    const v0, 0x7f01005a

    const/4 v1, 0x0

    const v2, 0x7f01005c

    invoke-virtual {p1, v0, v1, v1, v2}, Landroidx/fragment/app/b0;->l(IIII)V

    iget-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

    const v1, 0x7f0a0225

    const-string v2, "Main"

    invoke-virtual {p1, v1, v0, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/a;->d()I

    return-void
.end method

.method public dismissLoading()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const v1, 0x7f032fbe

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_14

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/AppLayoutBaseFragment;->handleIntent(Landroid/content/Intent;)V

    goto :goto_22

    :cond_10
    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/PadMainActivityProxy$1;

    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/PadMainActivityProxy$1;-><init>(Lcom/android/fileexplorer/PadMainActivityProxy;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_22
    :goto_22
    return-void
.end method

.method public initView(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-nez p1, :cond_d

    invoke-direct {p0}, Lcom/android/fileexplorer/PadMainActivityProxy;->showFragment()V

    :cond_d
    iget-object p1, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v0, "Main"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/AppLayoutBaseFragment;

    iput-object p1, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

    :cond_21
    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/fileexplorer/AppLayoutBaseFragment;->onBack()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mGuideFragment:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mGuideFragment:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1e
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mCurrentFragment:Lcom/android/fileexplorer/AppLayoutBaseFragment;

    iput-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy;->mGuideFragment:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

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

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const v1, 0x7f042d28

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    return-void
.end method

.method public showLoading()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const v1, 0x7f032fbe

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void
.end method
