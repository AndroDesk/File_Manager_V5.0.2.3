.class public Lcom/micloud/midrive/task/MiDriveCloudUsageEmptyCheckTask;
.super Landroid/os/AsyncTask;
.source "MiDriveCloudUsageEmptyCheckTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final RESULT_EMPTY:I

.field public static final RESULT_NOT_EMPTY:I

.field public static final RESULT_REVOKED:I

.field private static final TAG:Ljava/lang/String; = "MiDriveCloudUsageEmptyCheckTask"


# instance fields
.field private final mAppContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/task/MiDriveCloudUsageEmptyCheckTask;->RESULT_EMPTY:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/task/MiDriveCloudUsageEmptyCheckTask;->RESULT_NOT_EMPTY:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/task/MiDriveCloudUsageEmptyCheckTask;->RESULT_REVOKED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/task/MiDriveCloudUsageEmptyCheckTask;->mAppContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 13

    iget-object p1, p0, Lcom/micloud/midrive/task/MiDriveCloudUsageEmptyCheckTask;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MiDriveCloudUsageEmptyCheckTask"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez p1, :cond_1a

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v1, p1, v2

    const-string v1, "no account while check mi drive cloud usage"

    aput-object v1, p1, v4

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logd([Ljava/lang/Object;)V

    return-object v0

    :cond_1a
    invoke-static {}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getMiDriveItemUsed()J

    move-result-wide v5

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v1, p1, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mi drive quota size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v4

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logd([Ljava/lang/Object;)V

    const-wide/16 v7, -0x1

    cmp-long p1, v5, v7

    if-nez p1, :cond_3f

    return-object v0

    :cond_3f
    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-lez p1, :cond_4a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_4a
    :try_start_4a
    iget-object p1, p0, Lcom/micloud/midrive/task/MiDriveCloudUsageEmptyCheckTask;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    move-result-object p1

    invoke-static {p1}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getMiDriveTrashSize(Lcom/micloud/midrive/server/transport/Network;)J

    move-result-wide v5

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v1, p1, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "success! mi drive trash size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, p1, v4

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logd([Ljava/lang/Object;)V

    cmp-long p1, v5, v7

    if-nez p1, :cond_74

    move p1, v3

    goto :goto_75

    :cond_74
    move p1, v4

    :goto_75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_79} :catch_7e
    .catch Lcom/micloud/midrive/server/exception/RemoteServiceException; {:try_start_4a .. :try_end_79} :catch_7c
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_4a .. :try_end_79} :catch_7a

    return-object p1

    :catch_7a
    move-exception p1

    goto :goto_7f

    :catch_7c
    move-exception p1

    goto :goto_7f

    :catch_7e
    move-exception p1

    :goto_7f
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed! check trash size exception = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    instance-of v1, p1, Lcom/micloud/midrive/server/exception/MiDriveUnavailableException;

    if-eqz v1, :cond_ab

    check-cast p1, Lcom/micloud/midrive/server/exception/MiDriveUnavailableException;

    iget p1, p1, Lcom/micloud/midrive/server/exception/OperationFailedException;->code:I

    const v1, 0xcf0b

    if-ne p1, v1, :cond_ab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_ab
    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/task/MiDriveCloudUsageEmptyCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
