.class public Lcom/android/cloud/util/NetworkWarningHelper;
.super Ljava/lang/Object;
.source "NetworkWarningHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showNetworkNotConnectedNoticeIfNeeded(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->isNetworkConnected()Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1a

    .line 19
    const v0, 0x7f110461

    .line 22
    invoke-static {p0, v0}, Lcom/android/cloud/util/ToastOnceUtils;->showShort(Landroid/content/Context;I)V

    .line 25
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :cond_1a
    const/4 p0, 0x1

    .line 28
    return p0
.end method
