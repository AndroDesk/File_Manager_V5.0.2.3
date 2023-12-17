.class Lcom/android/fileexplorer/activity/ViewLargeActivity$5;
.super Landroid/os/AsyncTask;
.source "ViewLargeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/ViewLargeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

.field public final synthetic val$fileWithExt:Lcom/android/fileexplorer/model/FileWithExt;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/ViewLargeActivity;Lcom/android/fileexplorer/model/FileWithExt;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$5;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$5;->val$fileWithExt:Lcom/android/fileexplorer/model/FileWithExt;

    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 3

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$5;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$5;->val$fileWithExt:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getFromFilePath(Ljava/lang/String;)Lcom/android/fileexplorer/encryption/PrivateFile;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->restoreFile(Landroid/content/Context;Lcom/android/fileexplorer/encryption/PrivateFile;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .registers 3

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$5;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$600(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$5;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->setList(Ljava/util/List;)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$5;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$600(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Li1/a;->notifyDataSetChanged()V

    const p1, 0x7f110393

    .line 5
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto :goto_2b

    :cond_25
    const p1, 0x7f110394

    .line 6
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    :goto_2b
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity$5;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
