.class Lcom/android/fileexplorer/adapter/search/SearchView$3;
.super Landroid/os/AsyncTask;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/search/SearchView;->resetData()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/search/SearchView;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/search/SearchView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView$3;->this$0:Lcom/android/fileexplorer/adapter/search/SearchView;

    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/search/SearchView$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 2

    .line 2
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileUtils;->getAllTagsAsync()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/search/SearchView$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .registers 2

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView$3;->this$0:Lcom/android/fileexplorer/adapter/search/SearchView;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/search/SearchView;->access$300(Lcom/android/fileexplorer/adapter/search/SearchView;)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView$3;->this$0:Lcom/android/fileexplorer/adapter/search/SearchView;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/search/SearchView;->access$400(Lcom/android/fileexplorer/adapter/search/SearchView;)V

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView$3;->this$0:Lcom/android/fileexplorer/adapter/search/SearchView;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/search/SearchView;->access$500(Lcom/android/fileexplorer/adapter/search/SearchView;)V

    return-void
.end method
