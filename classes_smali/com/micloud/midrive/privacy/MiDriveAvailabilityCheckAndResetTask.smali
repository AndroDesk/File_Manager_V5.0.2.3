.class public Lcom/micloud/midrive/privacy/MiDriveAvailabilityCheckAndResetTask;
.super Landroid/os/AsyncTask;
.source "MiDriveAvailabilityCheckAndResetTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiDriveAvailabilityCheckAndResetTask"


# instance fields
.field private final mAppContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/privacy/MiDriveAvailabilityCheckAndResetTask;->mAppContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 10

    const-string p1, "MiDriveAvailabilityCheckAndResetTask"

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_6
    iget-object v4, p0, Lcom/micloud/midrive/privacy/MiDriveAvailabilityCheckAndResetTask;->mAppContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    move-result-object v4

    invoke-static {v4}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getPTPRecommendStatus(Lcom/micloud/midrive/server/transport/Network;)Lcom/micloud/midrive/infos/PTPRecommendStatus;
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_f} :catch_1c
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_6 .. :try_end_f} :catch_1a
    .catch Lcom/micloud/midrive/server/transport/exception/RequestIOException; {:try_start_6 .. :try_end_f} :catch_18
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_6 .. :try_end_f} :catch_16
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_6 .. :try_end_f} :catch_14
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_6 .. :try_end_f} :catch_12
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_6 .. :try_end_f} :catch_10

    goto :goto_49

    :catch_10
    move-exception v4

    goto :goto_1d

    :catch_12
    move-exception v4

    goto :goto_1d

    :catch_14
    move-exception v4

    goto :goto_1d

    :catch_16
    move-exception v4

    goto :goto_1d

    :catch_18
    move-exception v4

    goto :goto_1d

    :catch_1a
    move-exception v4

    goto :goto_1d

    :catch_1c
    move-exception v4

    :goto_1d
    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check mi drive exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    instance-of v5, v4, Lcom/micloud/midrive/server/exception/MiDriveUnavailableException;

    if-eqz v5, :cond_87

    check-cast v4, Lcom/micloud/midrive/server/exception/MiDriveUnavailableException;

    iget v4, v4, Lcom/micloud/midrive/server/exception/OperationFailedException;->code:I

    const/16 v5, 0x271e

    if-eq v4, v5, :cond_84

    const v5, 0xcf0b

    if-eq v4, v5, :cond_49

    return-object v0

    :cond_49
    :goto_49
    :try_start_49
    iget-object v4, p0, Lcom/micloud/midrive/privacy/MiDriveAvailabilityCheckAndResetTask;->mAppContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol;->setPrivacyStatus(Landroid/content/Context;Z)V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4e} :catch_68
    .catch Lcom/micloud/midrive/server/transport/exception/RequestIOException; {:try_start_49 .. :try_end_4e} :catch_66
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_49 .. :try_end_4e} :catch_64
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_49 .. :try_end_4e} :catch_62
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_49 .. :try_end_4e} :catch_60
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_49 .. :try_end_4e} :catch_5e
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_49 .. :try_end_4e} :catch_5c

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "Current privacy status = ON"

    aput-object p1, v0, v3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :catch_5c
    move-exception v4

    goto :goto_69

    :catch_5e
    move-exception v4

    goto :goto_69

    :catch_60
    move-exception v4

    goto :goto_69

    :catch_62
    move-exception v4

    goto :goto_69

    :catch_64
    move-exception v4

    goto :goto_69

    :catch_66
    move-exception v4

    goto :goto_69

    :catch_68
    move-exception v4

    :goto_69
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reset privacy exception : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    return-object v0

    :cond_84
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_87
    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/privacy/MiDriveAvailabilityCheckAndResetTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
