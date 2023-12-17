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
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;Ljava/lang/Integer;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->handleCheckTaskResult(Ljava/lang/Integer;)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->cancelQueryProgressDialog(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->lambda$initViews$0(Landroid/view/View;)V

    return-void
.end method

.method private cancelCheckMiDriveCloudUsageEmptyTask()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mMiDriveCloudUsageEmptyCheckTask:Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDriveCloudUsageEmptyInnerCheckTask;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mMiDriveCloudUsageEmptyCheckTask:Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDriveCloudUsageEmptyInnerCheckTask;

    .line 12
    :cond_b
    return-void
.end method

.method private cancelPrivacyRevokeTask()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mPrivacyRevokeTask:Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDrivePrivacyRevokeInnerTask;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mPrivacyRevokeTask:Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDrivePrivacyRevokeInnerTask;

    .line 12
    :cond_b
    return-void
.end method

.method private cancelQueryProgressDialog(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mQueryProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    .line 3
    if-eqz v0, :cond_14

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_14

    .line 11
    iput-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mQueryProgressDialogDismissAction:Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mQueryProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    .line 15
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mQueryProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    .line 21
    :cond_14
    return-void
.end method

.method public static getCancelAccountURL(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/utils/AccountUtils;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 7
    if-eqz v0, :cond_f

    .line 9
    invoke-static {p0, v0}, Lcom/micloud/midrive/utils/AccountUtils;->getCUserId(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    move-object v0, v1

    .line 17
    move-object v2, v0

    .line 18
    :goto_11
    const-string v3, "https://account.xiaomi.com/fe/service/account/privacy/delete-account?cUserId="

    .line 20
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    move-result-object v3

    .line 24
    if-nez v2, :cond_1a

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move-object v1, v2

    .line 28
    :goto_1b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "&_locale="

    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 43
    move-result-object p0

    .line 44
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 46
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string p0, "&userId="

    .line 55
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method

.method private handleCheckTaskResult(Ljava/lang/Integer;)V
    .registers 5

    .line 1
    if-nez p1, :cond_8

    .line 3
    const-string p1, "action_toast_exception"

    .line 5
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->cancelQueryProgressDialog(Ljava/lang/String;)V

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p1

    .line 13
    const-string v0, "action_all_task_done"

    .line 15
    if-eqz p1, :cond_41

    .line 17
    const/4 v1, 0x2

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eq p1, v2, :cond_2d

    .line 21
    if-eq p1, v1, :cond_17

    .line 23
    goto :goto_4e

    .line 24
    :cond_17
    iget-boolean p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mIsRecallPrivacy:Z

    .line 26
    if-eqz p1, :cond_29

    .line 28
    const p1, 0x7f110376

    .line 31
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->showQueryProgressDialog(Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->startPrivacyRevokeTask()V

    .line 41
    goto :goto_4e

    .line 42
    :cond_29
    invoke-direct {p0, v0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->cancelQueryProgressDialog(Ljava/lang/String;)V

    .line 45
    goto :goto_4e

    .line 46
    :cond_2d
    new-array p1, v1, [Ljava/lang/Object;

    .line 48
    const/4 v0, 0x0

    .line 49
    const-string v1, "RevokeOrLogoutConfirmFragment"

    .line 51
    aput-object v1, p1, v0

    .line 53
    const-string v0, "Mi drive cloud quota and trash is not empty - show alert page"

    .line 55
    aput-object v0, p1, v2

    .line 57
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logd([Ljava/lang/Object;)V

    .line 60
    const-string p1, "action_to_alert_page"

    .line 62
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->cancelQueryProgressDialog(Ljava/lang/String;)V

    .line 65
    goto :goto_4e

    .line 66
    :cond_41
    iget-boolean p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mIsRecallPrivacy:Z

    .line 68
    if-eqz p1, :cond_49

    .line 70
    invoke-direct {p0, v0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->cancelQueryProgressDialog(Ljava/lang/String;)V

    .line 73
    goto :goto_4e

    .line 74
    :cond_49
    const-string p1, "action_toast_privacy_revoked"

    .line 76
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->cancelQueryProgressDialog(Ljava/lang/String;)V

    .line 79
    :goto_4e
    return-void
.end method

.method private initViews()V
    .registers 12

    .line 1
    iget-boolean v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mIsRecallPrivacy:Z

    .line 3
    const v1, 0x7f06050a

    .line 6
    const/4 v2, 0x3

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x2

    .line 12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v5

    .line 16
    const/4 v6, 0x1

    .line 17
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v7

    .line 21
    const/4 v8, 0x0

    .line 22
    if-eqz v0, :cond_47

    .line 24
    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mRevokeReminderView:Lcom/android/cloud/widget/RevokeReminderView;

    .line 26
    const v9, 0x7f110372

    .line 29
    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 32
    move-result-object v9

    .line 33
    const v10, 0x7f110373

    .line 36
    invoke-static {v10}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 39
    move-result-object v10

    .line 40
    new-array v2, v2, [Ljava/lang/Object;

    .line 42
    aput-object v7, v2, v8

    .line 44
    aput-object v5, v2, v6

    .line 46
    aput-object v3, v2, v4

    .line 48
    invoke-static {v10, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v9, v2, v1}, Lcom/android/cloud/widget/RevokeReminderView;->initViews(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 59
    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mConfirmButton:Landroid/widget/Button;

    .line 61
    const v1, 0x7f110371

    .line 64
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    goto :goto_bd

    .line 72
    :cond_47
    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mRevokeReminderView:Lcom/android/cloud/widget/RevokeReminderView;

    .line 74
    const v9, 0x7f110056

    .line 77
    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 80
    move-result-object v9

    .line 81
    const v10, 0x7f110058

    .line 84
    invoke-static {v10}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 87
    move-result-object v10

    .line 88
    new-array v2, v2, [Ljava/lang/Object;

    .line 90
    aput-object v7, v2, v8

    .line 92
    aput-object v5, v2, v6

    .line 94
    aput-object v3, v2, v4

    .line 96
    invoke-static {v10, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    move-result-object v2

    .line 100
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v0, v9, v2, v1}, Lcom/android/cloud/widget/RevokeReminderView;->initViews(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 107
    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mContext:Landroid/content/Context;

    .line 109
    invoke-static {v0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->getCancelAccountURL(Landroid/content/Context;)Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    new-array v1, v4, [Ljava/lang/Object;

    .line 115
    const-string v2, "RevokeOrLogoutConfirmFragment"

    .line 117
    aput-object v2, v1, v8

    .line 119
    const-string v2, "Cancel account url = "

    .line 121
    invoke-static {v2, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object v2

    .line 125
    aput-object v2, v1, v6

    .line 127
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logd([Ljava/lang/Object;)V

    .line 130
    iget-object v1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mHintTextView:Landroid/widget/TextView;

    .line 132
    const v2, 0x7f110057

    .line 135
    new-array v3, v6, [Ljava/lang/Object;

    .line 137
    aput-object v0, v3, v8

    .line 139
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mHintTextView:Landroid/widget/TextView;

    .line 152
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 159
    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mHintTextView:Landroid/widget/TextView;

    .line 161
    iget-object v1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mContext:Landroid/content/Context;

    .line 163
    const v2, 0x7f060052

    .line 166
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 169
    move-result v1

    .line 170
    invoke-static {v0, v8, v1}, Lcom/android/cloud/util/TextViewUtils;->setUrlSpan(Landroid/widget/TextView;ZI)V

    .line 173
    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mHintLinearLayout:Landroid/widget/LinearLayout;

    .line 175
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mConfirmButton:Landroid/widget/Button;

    .line 180
    const v1, 0x7f110055

    .line 183
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :goto_bd
    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mConfirmButton:Landroid/widget/Button;

    .line 192
    new-instance v1, Lcom/android/cloud/fragment/e;

    .line 194
    invoke-direct {v1, p0, v8}, Lcom/android/cloud/fragment/e;-><init>(Ljava/lang/Object;I)V

    .line 197
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    return-void
.end method

.method private synthetic lambda$initViews$0(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/android/cloud/util/NetworkWarningHelper;->showNetworkNotConnectedNoticeIfNeeded(Landroid/content/Context;)Z

    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    const p1, 0x7f110383

    .line 19
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->showQueryProgressDialog(Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->startCheckMiDriveCloudUsageEmptyTask()V

    .line 29
    return-void
.end method

.method public static newInstance(Z)Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;
    .registers 4

    .line 1
    new-instance v0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;

    .line 3
    invoke-direct {v0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;-><init>()V

    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    const-string v2, "extra_is_recall_privacy"

    .line 13
    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 19
    return-object v0
.end method

.method private showQueryProgressDialog(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mQueryProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_11

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mQueryProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    .line 14
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 17
    goto :goto_1d

    .line 18
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mContext:Landroid/content/Context;

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1, p1}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lmiuix/appcompat/app/ProgressDialog;

    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mQueryProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    .line 27
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 30
    :goto_1d
    return-void
.end method

.method private startCheckMiDriveCloudUsageEmptyTask()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->cancelCheckMiDriveCloudUsageEmptyTask()V

    .line 4
    new-instance v0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDriveCloudUsageEmptyInnerCheckTask;

    .line 6
    iget-object v1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mContext:Landroid/content/Context;

    .line 8
    invoke-direct {v0, v1, p0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDriveCloudUsageEmptyInnerCheckTask;-><init>(Landroid/content/Context;Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;)V

    .line 11
    iput-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mMiDriveCloudUsageEmptyCheckTask:Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDriveCloudUsageEmptyInnerCheckTask;

    .line 13
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 15
    const/4 v2, 0x0

    .line 16
    new-array v2, v2, [Ljava/lang/Void;

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 21
    return-void
.end method

.method private startPrivacyRevokeTask()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->cancelPrivacyRevokeTask()V

    .line 4
    new-instance v0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDrivePrivacyRevokeInnerTask;

    .line 6
    iget-object v1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mContext:Landroid/content/Context;

    .line 8
    invoke-direct {v0, v1, p0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDrivePrivacyRevokeInnerTask;-><init>(Landroid/content/Context;Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;)V

    .line 11
    iput-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mPrivacyRevokeTask:Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDrivePrivacyRevokeInnerTask;

    .line 13
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 15
    const/4 v2, 0x0

    .line 16
    new-array v2, v2, [Ljava/lang/Void;

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 21
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 4
    iput-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mContext:Landroid/content/Context;

    .line 6
    check-cast p1, Lcom/android/cloud/activity/controller/IRevokeOrLogoutController;

    .line 8
    iput-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mContextController:Lcom/android/cloud/activity/controller/IRevokeOrLogoutController;

    .line 10
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_17

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 14
    move-result-object p1

    .line 15
    const-string v1, "extra_is_recall_privacy"

    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_17

    .line 23
    const/4 v0, 0x1

    .line 24
    :cond_17
    iput-boolean v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mIsRecallPrivacy:Z

    .line 26
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    const p3, 0x7f0d0076

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    const p2, 0x7f0a00ff

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Lcom/android/cloud/widget/RevokeReminderView;

    .line 18
    iput-object p2, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mRevokeReminderView:Lcom/android/cloud/widget/RevokeReminderView;

    .line 20
    const p2, 0x7f0a0237

    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Landroid/widget/LinearLayout;

    .line 29
    iput-object p2, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mHintLinearLayout:Landroid/widget/LinearLayout;

    .line 31
    const p2, 0x7f0a0452

    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Landroid/widget/TextView;

    .line 40
    iput-object p2, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mHintTextView:Landroid/widget/TextView;

    .line 42
    const p2, 0x7f0a00bb

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Landroid/widget/Button;

    .line 51
    iput-object p2, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mConfirmButton:Landroid/widget/Button;

    .line 53
    invoke-direct {p0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->initViews()V

    .line 56
    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 4
    invoke-direct {p0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->cancelCheckMiDriveCloudUsageEmptyTask()V

    .line 7
    invoke-direct {p0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->cancelPrivacyRevokeTask()V

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->cancelQueryProgressDialog(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    .line 1
    const/4 p1, 0x2

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    const-string v0, "RevokeOrLogoutConfirmFragment"

    .line 6
    const/4 v1, 0x0

    .line 7
    aput-object v0, p1, v1

    .line 9
    const-string v0, "onDismiss action = "

    .line 11
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mQueryProgressDialogDismissAction:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const/4 v2, 0x1

    .line 25
    aput-object v0, p1, v2

    .line 27
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logd([Ljava/lang/Object;)V

    .line 30
    iget-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mQueryProgressDialogDismissAction:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_26

    .line 38
    return-void

    .line 39
    :cond_26
    iget-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mQueryProgressDialogDismissAction:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 47
    const/4 v0, -0x1

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 51
    move-result v2

    .line 52
    sparse-switch v2, :sswitch_data_a4

    .line 55
    goto :goto_62

    .line 56
    :sswitch_37
    const-string v2, "action_toast_privacy_revoked"

    .line 58
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_40

    .line 64
    goto :goto_62

    .line 65
    :cond_40
    const/4 v0, 0x3

    .line 66
    goto :goto_62

    .line 67
    :sswitch_42
    const-string v2, "action_all_task_done"

    .line 69
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_4b

    .line 75
    goto :goto_62

    .line 76
    :cond_4b
    const/4 v0, 0x2

    .line 77
    goto :goto_62

    .line 78
    :sswitch_4d
    const-string v2, "action_to_alert_page"

    .line 80
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_56

    .line 86
    goto :goto_62

    .line 87
    :cond_56
    const/4 v0, 0x1

    .line 88
    goto :goto_62

    .line 89
    :sswitch_58
    const-string v2, "action_toast_exception"

    .line 91
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_61

    .line 97
    goto :goto_62

    .line 98
    :cond_61
    const/4 v0, 0x0

    .line 99
    :goto_62
    packed-switch v0, :pswitch_data_b6

    .line 102
    goto :goto_a0

    .line 103
    :pswitch_66  #0x3
    iget-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 108
    move-result-object p1

    .line 109
    const v0, 0x7f110059

    .line 112
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 123
    goto :goto_a0

    .line 124
    :pswitch_7b  #0x2
    iget-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mConfirmButton:Landroid/widget/Button;

    .line 126
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 129
    iget-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mContextController:Lcom/android/cloud/activity/controller/IRevokeOrLogoutController;

    .line 131
    invoke-interface {p1}, Lcom/android/cloud/activity/controller/IRevokeOrLogoutController;->onAllTasksDone()V

    .line 134
    goto :goto_a0

    .line 135
    :pswitch_86  #0x1
    iget-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mContextController:Lcom/android/cloud/activity/controller/IRevokeOrLogoutController;

    .line 137
    invoke-interface {p1}, Lcom/android/cloud/activity/controller/IRevokeOrLogoutController;->onSwitchToAlertFragment()V

    .line 140
    goto :goto_a0

    .line 141
    :pswitch_8c  #0x0
    iget-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mContext:Landroid/content/Context;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 146
    move-result-object p1

    .line 147
    const v0, 0x7f110382

    .line 150
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 153
    move-result-object v0

    .line 154
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 161
    :goto_a0
    const/4 p1, 0x0

    .line 162
    iput-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->mQueryProgressDialogDismissAction:Ljava/lang/String;

    .line 164
    return-void

    .line 165
    :sswitch_data_a4
    .sparse-switch
        -0x4c5b3bd2 -> :sswitch_58
        -0x3279be73 -> :sswitch_4d
        -0x2e19d56b -> :sswitch_42
        0x350bd586 -> :sswitch_37
    .end sparse-switch

    .line 183
    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_8c  #00000000
        :pswitch_86  #00000001
        :pswitch_7b  #00000002
        :pswitch_66  #00000003
    .end packed-switch
.end method
