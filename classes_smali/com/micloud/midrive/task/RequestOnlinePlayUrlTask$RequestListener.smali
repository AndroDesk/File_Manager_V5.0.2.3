.class public interface abstract Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$RequestListener;
.super Ljava/lang/Object;
.source "RequestOnlinePlayUrlTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestListener"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onRequestFinished(Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;)V
.end method
