.class Lcom/micloud/midrive/session/helper/SessionHelper$ResumeFromFailTask;
.super Lcom/micloud/midrive/session/helper/SessionHelper$JobStatusChangeTask;
.source "SessionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/helper/SessionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResumeFromFailTask"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/session/helper/SessionHelper$JobStatusChangeTask;-><init>(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    return-void
.end method


# virtual methods
.method public doChangeStatus(Lcom/micloud/midrive/cache/manager/ISessionJobManager;Ljava/lang/String;)Z
    .registers 3

    invoke-interface {p1, p2}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->changeFailToOngoing(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
