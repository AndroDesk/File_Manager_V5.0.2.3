.class Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;
.super Landroid/os/AsyncTask;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadBitmapAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Lcom/miui/maml/ResourceManager$BitmapInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mLoadListener:Lcom/miui/maml/ResourceManager$AsyncLoadListener;

.field private mSrc:Ljava/lang/String;

.field public final synthetic this$0:Lcom/miui/maml/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ResourceManager;Lcom/miui/maml/ResourceManager$AsyncLoadListener;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->this$0:Lcom/miui/maml/ResourceManager;

    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->mLoadListener:Lcom/miui/maml/ResourceManager$AsyncLoadListener;

    .line 8
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .registers 3

    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->mSrc:Ljava/lang/String;

    if-eqz p1, :cond_e

    .line 3
    iget-object v0, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->this$0:Lcom/miui/maml/ResourceManager;

    invoke-static {v0, p1}, Lcom/miui/maml/ResourceManager;->access$000(Lcom/miui/maml/ResourceManager;Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object p1

    return-object p1

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->doInBackground([Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lcom/miui/maml/ResourceManager$BitmapInfo;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->this$0:Lcom/miui/maml/ResourceManager;

    invoke-static {v0}, Lcom/miui/maml/ResourceManager;->access$100(Lcom/miui/maml/ResourceManager;)Landroidx/collection/b;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_7
    iget-object v1, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->mLoadListener:Lcom/miui/maml/ResourceManager$AsyncLoadListener;

    iget-object v2, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->mSrc:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/miui/maml/ResourceManager$AsyncLoadListener;->onLoadComplete(Ljava/lang/String;Lcom/miui/maml/ResourceManager$BitmapInfo;)V

    .line 4
    iget-object p1, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->this$0:Lcom/miui/maml/ResourceManager;

    invoke-static {p1}, Lcom/miui/maml/ResourceManager;->access$100(Lcom/miui/maml/ResourceManager;)Landroidx/collection/b;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->mSrc:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/collection/b;->remove(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/miui/maml/ResourceManager$BitmapInfo;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->onPostExecute(Lcom/miui/maml/ResourceManager$BitmapInfo;)V

    return-void
.end method
