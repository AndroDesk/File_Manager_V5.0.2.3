.class public Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading;
.super Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;
.source "RequestPlayUrlTaskWithLoading.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading$CloudVideoResult;
    }
.end annotation


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading;->mRef:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading;->mFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;
    .registers 4

    invoke-super {p0, p1}, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;->doInBackground([Ljava/lang/Void;)Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;

    move-result-object p1

    instance-of v0, p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$SuccessResult;

    if-eqz v0, :cond_2b

    new-instance v0, Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading$CloudVideoResult;

    iget-object v1, p0, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;->fileId:Ljava/lang/String;

    check-cast p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$SuccessResult;

    iget-object p1, p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$SuccessResult;->url:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading$CloudVideoResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading;->mFileName:Ljava/lang/String;

    invoke-static {p1}, Lcom/micloud/midrive/utils/FileHelper;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/micloud/midrive/utils/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "*/*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string p1, "video/*"

    :cond_27
    invoke-virtual {v0, p1}, Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading$CloudVideoResult;->setType(Ljava/lang/String;)V

    return-object v0

    :cond_2b
    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading;->doInBackground([Ljava/lang/Void;)Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;->onPostExecute(Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;)V

    iget-object p1, p0, Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->dismissProgress()V

    :cond_16
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;

    invoke-virtual {p0, p1}, Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading;->onPostExecute(Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
