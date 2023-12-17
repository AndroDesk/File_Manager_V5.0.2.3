.class public Lcom/micloud/midrive/session/service/DownloadSessionService;
.super Landroid/app/Service;
.source "DownloadSessionService.java"


# instance fields
.field private mStartId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/session/service/DownloadSessionService;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/service/DownloadSessionService;->release()V

    .line 4
    return-void
.end method

.method private release()V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "service release"

    .line 7
    aput-object v3, v1, v2

    .line 9
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 15
    iget v0, p0, Lcom/micloud/midrive/session/service/DownloadSessionService;->mStartId:I

    .line 17
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelf(I)V

    .line 20
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->getInstance()Lcom/micloud/midrive/notification/ServiceNotificationHelper;

    .line 7
    move-result-object v0

    .line 8
    const-class v1, Lcom/micloud/midrive/session/DownloadSession;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, p0, v1}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->updateServiceStart(Landroid/app/Service;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    .line 1
    iput p3, p0, Lcom/micloud/midrive/session/service/DownloadSessionService;->mStartId:I

    .line 3
    invoke-static {}, Lcom/micloud/midrive/session/manager/DownloadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/DownloadSessionManager;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/micloud/midrive/session/manager/SessionManager;->getCurrentSession()Lcom/micloud/midrive/session/BaseSession;

    .line 10
    move-result-object p1

    .line 11
    instance-of p2, p1, Lcom/micloud/midrive/session/DownloadSession;

    .line 13
    if-eqz p2, :cond_17

    .line 15
    new-instance p2, Lcom/micloud/midrive/session/service/DownloadSessionService$1;

    .line 17
    invoke-direct {p2, p0}, Lcom/micloud/midrive/session/service/DownloadSessionService$1;-><init>(Lcom/micloud/midrive/session/service/DownloadSessionService;)V

    .line 20
    invoke-virtual {p1, p0, p2}, Lcom/micloud/midrive/session/BaseSession;->exec(Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession$ExecutionListener;)Z

    .line 23
    goto :goto_1a

    .line 24
    :cond_17
    invoke-direct {p0}, Lcom/micloud/midrive/session/service/DownloadSessionService;->release()V

    .line 27
    :goto_1a
    const/4 p1, 0x2

    .line 28
    return p1
.end method
