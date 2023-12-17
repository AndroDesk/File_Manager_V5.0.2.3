.class public Lcom/android/cloud/fragment/ClearDataAlertFragment;
.super Landroidx/fragment/app/Fragment;
.source "ClearDataAlertFragment.java"


# instance fields
.field private mIsRecallPrivacy:Z

.field private mRevokeReminderView:Lcom/android/cloud/widget/RevokeReminderView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 4
    return-void
.end method

.method private initViews()V
    .registers 9

    .line 1
    iget-boolean v0, p0, Lcom/android/cloud/fragment/ClearDataAlertFragment;->mIsRecallPrivacy:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v3

    .line 9
    const/4 v4, 0x2

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v5

    .line 14
    if-eqz v0, :cond_3f

    .line 16
    iget-object v0, p0, Lcom/android/cloud/fragment/ClearDataAlertFragment;->mRevokeReminderView:Lcom/android/cloud/widget/RevokeReminderView;

    .line 18
    const v6, 0x7f11036f

    .line 21
    invoke-static {v6}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object v6

    .line 25
    new-array v7, v4, [Ljava/lang/Object;

    .line 27
    aput-object v3, v7, v1

    .line 29
    aput-object v5, v7, v2

    .line 31
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object v6

    .line 35
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 38
    move-result-object v6

    .line 39
    const v7, 0x7f110370

    .line 42
    invoke-static {v7}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object v7

    .line 46
    new-array v4, v4, [Ljava/lang/Object;

    .line 48
    aput-object v3, v4, v1

    .line 50
    aput-object v5, v4, v2

    .line 52
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v6, v1}, Lcom/android/cloud/widget/RevokeReminderView;->initViews(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 63
    goto :goto_6e

    .line 64
    :cond_3f
    iget-object v0, p0, Lcom/android/cloud/fragment/ClearDataAlertFragment;->mRevokeReminderView:Lcom/android/cloud/widget/RevokeReminderView;

    .line 66
    const v6, 0x7f110053

    .line 69
    invoke-static {v6}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 72
    move-result-object v6

    .line 73
    new-array v7, v4, [Ljava/lang/Object;

    .line 75
    aput-object v3, v7, v1

    .line 77
    aput-object v5, v7, v2

    .line 79
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    move-result-object v6

    .line 83
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 86
    move-result-object v6

    .line 87
    const v7, 0x7f110054

    .line 90
    invoke-static {v7}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 93
    move-result-object v7

    .line 94
    new-array v4, v4, [Ljava/lang/Object;

    .line 96
    aput-object v3, v4, v1

    .line 98
    aput-object v5, v4, v2

    .line 100
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v6, v1}, Lcom/android/cloud/widget/RevokeReminderView;->initViews(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 111
    :goto_6e
    return-void
.end method

.method public static newInstance(Z)Lcom/android/cloud/fragment/ClearDataAlertFragment;
    .registers 4

    .line 1
    new-instance v0, Lcom/android/cloud/fragment/ClearDataAlertFragment;

    .line 3
    invoke-direct {v0}, Lcom/android/cloud/fragment/ClearDataAlertFragment;-><init>()V

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


# virtual methods
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
    iput-boolean v0, p0, Lcom/android/cloud/fragment/ClearDataAlertFragment;->mIsRecallPrivacy:Z

    .line 26
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    const p3, 0x7f0d0071

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    const p2, 0x7f0a0087

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Lcom/android/cloud/widget/RevokeReminderView;

    .line 18
    iput-object p2, p0, Lcom/android/cloud/fragment/ClearDataAlertFragment;->mRevokeReminderView:Lcom/android/cloud/widget/RevokeReminderView;

    .line 20
    invoke-direct {p0}, Lcom/android/cloud/fragment/ClearDataAlertFragment;->initViews()V

    .line 23
    return-object p1
.end method
