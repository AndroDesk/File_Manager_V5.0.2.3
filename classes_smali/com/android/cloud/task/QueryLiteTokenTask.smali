.class public Lcom/android/cloud/task/QueryLiteTokenTask;
.super Landroid/os/AsyncTask;
.source "QueryLiteTokenTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cloud/task/QueryLiteTokenTask$QueryLiteTokenListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private mListener:Lcom/android/cloud/task/QueryLiteTokenTask$QueryLiteTokenListener;

.field private mResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/cloud/task/QueryLiteTokenTask;->context:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/cloud/task/QueryLiteTokenTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/android/cloud/task/QueryLiteTokenTask;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    move-result-object p1

    invoke-static {p1}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getLiteToken(Lcom/micloud/midrive/server/transport/Network;)Ljava/util/Map;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_f
    .catch Lcom/micloud/midrive/server/exception/RemoteServiceException; {:try_start_0 .. :try_end_a} :catch_d
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    goto :goto_10

    :catch_d
    move-exception p1

    goto :goto_10

    :catch_f
    move-exception p1

    :goto_10
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getResultIfSuccessOrNull()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/cloud/task/QueryLiteTokenTask;->mResult:Ljava/util/Map;

    .line 3
    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/cloud/task/QueryLiteTokenTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lcom/android/cloud/task/QueryLiteTokenTask;->mResult:Ljava/util/Map;

    .line 4
    iget-object p1, p0, Lcom/android/cloud/task/QueryLiteTokenTask;->mListener:Lcom/android/cloud/task/QueryLiteTokenTask$QueryLiteTokenListener;

    if-eqz p1, :cond_c

    .line 5
    invoke-interface {p1}, Lcom/android/cloud/task/QueryLiteTokenTask$QueryLiteTokenListener;->onQueryLiteTokenFinished()V

    :cond_c
    return-void
.end method

.method public setListener(Lcom/android/cloud/task/QueryLiteTokenTask$QueryLiteTokenListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/task/QueryLiteTokenTask;->mListener:Lcom/android/cloud/task/QueryLiteTokenTask$QueryLiteTokenListener;

    .line 3
    return-void
.end method
