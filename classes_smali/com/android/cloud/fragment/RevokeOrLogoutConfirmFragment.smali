.class public Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;
.super Landroidx/fragment/app/Fragment;
.source "RevokeOrLogoutConfirmFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDrivePrivacyRevokeInnerTask;,
        Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDriveCloudUsageEmptyInnerCheckTask;
    }
.end annotation


# static fields
.field private static final BASE_URL_CANCEL_ACCOUNT:Ljava/lang/String; = "https://account.xiaomi.com/fe/service/account/privacy/delete-account?"

.field private static final DISMISS_ACTION_ALL_TASK_DONE:Ljava/lang/String; = "action_all_task_done"

.field private static final DISMISS_ACTION_TOAST_EXCEPTION:Ljava/lang/String; = "action_toast_exception"

.field private static final DISMISS_ACTION_TOAST_PRIVACY_REVOKED:Ljava/lang/String; = "action_toast_privacy_revoked"

.field private static final DISMISS_ACTION_TO_ALERT_PAGE:Ljava/lang/String; = "action_to_alert_page"

.field public static final TAG:Ljava/lang/String; = "RevokeOrLogoutConfirmFragment"


# instance fields
.field private mConfirmButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mContextController:Lcom/android/cloud/activity/controller/IRevokeOrLogoutController;

.field private mHintLinearLayout:Landroid/widget/LinearLayout;

.field private mHintTextView:Landroid/widget/TextView;

.field private mIsRecallPrivacy:Z

.field private mMiDriveCloudUsageEmptyCheckTask:Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDriveCloudUsageEmptyInnerCheckTask;

.field private mPrivacyRevokeTask:Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDrivePrivacyRevokeInnerTask;

.field private mQueryProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

.field private mQueryProgressDialogDismissAction:Ljava/lang/String;

