.class public Lcom/micloud/midrive/session/params/DownloadSessionParams;
.super Lcom/micloud/midrive/session/params/SessionParams;
.source "DownloadSessionParams.java"

# interfaces
.implements Lcom/micloud/midrive/session/params/TransferParams;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/session/params/DownloadSessionParams$Factory;
    }
.end annotation


# static fields
.field private static final KEY_RESTORE_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field private static final KEY_RESTORE_ACCOUNT_TYPE:Ljava/lang/String; = "account_type"


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;)V
    .registers 3

    invoke-direct {p0}, Lcom/micloud/midrive/session/params/SessionParams;-><init>()V

    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    iput-object v0, p0, Lcom/micloud/midrive/session/params/DownloadSessionParams;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    if-eqz p1, :cond_c

    iput-object p1, p0, Lcom/micloud/midrive/session/params/DownloadSessionParams;->account:Landroid/accounts/Account;

    return-void

    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "the account is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/params/DownloadSessionParams;->account:Landroid/accounts/Account;

    return-object v0
.end method

.method public getTransferType()Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/params/DownloadSessionParams;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    return-object v0
.end method

.method public startExecEnvironment(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "session start"

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    const-class v0, Lcom/micloud/midrive/session/service/DownloadSessionService;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/micloud/midrive/utils/ServiceUtils;->send(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .registers 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/micloud/midrive/session/params/DownloadSessionParams;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "account_type"

    iget-object v2, p0, Lcom/micloud/midrive/session/params/DownloadSessionParams;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "DownloadSessionParams{transferType="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/session/params/DownloadSessionParams;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
