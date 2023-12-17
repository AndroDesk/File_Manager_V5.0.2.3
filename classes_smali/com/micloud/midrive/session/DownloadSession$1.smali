.class Lcom/micloud/midrive/session/DownloadSession$1;
.super Ljava/lang/Object;
.source "DownloadSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/DownloadSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/DownloadSession;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/session/DownloadSession;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/DownloadSession$1;->this$0:Lcom/micloud/midrive/session/DownloadSession;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/DownloadSession$1;->this$0:Lcom/micloud/midrive/session/DownloadSession;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/session/DownloadSession;->access$000(Lcom/micloud/midrive/session/DownloadSession;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lcom/micloud/midrive/session/DownloadSession$1;->this$0:Lcom/micloud/midrive/session/DownloadSession;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    move-result-wide v1

    .line 15
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/session/DownloadSession;->access$102(Lcom/micloud/midrive/session/DownloadSession;J)J

    .line 18
    :cond_11
    return-void
.end method
