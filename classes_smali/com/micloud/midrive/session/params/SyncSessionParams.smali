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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;Z)V
    .registers 3

    invoke-direct {p0}, Lcom/micloud/midrive/session/params/SessionParams;-><init>()V

    if-eqz p1, :cond_a

    iput-object p1, p0, Lcom/micloud/midrive/session/params/SyncSessionParams;->account:Landroid/accounts/Account;

    iput-boolean p2, p0, Lcom/micloud/midrive/session/params/SyncSessionParams;->isBackground:Z

    return-void

    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "the account is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/params/SyncSessionParams;->account:Landroid/accounts/Account;

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

    iget-boolean v0, p0, Lcom/micloud/midrive/session/params/SyncSessionParams;->isBackground:Z

    if-nez v0, :cond_15

    const-class v0, Lcom/micloud/midrive/session/service/SyncSessionService;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/micloud/midrive/utils/ServiceUtils;->send(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

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

    const-string v0, "SyncSessionParams{isBackground="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/micloud/midrive/session/params/SyncSessionParams;->isBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
