.class Lcom/android/fileexplorer/activity/FileActivity$HandleIntentTask;
.super Landroid/os/AsyncTask;
.source "FileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/activity/FileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandleIntentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public callFrom:Ljava/lang/String;

.field public intent:Landroid/content/Intent;

.field public refs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/activity/FileActivity;",
            ">;"
        }
    .end annotation
.end field

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/Intent;Ljava/lang/String;Lcom/android/fileexplorer/activity/FileActivity;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/activity/FileActivity$HandleIntentTask;->uri:Landroid/net/Uri;

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/activity/FileActivity$HandleIntentTask;->intent:Landroid/content/Intent;

    .line 8
    iput-object p3, p0, Lcom/android/fileexplorer/activity/FileActivity$HandleIntentTask;->callFrom:Ljava/lang/String;

    .line 10
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 12
    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 15
    iput-object p1, p0, Lcom/android/fileexplorer/activity/FileActivity$HandleIntentTask;->refs:Ljava/lang/ref/WeakReference;

    .line 17
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/activity/FileActivity$HandleIntentTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 4

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/activity/FileActivity$HandleIntentTask;->uri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getFilePathForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4
    invoke-static {p1}, La/a;->A(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 5
    :cond_12
    iget-object p1, p0, Lcom/android/fileexplorer/activity/FileActivity$HandleIntentTask;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_VIEW uriPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileActivity"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/activity/FileActivity$HandleIntentTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .registers 7

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_VIEW onPostExecute: path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileActivity"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/activity/FileActivity$HandleIntentTask;->refs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/activity/FileActivity$HandleIntentTask;->refs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/activity/FileActivity;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/FileActivity$HandleIntentTask;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/fileexplorer/activity/FileActivity$HandleIntentTask;->refs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/activity/FileActivity;

    iget-object v3, p0, Lcom/android/fileexplorer/activity/FileActivity$HandleIntentTask;->intent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/fileexplorer/activity/FileActivity$HandleIntentTask;->callFrom:Ljava/lang/String;

    invoke-static {v2, v3, p1, v4}, Lcom/android/fileexplorer/activity/FileActivity;->access$000(Lcom/android/fileexplorer/activity/FileActivity;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/activity/FileActivity;->access$100(Lcom/android/fileexplorer/activity/FileActivity;Landroid/content/Intent;Z)V

    :cond_3b
    return-void
.end method
