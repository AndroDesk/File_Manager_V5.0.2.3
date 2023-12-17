.class public Lcom/android/cloud/activity/RevokeOrLogoutActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "RevokeOrLogoutActivity.java"

# interfaces
.implements Lcom/android/cloud/activity/controller/IRevokeOrLogoutController;


# static fields
.field public static final EXTRA_IS_IN_ALERT_PAGE:Ljava/lang/String; = "extra_is_in_alert_page"

.field public static final EXTRA_IS_RECALL_PRIVACY:Ljava/lang/String; = "extra_is_recall_privacy"

.field private static final TAG:Ljava/lang/String; = "RevokeOrLogoutActivity"


# instance fields
.field private mIsInAlertPage:Z

.field private mIsRecallPrivacy:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    .line 4
    return-void
.end method

.method private initActionBar()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/android/cloud/activity/RevokeOrLogoutActivity;->mIsRecallPrivacy:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    const v0, 0x7f110375

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    const v0, 0x7f11005b

    .line 12
    :goto_b
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 15
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1f

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(IZ)V

    .line 25
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayShowTitleEnabled(Z)V

    .line 32
    :cond_1f
    return-void
.end method


# virtual methods
.method public onAllTasksDone()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/android/cloud/activity/RevokeOrLogoutActivity;->mIsRecallPrivacy:Z

    .line 3
    if-eqz v0, :cond_c

    .line 5
    const v0, 0x7f110374

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    goto :goto_13

    .line 13
    :cond_c
    const v0, 0x7f11005a

    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    :goto_13
    const/4 v1, 0x0

    .line 21
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 28
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p0}, Lcom/android/cloud/CloudDriveManager;->clearCloudData(Landroid/content/Context;)V

    .line 35
    iget-boolean v0, p0, Lcom/android/cloud/activity/RevokeOrLogoutActivity;->mIsRecallPrivacy:Z

    .line 37
    const/4 v2, 0x1

    .line 38
    const-string v3, "RevokeOrLogoutActivity"

    .line 40
    const/4 v4, 0x2

    .line 41
    if-eqz v0, :cond_46

    .line 43
    new-array v0, v4, [Ljava/lang/Object;

    .line 45
    aput-object v3, v0, v1

    .line 47
    const-string v3, "Revoke privacy success"

    .line 49
    aput-object v3, v0, v2

    .line 51
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logd([Ljava/lang/Object;)V

    .line 54
    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacySwitch(Z)V

    .line 57
    new-instance v0, Landroid/os/Handler;

    .line 59
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 62
    new-instance v2, Lcom/android/cloud/activity/a;

    .line 64
    invoke-direct {v2, v1}, Lcom/android/cloud/activity/a;-><init>(I)V

    .line 67
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    goto :goto_54

    .line 71
    :cond_46
    new-array v0, v4, [Ljava/lang/Object;

    .line 73
    aput-object v3, v0, v1

    .line 75
    const-string v1, "Cancel Mi Drive success"

    .line 77
    aput-object v1, v0, v2

    .line 79
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logd([Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 85
    :goto_54
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const v0, 0x7f0d0028

    .line 7
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    move-result-object v0

    .line 14
    const-string v1, "extra_is_recall_privacy"

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 20
    move-result v0

    .line 21
    iput-boolean v0, p0, Lcom/android/cloud/activity/RevokeOrLogoutActivity;->mIsRecallPrivacy:Z

    .line 23
    invoke-direct {p0}, Lcom/android/cloud/activity/RevokeOrLogoutActivity;->initActionBar()V

    .line 26
    if-eqz p1, :cond_24

    .line 28
    const-string v0, "extra_is_in_alert_page"

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_24

    .line 36
    const/4 v2, 0x1

    .line 37
    :cond_24
    iput-boolean v2, p0, Lcom/android/cloud/activity/RevokeOrLogoutActivity;->mIsInAlertPage:Z

    .line 39
    if-eqz v2, :cond_2f

    .line 41
    iget-boolean p1, p0, Lcom/android/cloud/activity/RevokeOrLogoutActivity;->mIsRecallPrivacy:Z

    .line 43
    invoke-static {p1}, Lcom/android/cloud/fragment/ClearDataAlertFragment;->newInstance(Z)Lcom/android/cloud/fragment/ClearDataAlertFragment;

    .line 46
    move-result-object p1

    .line 47
    goto :goto_35

    .line 48
    :cond_2f
    iget-boolean p1, p0, Lcom/android/cloud/activity/RevokeOrLogoutActivity;->mIsRecallPrivacy:Z

    .line 50
    invoke-static {p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->newInstance(Z)Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;

    .line 53
    move-result-object p1

    .line 54
    :goto_35
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 57
    move-result-object v0

    .line 58
    const v1, 0x1020002

    .line 61
    invoke-static {v0, v1, p1}, Lcom/android/cloud/util/FragmentUtils;->replaceFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;)V

    .line 64
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onResume()V

    .line 4
    invoke-static {p0}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDriveOpen(Landroid/content/Context;)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_c

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 13
    :cond_c
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget-boolean v0, p0, Lcom/android/cloud/activity/RevokeOrLogoutActivity;->mIsInAlertPage:Z

    .line 6
    const-string v1, "extra_is_in_alert_page"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    return-void
.end method

.method public onSwitchToAlertFragment()V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/cloud/activity/RevokeOrLogoutActivity;->mIsInAlertPage:Z

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 7
    move-result-object v0

    .line 8
    iget-boolean v1, p0, Lcom/android/cloud/activity/RevokeOrLogoutActivity;->mIsRecallPrivacy:Z

    .line 10
    invoke-static {v1}, Lcom/android/cloud/fragment/ClearDataAlertFragment;->newInstance(Z)Lcom/android/cloud/fragment/ClearDataAlertFragment;

    .line 13
    move-result-object v1

    .line 14
    const v2, 0x1020002

    .line 17
    invoke-static {v0, v2, v1}, Lcom/android/cloud/util/FragmentUtils;->replaceFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;)V

    .line 20
    return-void
.end method
