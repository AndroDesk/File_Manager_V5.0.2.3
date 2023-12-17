.class public interface abstract Lcom/micloud/midrive/session/BaseSession$SessionListener;
.super Ljava/lang/Object;
.source "BaseSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/BaseSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SessionListener"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onSessionComplete(Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession;Lcom/micloud/midrive/session/params/SessionParams;)V
.end method

.method public abstract onSessionStageProgressChanged()V
.end method

.method public abstract onSessionStatusChanged()V
.end method
