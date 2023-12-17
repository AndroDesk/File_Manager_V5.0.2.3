.class Lcom/android/fileexplorer/activity/StorageInfoActivity$2;
.super Landroid/os/AsyncTask;
.source "StorageInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/StorageInfoActivity;->onResume()V
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
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/StorageInfoActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/StorageInfoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity$2;->this$0:Lcom/android/fileexplorer/activity/StorageInfoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/activity/StorageInfoActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity$2;->this$0:Lcom/android/fileexplorer/activity/StorageInfoActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->access$000(Lcom/android/fileexplorer/activity/StorageInfoActivity;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/activity/StorageInfoActivity$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity$2;->this$0:Lcom/android/fileexplorer/activity/StorageInfoActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->access$100(Lcom/android/fileexplorer/activity/StorageInfoActivity;)V

    return-void
.end method
