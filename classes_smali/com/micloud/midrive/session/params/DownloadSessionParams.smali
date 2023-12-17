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
.method public constructor <init>(Landroid/accounts/Account;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/params/SessionParams;-><init>()V

    .line 4
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 6
    iput-object v0, p0, Lcom/micloud/midrive/session/params/DownloadSessionParams;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 8
    if-eqz p1, :cond_c

    .line 10
    iput-object p1, p0, Lcom/micloud/midrive/session/params/DownloadSessionParams;->account:Landroid/accounts/Account;

    .line 12
    return-void

    .line 13
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    .line 15
    const-string v0, "the account is null"

    .line 17
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/params/DownloadSessionParams;->account:Landroid/accounts/Account;

    .line 3
    return-object v0
.end method

.method public getTransferType()Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/params/DownloadSessionParams;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 3
    return-object v0
.end method

.method public startExecEnvironment(Landroid/content/Context;)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "session start"

    .line 7
    aput-object v2, v0, v1

    .line 9
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 12
    const-class v0, Lcom/micloud/midrive/session/service/DownloadSessionService;

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {p1, v0, v1}, Lcom/micloud/midrive/utils/ServiceUtils;->send(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 18
    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v1, "account_name"

    .line 8
    iget-object v2, p0, Lcom/micloud/midrive/session/params/DownloadSessionParams;->account:Landroid/accounts/Account;

    .line 10
    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string v1, "account_type"

    .line 17
    iget-object v2, p0, Lcom/micloud/midrive/session/params/DownloadSessionParams;->account:Landroid/accounts/Account;

    .line 19
    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_17} :catch_18

    .line 24
    return-object v0

    .line 25
    :catch_18
    move-exception v0

    .line 26
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 28
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 31
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "DownloadSessionParams{transferType="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/session/params/DownloadSessionParams;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const/16 v1, 0x7d

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