.field private mRevokeReminderView:Lcom/android/cloud/widget/RevokeReminderView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->handleCheckTaskResult(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->cancelQueryProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->lambda$initViews$0(Landroid/view/View;)V

    return-void
.end method

.method private cancelCheckMiDriveCloudUsageEmptyTask()V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mMiDriveCloudUsageEmptyCheckTask:Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDriveCloudUsageEmptyInnerCheckTask;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mMiDriveCloudUsageEmptyCheckTask:Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDriveCloudUsageEmptyInnerCheckTask;

    :cond_b
    return-void
.end method

.method private cancelPrivacyRevokeTask()V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mPrivacyRevokeTask:Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDrivePrivacyRevokeInnerTask;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mPrivacyRevokeTask:Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDrivePrivacyRevokeInnerTask;

    :cond_b
    return-void
.end method

.method private cancelQueryProgressDialog(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mQueryProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iput-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mQueryProgressDialogDismissAction:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mQueryProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mQueryProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    :cond_14
    return-void
.end method

.method public static getCancelAccountURL(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/micloud/midrive/utils/AccountUtils;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_f

    invoke-static {p0, v0}, Lcom/micloud/midrive/utils/AccountUtils;->getCUserId(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_11

    :cond_f
    move-object v0, v1

    move-object v2, v0

    :goto_11
    const-string v3, "https://account.xiaomi.com/fe/service/account/privacy/delete-account?cUserId="

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v2, :cond_1a

    goto :goto_1b

    :cond_1a
    move-object v1, v2

    :goto_1b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&_locale="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&userId="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleCheckTaskResult(Ljava/lang/Integer;)V
    .registers 5

    if-nez p1, :cond_8

    const-string p1, "action_toast_exception"

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->cancelQueryProgressDialog(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "action_all_task_done"

    if-eqz p1, :cond_45

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_31

    if-eq p1, v1, :cond_17

    goto :goto_52

    :cond_17
    iget-boolean p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mIsRecallPrivacy:Z

    if-eqz p1, :cond_2d

    const p1, 0x7f182ee0

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->showQueryProgressDialog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->startPrivacyRevokeTask()V

    goto :goto_52

    :cond_2d
    invoke-direct {p0, v0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->cancelQueryProgressDialog(Ljava/lang/String;)V

    goto :goto_52

    :cond_31
    new-array p1, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "RevokeOrLogoutConfirmFragment"

    aput-object v1, p1, v0

    const-string v0, "Mi drive cloud quota and trash is not empty - show alert page"

    aput-object v0, p1, v2

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logd([Ljava/lang/Object;)V

    const-string p1, "action_to_alert_page"

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->cancelQueryProgressDialog(Ljava/lang/String;)V

    goto :goto_52

    :cond_45
    iget-boolean p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mIsRecallPrivacy:Z

    if-eqz p1, :cond_4d

    invoke-direct {p0, v0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->cancelQueryProgressDialog(Ljava/lang/String;)V

    goto :goto_52

    :cond_4d
    const-string p1, "action_toast_privacy_revoked"

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->cancelQueryProgressDialog(Ljava/lang/String;)V

    :goto_52
    return-void
.end method

.method private initViews()V
    .registers 12

    iget-boolean v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mIsRecallPrivacy:Z

    const v1, 0x7f06050a

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mRevokeReminderView:Lcom/android/cloud/widget/RevokeReminderView;

    const v9, 0x7f182ee4

    invoke-static {v9}, Lnp/NPFog;->d(I)I

    move-result v9

    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f110373

    invoke-static {v10}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v8

    aput-object v5, v2, v6

    aput-object v3, v2, v4

    invoke-static {v10, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v9, v2, v1}, Lcom/android/cloud/widget/RevokeReminderView;->initViews(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mConfirmButton:Landroid/widget/Button;

    const v1, 0x7f182ee7

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d2

    :cond_50
    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mRevokeReminderView:Lcom/android/cloud/widget/RevokeReminderView;

    const v9, 0x7f182dc0

    invoke-static {v9}, Lnp/NPFog;->d(I)I

    move-result v9

    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f110058

    invoke-static {v10}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v8

    aput-object v5, v2, v6

    aput-object v3, v2, v4

    invoke-static {v10, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v9, v2, v1}, Lcom/android/cloud/widget/RevokeReminderView;->initViews(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->getCancelAccountURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "RevokeOrLogoutConfirmFragment"

    aput-object v2, v1, v8

    const-string v2, "Cancel account url = "

    invoke-static {v2, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logd([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mHintTextView:Landroid/widget/TextView;

    const v2, 0x7f110057

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mHintTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mHintTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0f2dc4

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v0, v8, v1}, Lcom/android/cloud/util/TextViewUtils;->setUrlSpan(Landroid/widget/TextView;ZI)V

    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mHintLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mConfirmButton:Landroid/widget/Button;

    const v1, 0x7f182dc3

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_d2
    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mConfirmButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/cloud/fragment/e;

    invoke-direct {v1, p0, v8}, Lcom/android/cloud/fragment/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$initViews$0(Landroid/view/View;)V
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/cloud/util/NetworkWarningHelper;->showNetworkNotConnectedNoticeIfNeeded(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    :cond_f
    const p1, 0x7f182e15

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->showQueryProgressDialog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->startCheckMiDriveCloudUsageEmptyTask()V

    return-void
.end method

.method public static newInstance(Z)Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;
    .registers 4

    new-instance v0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;

    invoke-direct {v0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_is_recall_privacy"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private showQueryProgressDialog(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mQueryProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mQueryProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1d

    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mQueryProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_1d
    return-void
.end method

.method private startCheckMiDriveCloudUsageEmptyTask()V
    .registers 4

    invoke-direct {p0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->cancelCheckMiDriveCloudUsageEmptyTask()V

    new-instance v0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDriveCloudUsageEmptyInnerCheckTask;

    iget-object v1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDriveCloudUsageEmptyInnerCheckTask;-><init>(Landroid/content/Context;Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;)V

    iput-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mMiDriveCloudUsageEmptyCheckTask:Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDriveCloudUsageEmptyInnerCheckTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private startPrivacyRevokeTask()V
    .registers 4

    invoke-direct {p0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->cancelPrivacyRevokeTask()V

    new-instance v0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDrivePrivacyRevokeInnerTask;

    iget-object v1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDrivePrivacyRevokeInnerTask;-><init>(Landroid/content/Context;Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;)V

    iput-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mPrivacyRevokeTask:Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDrivePrivacyRevokeInnerTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/android/cloud/activity/controller/IRevokeOrLogoutController;

    iput-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mContextController:Lcom/android/cloud/activity/controller/IRevokeOrLogoutController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "extra_is_recall_privacy"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :cond_17
    iput-boolean v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mIsRecallPrivacy:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f042de0

    invoke-static {p3}, Lnp/NPFog;->d(I)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f032d69

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/cloud/widget/RevokeReminderView;

    iput-object p2, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mRevokeReminderView:Lcom/android/cloud/widget/RevokeReminderView;

    const p2, 0x7f032fa1

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mHintLinearLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0329c4

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mHintTextView:Landroid/widget/TextView;

    const p2, 0x7f032d2d

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mConfirmButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->initViews()V

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-direct {p0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->cancelCheckMiDriveCloudUsageEmptyTask()V

    invoke-direct {p0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->cancelPrivacyRevokeTask()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->cancelQueryProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "RevokeOrLogoutConfirmFragment"

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "onDismiss action = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mQueryProgressDialogDismissAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p1, v2

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logd([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mQueryProgressDialogDismissAction:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_26

    return-void

    :cond_26
    iget-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mQueryProgressDialogDismissAction:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_ac

    goto :goto_62

    :sswitch_37
    const-string v2, "action_toast_privacy_revoked"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto :goto_62

    :cond_40
    const/4 v0, 0x3

    goto :goto_62

    :sswitch_42
    const-string v2, "action_all_task_done"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    goto :goto_62

    :cond_4b
    const/4 v0, 0x2

    goto :goto_62

    :sswitch_4d
    const-string v2, "action_to_alert_page"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    goto :goto_62

    :cond_56
    const/4 v0, 0x1

    goto :goto_62

    :sswitch_58
    const-string v2, "action_toast_exception"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    goto :goto_62

    :cond_61
    const/4 v0, 0x0

    :goto_62
    packed-switch v0, :pswitch_data_be

    goto :goto_a8

    :pswitch_66  #0x3
    iget-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f182dcf

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_a8

    :pswitch_7f  #0x2
    iget-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mContextController:Lcom/android/cloud/activity/controller/IRevokeOrLogoutController;

    invoke-interface {p1}, Lcom/android/cloud/activity/controller/IRevokeOrLogoutController;->onAllTasksDone()V

    goto :goto_a8

    :pswitch_8a  #0x1
    iget-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mContextController:Lcom/android/cloud/activity/controller/IRevokeOrLogoutController;

    invoke-interface {p1}, Lcom/android/cloud/activity/controller/IRevokeOrLogoutController;->onSwitchToAlertFragment()V

    goto :goto_a8

    :pswitch_90  #0x0
    iget-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f182e14

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_a8
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mQueryProgressDialogDismissAction:Ljava/lang/String;

    return-void

    :sswitch_data_ac
    .sparse-switch
        -0x4c5b3bd2 -> :sswitch_58
        -0x3279be73 -> :sswitch_4d
        -0x2e19d56b -> :sswitch_42
        0x350bd586 -> :sswitch_37
    .end sparse-switch

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_90  #00000000
        :pswitch_8a  #00000001
        :pswitch_7f  #00000002
        :pswitch_66  #00000003
    .end packed-switch
.end method
