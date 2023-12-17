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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseWidgetChooseActivity;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->miuiWidgetScreenSide:I

    .line 7
    return-void
.end method

.method private checkOrientation()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isFolderDeviceInnerDisplay(Landroid/content/Context;)Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_12

    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 18
    goto :goto_15

    .line 19
    :cond_12
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->setPageOrientation()V

    .line 22
    :goto_15
    return-void
.end method

.method private onCreateImpl(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1e

    .line 7
    const/4 v0, -0x1

    .line 8
    const-string v1, "miuiWidgetScreenSide"

    .line 10
    if-eqz p1, :cond_12

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->miuiWidgetScreenSide:I

    .line 18
    goto :goto_1e

    .line 19
    :cond_12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_1e

    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->miuiWidgetScreenSide:I

    .line 31
    :cond_1e
    :goto_1e
    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isFolderDeviceOrPadNavFragment(Landroid/content/Context;)Z

    .line 34
    move-result p1

    .line 35
    const/4 v0, 0x1

    .line 36
    if-eqz p1, :cond_2d

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_2d

    .line 44
    move p1, v0

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    const/4 p1, 0x0

    .line 47
    :goto_2e
    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->largeScreenMode:Z

    .line 49
    const p1, 0x7f0a02ff

    .line 52
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->rootView:Landroid/view/View;

    .line 58
    const p1, 0x7f0a0101

    .line 61
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->fragmentContainer:Landroid/view/View;

    .line 67
    new-instance v1, Lcom/android/fileexplorer/activity/WidgetChooseActivity$1;

    .line 69
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity$1;-><init>(Lcom/android/fileexplorer/activity/WidgetChooseActivity;)V

    .line 72
    invoke-virtual {p1, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 75
    iget-object p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->fragmentContainer:Landroid/view/View;

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 80
    const p1, 0x7f0a031d

    .line 83
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->holder0:Landroid/view/View;

    .line 89
    const p1, 0x7f0a031e

    .line 92
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->holder1:Landroid/view/View;

    .line 98
    iget-object p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->holder0:Landroid/view/View;

    .line 100
    new-instance v0, Lcom/android/fileexplorer/activity/WidgetChooseActivity$2;

    .line 102
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity$2;-><init>(Lcom/android/fileexplorer/activity/WidgetChooseActivity;)V

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->holder1:Landroid/view/View;

    .line 110
    new-instance v0, Lcom/android/fileexplorer/activity/WidgetChooseActivity$3;

    .line 112
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity$3;-><init>(Lcom/android/fileexplorer/activity/WidgetChooseActivity;)V

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isFolderDeviceOrPadNavFragment(Landroid/content/Context;)Z

    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_7f

    .line 124
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->showContent()V

    .line 127
    goto :goto_82

    .line 128
    :cond_7f
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->showNormalFragment()V

    .line 131
    :goto_82
    return-void
.end method

.method private requestPermission(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_10

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->STORAGE()[Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/PermissionUtils;->getPermissionStatus(Landroid/content/Context;[Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->flag_permission:I

    .line 17
    :cond_10
    const/4 v0, -0x1

    .line 18
    iget v1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->flag_permission:I

    .line 20
    if-ne v0, v1, :cond_1c

    .line 22
    invoke-static {p0}, Lcom/android/fileexplorer/util/AppUtils;->showPermissionRequiredDialog(Landroid/app/Activity;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->onCreateImpl(Landroid/os/Bundle;)V

    .line 28
    goto :goto_41

    .line 29
    :cond_1c
    const/4 v0, 0x1

    .line 30
    if-ne v0, v1, :cond_2c

    .line 32
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->onCreateImpl(Landroid/os/Bundle;)V

    .line 35
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->STORAGE()[Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    const/16 v0, 0x72

    .line 41
    invoke-static {p0, p1, v0}, Ld0/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 44
    goto :goto_41

    .line 45
    :cond_2c
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_36

    .line 51
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->onCreateImpl(Landroid/os/Bundle;)V

    .line 54
    goto :goto_41

    .line 55
    :cond_36
    if-nez p1, :cond_41

    .line 57
    invoke-static {p0}, Lcom/android/fileexplorer/util/PrivacyUtil;->startNecessaryPermissionPage(Landroid/app/Activity;)Z

    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_41

    .line 63
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->onCreateImpl(Landroid/os/Bundle;)V

    .line 66
    :cond_41
    :goto_41
    return-void
.end method

.method private setBundle()V
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_26

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 23
    move-result-object v1

    .line 24
    const-string v2, "isEdit"

    .line 26
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    const-string v3, "is_edit"

    .line 32
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    :cond_26
    iget-object v1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 41
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 44
    return-void
.end method

.method private setPageOrientation()V
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/util/DisplayUtil;->getScreenSizeDp(Landroid/content/Context;)[I

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    aget v1, v0, v1

    .line 8
    const/4 v2, 0x1

    .line 9
    aget v0, v0, v2

    .line 11
    if-le v1, v0, :cond_12

    .line 13
    const/16 v0, 0xb

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 18
    goto :goto_15

    .line 19
    :cond_12
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 22
    :goto_15
    return-void
.end method

.method private showFloatFragment()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->miuiWidgetScreenSide:I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_b

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->holder0:Landroid/view/View;

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    goto :goto_13

    .line 12
    :cond_b
    const/4 v2, 0x1

    .line 13
    if-ne v0, v2, :cond_13

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->holder1:Landroid/view/View;

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->rootView:Landroid/view/View;

    .line 22
    const v1, 0x106000d

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 31
    move-result-object v0

    .line 32
    const-string v1, "Content"

    .line 34
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 40
    iput-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 42
    if-nez v0, :cond_32

    .line 44
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;

    .line 46
    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 51
    :cond_32
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->setBundle()V

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 61
    move-result-object v0

    .line 62
    const v2, 0x7f0a0101

    .line 65
    iget-object v3, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 67
    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    .line 73
    return-void
.end method

.method private showNormalFragment()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->holder0:Landroid/view/View;

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->holder1:Landroid/view/View;

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->rootView:Landroid/view/View;

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->rootView:Landroid/view/View;

    .line 21
    const v1, 0x7f0600cc

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 30
    move-result-object v0

    .line 31
    const-string v1, "Content"

    .line 33
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 39
    iput-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 41
    if-nez v0, :cond_31

    .line 43
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;

    .line 45
    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 50
    :cond_31
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->setBundle()V

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 60
    move-result-object v0

    .line 61
    const v2, 0x7f0a0101

    .line 64
    iget-object v3, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 66
    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    .line 72
    return-void
.end method


# virtual methods
.method public getAnchorView()Landroid/view/View;
    .registers 2

    .line 1
    const v0, 0x7f0a008d

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public ignoreParentResponsiveLayout()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isLargeScreenMode()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->largeScreenMode:Z

    .line 3
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/16 p3, 0x80

    .line 6
    if-eq p1, p3, :cond_8

    .line 8
    goto :goto_3e

    .line 9
    :cond_8
    const/4 p1, -0x3

    .line 10
    if-eq p2, p1, :cond_32

    .line 12
    const/4 p1, -0x1

    .line 13
    if-eq p2, p1, :cond_2a

    .line 15
    if-eqz p2, :cond_26

    .line 17
    const/4 p1, 0x1

    .line 18
    if-eq p2, p1, :cond_1b

    .line 20
    const/4 p1, 0x2

    .line 21
    if-eq p2, p1, :cond_17

    .line 23
    goto :goto_3e

    .line 24
    :cond_17
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 27
    goto :goto_3e

    .line 28
    :cond_1b
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacySwitch(Z)V

    .line 31
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setDataConsumptionSwitch(Z)V

    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->onCreateImpl(Landroid/os/Bundle;)V

    .line 38
    goto :goto_3e

    .line 39
    :cond_26
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 42
    goto :goto_3e

    .line 43
    :cond_2a
    sget-object p1, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->TAG:Ljava/lang/String;

    .line 45
    const-string p2, "miss config"

    .line 47
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    goto :goto_3e

    .line 51
    :cond_32
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_3e

    .line 57
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 60
    invoke-static {p0}, Lcom/android/fileexplorer/util/PrivacyUtil;->startNecessaryPermissionPage(Landroid/app/Activity;)Z

    .line 63
    :cond_3e
    :goto_3e
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_1d

    .line 10
    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isFolderDeviceOrPadNavFragment(Landroid/content/Context;)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_17

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_17

    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 p1, 0x0

    .line 25
    :goto_18
    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->largeScreenMode:Z

    .line 27
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->showContent()V

    .line 30
    :cond_1d
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->checkOrientation()V

    .line 33
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->setPageOrientation()V

    .line 4
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    move-result-object v0

    .line 11
    const/high16 v1, 0x8000000

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 16
    const v0, 0x7f0d002d

    .line 19
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 22
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->requestPermission(Landroid/os/Bundle;)V

    .line 25
    new-instance p1, Lcom/android/fileexplorer/widget/HomeKeyReceiver;

    .line 27
    invoke-direct {p1}, Lcom/android/fileexplorer/widget/HomeKeyReceiver;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->homeKeyReceiver:Lcom/android/fileexplorer/widget/HomeKeyReceiver;

    .line 32
    new-instance p1, Landroid/content/IntentFilter;

    .line 34
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 36
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->homeKeyReceiver:Lcom/android/fileexplorer/widget/HomeKeyReceiver;

    .line 41
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 44
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->homeKeyReceiver:Lcom/android/fileexplorer/widget/HomeKeyReceiver;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->miuiWidgetScreenSide:I

    .line 6
    const-string v1, "miuiWidgetScreenSide"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    return-void
.end method

.method public showContent()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->rootView:Landroid/view/View;

    .line 3
    iget-boolean v1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->largeScreenMode:Z

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 8
    const v0, 0x7f0a02ff

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v0

    .line 19
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_46

    .line 24
    move-object v1, v0

    .line 25
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 27
    iget-boolean v3, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->largeScreenMode:Z

    .line 29
    const v4, 0x7f070804

    .line 32
    if-eqz v3, :cond_2a

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 41
    move-result v3

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move v3, v2

    .line 44
    :goto_2b
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 46
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 48
    iget-boolean v3, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->largeScreenMode:Z

    .line 50
    if-eqz v3, :cond_3c

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 59
    move-result v3

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    move v3, v2

    .line 62
    :goto_3d
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 64
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 66
    iget-object v1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->rootView:Landroid/view/View;

    .line 68
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    :cond_46
    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->largeScreenMode:Z

    .line 73
    if-eqz v0, :cond_4e

    .line 75
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->showFloatFragment()V

    .line 78
    goto :goto_56

    .line 79
    :cond_4e
    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->rootView:Landroid/view/View;

    .line 81
    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 84
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->showNormalFragment()V

    .line 87
    :goto_56
    sget-object v0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->TAG:Ljava/lang/String;

    .line 89
    const-string v1, "largeScreenMode: "

    .line 91
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    move-result-object v1

    .line 95
    iget-boolean v2, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->largeScreenMode:Z

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    const-string v2, " miuiWidgetScreenSide:"

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v2, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity;->miuiWidgetScreenSide:I

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method
