.class Lcom/android/fileexplorer/activity/ViewLargeActivity$7;
.super Landroid/os/AsyncTask;
.source "ViewLargeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/ViewLargeActivity;->onActivityResult(IILandroid/content/Intent;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

.field public final synthetic val$path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/ViewLargeActivity;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$7;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$7;->val$path:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 8

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$7;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$7;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$200(Lcom/android/fileexplorer/activity/ViewLargeActivity;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/FileWithExt;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getFromFilePath(Ljava/lang/String;)Lcom/android/fileexplorer/encryption/PrivateFile;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_69

    .line 4
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$7;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$400(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "path error"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 7
    :cond_44
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getFromDisplayPath(Ljava/lang/String;)Lcom/android/fileexplorer/encryption/PrivateFile;

    move-result-object v0

    if-nez v0, :cond_69

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$7;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$400(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 9
    :cond_69
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$7;->val$path:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 11
    invoke-static {p1, v2, v3, v3}, Lcom/android/fileexplorer/model/Util;->getDestFile(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_7b

    return-object v1

    .line 12
    :cond_7b
    invoke-static {}, Lcom/android/fileexplorer/model/SettingActivitySpHelper;->getEncrypt()Z

    move-result v2

    if-eqz v2, :cond_86

    .line 13
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil;->getPrivateFileOpenCachedPath(Lcom/android/fileexplorer/encryption/PrivateFile;)Ljava/io/File;

    move-result-object v2

    goto :goto_8f

    .line 14
    :cond_86
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    :goto_8f
    iget-object v4, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$7;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    const/4 v5, 0x1

    invoke-static {v4, v2, p1, v5}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    move-result v2

    if-nez v2, :cond_c1

    .line 16
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;Z)Z

    .line 17
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->deletePrivateFiles(Lcom/android/fileexplorer/encryption/PrivateFile;)V

    .line 18
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->updateFile(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->deletePrivateFile(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c1
    return-object v1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity$7;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .registers 5

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const p1, 0x7f110051

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto :goto_30

    .line 4
    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$7;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$1000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$7;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 6
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getReadablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/String;)V

    :goto_30
    return-void
.end method

.method public onPreExecute()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$7;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$1202(Lcom/android/fileexplorer/activity/ViewLargeActivity;Z)Z

    .line 7
    return-void
.end method
