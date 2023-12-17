.class public Lcom/android/fileexplorer/activity/WidgetChooseActivity;
.super Lcom/android/fileexplorer/activity/BaseWidgetChooseActivity;
.source "WidgetChooseActivity.java"


# static fields
.field public static final FRAGMENT_TAG_CONTENT:Ljava/lang/String; = "Content"

.field public static final FRAGMENT_TAG_CONTENT_FLOAT:Ljava/lang/String; = "Float"

.field private static final TAG:Ljava/lang/String; = "WidgetChooseActivity"


# instance fields
.field private flag_permission:I

.field private fragmentContainer:Landroid/view/View;

.field private holder0:Landroid/view/View;

.field private holder1:Landroid/view/View;

.field private homeKeyReceiver:Lcom/android/fileexplorer/widget/HomeKeyReceiver;

.field private largeScreenMode:Z

.field private mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

.field private miuiWidgetScreenSide:I

.field private rootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseWidgetChooseActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->miuiWidgetScreenSide:I

    return-void
.end method

.method private checkOrientation()V
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isFolderDeviceInnerDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_15

    :cond_12
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->setPageOrientation()V

    :goto_15
    return-void
.end method

.method private onCreateImpl(Landroid/os/Bundle;)V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, -0x1

    const-string v1, "miuiWidgetScreenSide"

    if-eqz p1, :cond_12

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->miuiWidgetScreenSide:I

    goto :goto_1e

    :cond_12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1e

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->miuiWidgetScreenSide:I

    :cond_1e
    :goto_1e
    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isFolderDeviceOrPadNavFragment(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_2d

    move p1, v0

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->largeScreenMode:Z

    const p1, 0x7f032f69

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->rootView:Landroid/view/View;

    const p1, 0x7f032c97

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->fragmentContainer:Landroid/view/View;

    new-instance v1, Lcom/android/fileexplorer/activity/WidgetChooseActivity$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity$1;-><init>(Lcom/android/fileexplorer/activity/WidgetChooseActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->fragmentContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    const p1, 0x7f032e8b

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->holder0:Landroid/view/View;

    const p1, 0x7f032e88

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->holder1:Landroid/view/View;

    iget-object p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->holder0:Landroid/view/View;

    new-instance v0, Lcom/android/fileexplorer/activity/WidgetChooseActivity$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity$2;-><init>(Lcom/android/fileexplorer/activity/WidgetChooseActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->holder1:Landroid/view/View;

    new-instance v0, Lcom/android/fileexplorer/activity/WidgetChooseActivity$3;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity$3;-><init>(Lcom/android/fileexplorer/activity/WidgetChooseActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isFolderDeviceOrPadNavFragment(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8f

    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->showContent()V

    goto :goto_92

    :cond_8f
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->showNormalFragment()V

    :goto_92
    return-void
.end method

.method private requestPermission(Landroid/os/Bundle;)V
    .registers 4

    invoke-static {p0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->STORAGE()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/PermissionUtils;->getPermissionStatus(Landroid/content/Context;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->flag_permission:I

    :cond_10
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->flag_permission:I

    if-ne v0, v1, :cond_1c

    invoke-static {p0}, Lcom/android/fileexplorer/util/AppUtils;->showPermissionRequiredDialog(Landroid/app/Activity;)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->onCreateImpl(Landroid/os/Bundle;)V

    goto :goto_41

    :cond_1c
    const/4 v0, 0x1

    if-ne v0, v1, :cond_2c

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->onCreateImpl(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->STORAGE()[Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x72

    invoke-static {p0, p1, v0}, Ld0/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_41

    :cond_2c
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->onCreateImpl(Landroid/os/Bundle;)V

    goto :goto_41

    :cond_36
    if-nez p1, :cond_41

    invoke-static {p0}, Lcom/android/fileexplorer/util/PrivacyUtil;->startNecessaryPermissionPage(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->onCreateImpl(Landroid/os/Bundle;)V

    :cond_41
    :goto_41
    return-void
.end method

.method private setBundle()V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "isEdit"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "is_edit"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_26
    iget-object v1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method private setPageOrientation()V
    .registers 4

    invoke-static {p0}, Lcom/android/fileexplorer/util/DisplayUtil;->getScreenSizeDp(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    if-le v1, v0, :cond_12

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_15

    :cond_12
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_15
    return-void
.end method

.method private showFloatFragment()V
    .registers 5

    iget v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->miuiWidgetScreenSide:I

    const/4 v1, 0x0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->holder0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    :cond_b
    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->holder1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->rootView:Landroid/view/View;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "Content"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/BaseFragment;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-nez v0, :cond_32

    new-instance v0, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    :cond_32
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->setBundle()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v0

    const v2, 0x7f0a0101

    iget-object v3, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    return-void
.end method

.method private showNormalFragment()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->holder0:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->holder1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->rootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->rootView:Landroid/view/View;

    const v1, 0x7f0600cc

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "Content"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/BaseFragment;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-nez v0, :cond_31

    new-instance v0, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    :cond_31
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->setBundle()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v0

    const v2, 0x7f0a0101

    iget-object v3, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    return-void
.end method


# virtual methods
.method public getAnchorView()Landroid/view/View;
    .registers 2

    const v0, 0x7f032d1b

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public ignoreParentResponsiveLayout()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isLargeScreenMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->largeScreenMode:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x80

    if-eq p1, p3, :cond_8

    goto :goto_3e

    :cond_8
    const/4 p1, -0x3

    if-eq p2, p1, :cond_32

    const/4 p1, -0x1

    if-eq p2, p1, :cond_2a

    if-eqz p2, :cond_26

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1b

    const/4 p1, 0x2

    if-eq p2, p1, :cond_17

    goto :goto_3e

    :cond_17
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_3e

    :cond_1b
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacySwitch(Z)V

    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setDataConsumptionSwitch(Z)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->onCreateImpl(Landroid/os/Bundle;)V

    goto :goto_3e

    :cond_26
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_3e

    :cond_2a
    sget-object p1, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->TAG:Ljava/lang/String;

    const-string p2, "miss config"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :cond_32
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    move-result p1

    if-nez p1, :cond_3e

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    invoke-static {p0}, Lcom/android/fileexplorer/util/PrivacyUtil;->startNecessaryPermissionPage(Landroid/app/Activity;)Z

    :cond_3e
    :goto_3e
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isFolderDeviceOrPadNavFragment(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->largeScreenMode:Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->showContent()V

    :cond_1d
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->checkOrientation()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->setPageOrientation()V

    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f042dbb

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->requestPermission(Landroid/os/Bundle;)V

    new-instance p1, Lcom/android/fileexplorer/widget/HomeKeyReceiver;

    invoke-direct {p1}, Lcom/android/fileexplorer/widget/HomeKeyReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->homeKeyReceiver:Lcom/android/fileexplorer/widget/HomeKeyReceiver;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->homeKeyReceiver:Lcom/android/fileexplorer/widget/HomeKeyReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->homeKeyReceiver:Lcom/android/fileexplorer/widget/HomeKeyReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->miuiWidgetScreenSide:I

    const-string v1, "miuiWidgetScreenSide"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public showContent()V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->rootView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->largeScreenMode:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    const v0, 0x7f032f69

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v3, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->largeScreenMode:Z

    const v4, 0x7f070804

    if-eqz v3, :cond_2e

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    goto :goto_2f

    :cond_2e
    move v3, v2

    :goto_2f
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-boolean v3, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->largeScreenMode:Z

    if-eqz v3, :cond_40

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    goto :goto_41

    :cond_40
    move v3, v2

    :goto_41
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->rootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4a
    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->largeScreenMode:Z

    if-eqz v0, :cond_52

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->showFloatFragment()V

    goto :goto_5a

    :cond_52
    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->rootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->showNormalFragment()V

    :goto_5a
    sget-object v0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->TAG:Ljava/lang/String;

    const-string v1, "largeScreenMode: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->largeScreenMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " miuiWidgetScreenSide:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->miuiWidgetScreenSide:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
