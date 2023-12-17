.class public Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;
.super Landroid/os/AsyncTask;
.source "RequestOnlinePlayUrlTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$FailedResult;,
        Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$SuccessResult;,
        Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;,
        Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$RequestListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;",
        ">;"
    }
.end annotation


# instance fields
.field public fileId:Ljava/lang/String;

.field private network:Lcom/micloud/midrive/server/transport/Network;

.field private requestListener:Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$RequestListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-static {p1}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;->network:Lcom/micloud/midrive/server/transport/Network;

    iput-object p2, p0, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;->fileId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;
    .registers 6

    :try_start_0
    iget-object p1, p0, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;->network:Lcom/micloud/midrive/server/transport/Network;

    iget-object v0, p0, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;->fileId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getPlayOnlineURL(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "online url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    new-instance v0, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$SuccessResult;

    iget-object v1, p0, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;->fileId:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$SuccessResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_0 .. :try_end_29} :catch_36
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_0 .. :try_end_29} :catch_34
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_0 .. :try_end_29} :catch_32
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_0 .. :try_end_29} :catch_30
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_0 .. :try_end_29} :catch_2e
    .catch Lcom/micloud/midrive/server/transport/exception/RequestIOException; {:try_start_0 .. :try_end_29} :catch_2c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_29} :catch_2a

    return-object v0

    :catch_2a
    move-exception p1

    goto :goto_37

    :catch_2c
    move-exception p1

    goto :goto_37

    :catch_2e
    move-exception p1

    goto :goto_37

    :catch_30
    move-exception p1

    goto :goto_37

    :catch_32
    move-exception p1

    goto :goto_37

    :catch_34
    move-exception p1

    goto :goto_37

    :catch_36
    move-exception p1

    :goto_37
    new-instance v0, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$FailedResult;

    iget-object v1, p0, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;->fileId:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$FailedResult;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;->doInBackground([Ljava/lang/Void;)Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;->requestListener:Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$RequestListener;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$RequestListener;->onRequestFinished(Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;)V

    :cond_a
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;->onPostExecute(Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;)V

    return-void
.end method

.method public setRequestListener(Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$RequestListener;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;->requestListener:Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$RequestListener;

    return-void
.end method
