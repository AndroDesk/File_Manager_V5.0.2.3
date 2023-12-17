.class public Lcom/android/cloud/util/NetworkWarningHelper;
.super Ljava/lang/Object;
.source "NetworkWarningHelper.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showNetworkNotConnectedNoticeIfNeeded(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_1a

    const v0, 0x7f110461

    invoke-static {p0, v0}, Lcom/android/cloud/util/ToastOnceUtils;->showShort(Landroid/content/Context;I)V

    const/4 p0, 0x0

    return p0

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method
