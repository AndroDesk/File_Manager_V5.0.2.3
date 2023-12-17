.class Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;
.super Landroid/os/AsyncTask;
.source "PrivateFolderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

.field public final synthetic val$internalPrivateDir:Ljava/lang/String;

.field public final synthetic val$sdPrivateRootDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    iput-object p2, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;->val$internalPrivateDir:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;->val$sdPrivateRootDir:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isUsingAndroidID()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_24

    const/4 p1, 0x1

    new-array v1, p1, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;->val$internalPrivateDir:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->updateOldVersionPrivateFiles(Landroid/app/Activity;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;->val$sdPrivateRootDir:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->updateOldVersionPrivateFiles(Landroid/app/Activity;Ljava/lang/String;)Z

    invoke-static {v0}, Lcom/android/fileexplorer/model/SettingManager;->setIsUsingAndroidId(Z)V

    :cond_24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$1100(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7$1;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1c

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->showSpaceNotEnoughDialog(Landroid/app/Activity;)V

    :cond_1c
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$1300(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$1202(Lcom/android/fileexplorer/activity/PrivateFolderActivity;Z)Z

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$1202(Lcom/android/fileexplorer/activity/PrivateFolderActivity;Z)Z

    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 4

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_12

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    const v0, 0x7f110455

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/activity/BaseActivity;->showProgressDialog(I)V

    goto :goto_23

    :cond_12
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_23

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    const v0, 0x7f11037a

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/activity/BaseActivity;->showLoadingDialog(I)V

    :cond_23
    :goto_23
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
