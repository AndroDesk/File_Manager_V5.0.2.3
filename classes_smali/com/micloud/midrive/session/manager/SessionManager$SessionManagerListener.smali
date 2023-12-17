.class public interface abstract Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;
.super Ljava/lang/Object;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/manager/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SessionManagerListener"
.end annotation


# virtual methods
.method public abstract onSessionChanged()V
.end method

.method public abstract onSessionStageProgressChanged()V
.end method

.method public abstract onSessionStatusChanged()V
.end method
