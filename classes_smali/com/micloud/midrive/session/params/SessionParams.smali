.class public abstract Lcom/micloud/midrive/session/params/SessionParams;
.super Ljava/lang/Object;
.source "SessionParams.java"


# instance fields
.field private mExtrasHandlerImpl:Lcom/micloud/midrive/session/params/SessionExtrasHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBooleanExtra(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/session/params/SessionParams;->mExtrasHandlerImpl:Lcom/micloud/midrive/session/params/SessionExtrasHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/micloud/midrive/session/params/SessionExtrasHandler;->getBooleanExtra(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getIntExtra(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/session/params/SessionParams;->mExtrasHandlerImpl:Lcom/micloud/midrive/session/params/SessionExtrasHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/micloud/midrive/session/params/SessionExtrasHandler;->getIntExtra(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLongExtra(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 6

    iget-object v0, p0, Lcom/micloud/midrive/session/params/SessionParams;->mExtrasHandlerImpl:Lcom/micloud/midrive/session/params/SessionExtrasHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/session/params/SessionExtrasHandler;->getLongExtra(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getStringExtra(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/session/params/SessionParams;->mExtrasHandlerImpl:Lcom/micloud/midrive/session/params/SessionExtrasHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/micloud/midrive/session/params/SessionExtrasHandler;->getStringExtra(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putBooleanExtra(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/session/params/SessionParams;->mExtrasHandlerImpl:Lcom/micloud/midrive/session/params/SessionExtrasHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/micloud/midrive/session/params/SessionExtrasHandler;->putBooleanExtra(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public putIntExtra(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/session/params/SessionParams;->mExtrasHandlerImpl:Lcom/micloud/midrive/session/params/SessionExtrasHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/micloud/midrive/session/params/SessionExtrasHandler;->putIntExtra(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public putLongExtra(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 6

    iget-object v0, p0, Lcom/micloud/midrive/session/params/SessionParams;->mExtrasHandlerImpl:Lcom/micloud/midrive/session/params/SessionExtrasHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/session/params/SessionExtrasHandler;->putLongExtra(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public putStringExtra(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/session/params/SessionParams;->mExtrasHandlerImpl:Lcom/micloud/midrive/session/params/SessionExtrasHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/micloud/midrive/session/params/SessionExtrasHandler;->putStringExtra(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setExtrasHandler(Lcom/micloud/midrive/session/params/SessionExtrasHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/session/params/SessionParams;->mExtrasHandlerImpl:Lcom/micloud/midrive/session/params/SessionExtrasHandler;

    return-void
.end method

.method public abstract startExecEnvironment(Landroid/content/Context;)V
.end method

.method public abstract toJsonObject()Lorg/json/JSONObject;
.end method
