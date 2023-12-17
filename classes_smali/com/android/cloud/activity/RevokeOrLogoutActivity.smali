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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private initActionBar()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/cloud/activity/RevokeOrLogoutActivity;->mIsRecallPrivacy:Z

    if-eqz v0, :cond_8

    const v0, 0x7f110375

    goto :goto_b

    :cond_8
    const v0, 0x7f11005b

    :goto_b
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(IZ)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayShowTitleEnabled(Z)V

    :cond_1f
    return-void
.end method


# virtual methods
.method public onAllTasksDone()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/cloud/activity/RevokeOrLogoutActivity;->mIsRecallPrivacy:Z

    if-eqz v0, :cond_10

    const v0, 0x7f182ee2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_10
    const v0, 0x7f182dcc

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1b
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/cloud/CloudDriveManager;->clearCloudData(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/android/cloud/activity/RevokeOrLogoutActivity;->mIsRecallPrivacy:Z

    const/4 v2, 0x1

    const-string v3, "RevokeOrLogoutActivity"

    const/4 v4, 0x2

    if-eqz v0, :cond_4e

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v3, v0, v1

    const-string v3, "Revoke privacy success"

    aput-object v3, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logd([Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacySwitch(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/cloud/activity/a;

    invoke-direct {v2, v1}, Lcom/android/cloud/activity/a;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5c

    :cond_4e
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v3, v0, v1

    const-string v1, "Cancel Mi Drive success"

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logd([Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_5c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f042dbe

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_is_recall_privacy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/cloud/activity/RevokeOrLogoutActivity;->mIsRecallPrivacy:Z

    invoke-direct {p0}, Lcom/android/cloud/activity/RevokeOrLogoutActivity;->initActionBar()V

    if-eqz p1, :cond_28

    const-string v0, "extra_is_in_alert_page"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 v2, 0x1

    :cond_28
    iput-boolean v2, p0, Lcom/android/cloud/activity/RevokeOrLogoutActivity;->mIsInAlertPage:Z

    if-eqz v2, :cond_33

    iget-boolean p1, p0, Lcom/android/cloud/activity/RevokeOrLogoutActivity;->mIsRecallPrivacy:Z

    invoke-static {p1}, Lcom/android/cloud/fragment/ClearDataAlertFragment;->newInstance(Z)Lcom/android/cloud/fragment/ClearDataAlertFragment;

    move-result-object p1

    goto :goto_39

    :cond_33
    iget-boolean p1, p0, Lcom/android/cloud/activity/RevokeOrLogoutActivity;->mIsRecallPrivacy:Z

    invoke-static {p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->newInstance(Z)Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;

    move-result-object p1

    :goto_39
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020002

    invoke-static {v0, v1, p1}, Lcom/android/cloud/util/FragmentUtils;->replaceFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onResume()V

    invoke-static {p0}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDriveOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_c
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/cloud/activity/RevokeOrLogoutActivity;->mIsInAlertPage:Z

    const-string v1, "extra_is_in_alert_page"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSwitchToAlertFragment()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/cloud/activity/RevokeOrLogoutActivity;->mIsInAlertPage:Z

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/cloud/activity/RevokeOrLogoutActivity;->mIsRecallPrivacy:Z

    invoke-static {v1}, Lcom/android/cloud/fragment/ClearDataAlertFragment;->newInstance(Z)Lcom/android/cloud/fragment/ClearDataAlertFragment;

    move-result-object v1

    const v2, 0x1020002

    invoke-static {v0, v2, v1}, Lcom/android/cloud/util/FragmentUtils;->replaceFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;)V

    return-void
.end method
