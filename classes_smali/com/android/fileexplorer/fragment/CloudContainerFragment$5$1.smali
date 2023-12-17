.class Lcom/android/fileexplorer/fragment/CloudContainerFragment$5$1;
.super Landroid/os/AsyncTask;
.source "CloudContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/CloudContainerFragment$5;->onClick(Landroid/view/View;)V
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
.field public final synthetic this$1:Lcom/android/fileexplorer/fragment/CloudContainerFragment$5;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment$5;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$5$1;->this$1:Lcom/android/fileexplorer/fragment/CloudContainerFragment$5;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$5$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$5$1;->this$1:Lcom/android/fileexplorer/fragment/CloudContainerFragment$5;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/CloudContainerFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$600(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$5$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$5$1;->this$1:Lcom/android/fileexplorer/fragment/CloudContainerFragment$5;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/CloudContainerFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/micloud/midrive/utils/CheckAccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->notifySyncOrStartSessionAtOnce(Landroid/content/Context;Landroid/accounts/Account;)Lcom/micloud/midrive/session/SyncSession;

    return-void
.end method
