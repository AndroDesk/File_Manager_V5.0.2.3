.class public Lcom/micloud/midrive/session/params/SyncSessionParams;
.super Lcom/micloud/midrive/session/params/SessionParams;
.source "SyncSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/session/params/SyncSessionParams$Factory;
    }
.end annotation


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final isBackground:Z


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/params/SessionParams;-><init>()V

    .line 4
    if-eqz p1, :cond_a

    .line 6
    iput-object p1, p0, Lcom/micloud/midrive/session/params/SyncSessionParams;->account:Landroid/accounts/Account;

    .line 8
    iput-boolean p2, p0, Lcom/micloud/midrive/session/params/SyncSessionParams;->isBackground:Z

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    .line 13
    const-string p2, "the account is null"

    .line 15
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/params/SyncSessionParams;->account:Landroid/accounts/Account;

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
    iget-boolean v0, p0, Lcom/micloud/midrive/session/params/SyncSessionParams;->isBackground:Z

    .line 14
    if-nez v0, :cond_15

    .line 16
    const-class v0, Lcom/micloud/midrive/session/service/SyncSessionService;

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {p1, v0, v1}, Lcom/micloud/midrive/utils/ServiceUtils;->send(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 22
    :cond_15
    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "SyncSessionParams{isBackground="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/micloud/midrive/session/params/SyncSessionParams;->isBackground:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
