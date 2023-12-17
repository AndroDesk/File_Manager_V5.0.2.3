.class public Lcom/micloud/midrive/privacy/MiDrivePrivacyRevokeTask;
.super Landroid/os/AsyncTask;
.source "MiDrivePrivacyRevokeTask.java"


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
.field public static final PRIVACY_NAME:Ljava/lang/String; = "MiDrive"

.field private static final TAG:Ljava/lang/String; = "PrivacyRevokeTask"


# instance fields
.field private final mAppCtx:Landroid/content/Context;


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

    iput-object p1, p0, Lcom/micloud/midrive/privacy/MiDrivePrivacyRevokeTask;->mAppCtx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 8

    const-string p1, "PrivacyRevokeTask"

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/micloud/midrive/privacy/MiDrivePrivacyRevokeTask;->mAppCtx:Landroid/content/Context;

    const-string v4, "MiDrive"

    invoke-static {v3}, Lcom/micloud/midrive/utils/DeviceIdUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol;->revoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/micloud/midrive/privacy/MiDrivePrivacyRevokeTask;->mAppCtx:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol;->setPrivacyStatus(Landroid/content/Context;Z)V

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string v4, "Current privacy status = OFF"

    aput-object v4, v3, v0

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->logd([Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_22
    .catch Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationFailedException; {:try_start_5 .. :try_end_22} :catch_82
    .catch Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationCallFrequentException; {:try_start_5 .. :try_end_22} :catch_66
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_5 .. :try_end_22} :catch_4a
    .catch Lcom/micloud/midrive/server/exception/MiDriveUnavailableException; {:try_start_5 .. :try_end_22} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_23

    return-object p1

    :catch_23
    move-exception v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object v3, v1, v0

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_9d

    :catch_2e
    move-exception v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mi drive is unavailable"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_9d

    :catch_4a
    move-exception v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal device: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_9d

    :catch_66
    move-exception v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail because too frequent: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_9d

    :catch_82
    move-exception v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail when agree: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    :goto_9d
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/privacy/MiDrivePrivacyRevokeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
