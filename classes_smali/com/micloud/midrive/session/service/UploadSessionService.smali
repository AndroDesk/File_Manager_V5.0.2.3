.class public Lcom/micloud/midrive/session/service/UploadSessionService;
.super Landroid/app/Service;
.source "UploadSessionService.java"


# instance fields
.field private mStartId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/session/service/UploadSessionService;)V
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/session/service/UploadSessionService;->release()V

    return-void
.end method

.method private release()V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "service release"

    aput-object v3, v1, v2

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    iget v0, p0, Lcom/micloud/midrive/session/service/UploadSessionService;->mStartId:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelf(I)V

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

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->getInstance()Lcom/micloud/midrive/notification/ServiceNotificationHelper;

    move-result-object v0

    const-class v1, Lcom/micloud/midrive/session/UploadSession;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->updateServiceStart(Landroid/app/Service;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    iput p3, p0, Lcom/micloud/midrive/session/service/UploadSessionService;->mStartId:I

    invoke-static {}, Lcom/micloud/midrive/session/manager/UploadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/UploadSessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/micloud/midrive/session/manager/SessionManager;->getCurrentSession()Lcom/micloud/midrive/session/BaseSession;

    move-result-object p1

    instance-of p2, p1, Lcom/micloud/midrive/session/UploadSession;

    if-eqz p2, :cond_17

    new-instance p2, Lcom/micloud/midrive/session/service/UploadSessionService$1;

    invoke-direct {p2, p0}, Lcom/micloud/midrive/session/service/UploadSessionService$1;-><init>(Lcom/micloud/midrive/session/service/UploadSessionService;)V

    invoke-virtual {p1, p0, p2}, Lcom/micloud/midrive/session/BaseSession;->exec(Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession$ExecutionListener;)Z

    goto :goto_1a

    :cond_17
    invoke-direct {p0}, Lcom/micloud/midrive/session/service/UploadSessionService;->release()V

    :goto_1a
    const/4 p1, 0x2

    return p1
.end method
