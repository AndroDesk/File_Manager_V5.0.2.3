.class Lcom/android/fileexplorer/encryption/EncryptUtil$2;
.super Landroid/os/AsyncTask;
.source "EncryptUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/encryption/EncryptUtil;->operationOpenFile(Lcom/android/fileexplorer/activity/BaseActivity;Ljava/util/List;I)V
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
        "Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$activity:Lcom/android/fileexplorer/activity/BaseActivity;

.field public final synthetic val$privateFile:Lcom/android/fileexplorer/encryption/PrivateFile;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/BaseActivity;Lcom/android/fileexplorer/encryption/PrivateFile;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->val$activity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->val$privateFile:Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;
    .registers 13

    .line 2
    new-instance p1, Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;

    invoke-direct {p1}, Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;-><init>()V

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/model/SettingActivitySpHelper;->getEncrypt()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "operationOpenFile no space"

    if-eqz v0, :cond_7f

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->val$activity:Lcom/android/fileexplorer/activity/BaseActivity;

    iget-object v4, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->val$privateFile:Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-static {v0, v4}, Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil;->moveNormalPendingOpenFile(Landroid/app/Activity;Lcom/android/fileexplorer/encryption/PrivateFile;)Lcom/android/fileexplorer/encryption/PrivateFile;

    move-result-object v0

    if-nez v0, :cond_1a

    return-object p1

    .line 5
    :cond_1a
    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;->ext:Ljava/lang/String;

    .line 6
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/encryption/EncryptUtil;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "destDir = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->val$privateFile:Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v5}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v9}, Lcom/android/fileexplorer/model/StorageHelper;->destHasEnoughSpace(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/encryption/EncryptUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput v2, p1, Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;->errorCode:I

    return-object p1

    .line 11
    :cond_63
    iget-object v5, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->val$activity:Lcom/android/fileexplorer/activity/BaseActivity;

    const/4 v6, 0x3

    invoke-static {}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getOldDeviceId()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    move-object v7, v0

    invoke-static/range {v5 .. v10}, Lcom/android/fileexplorer/encryption/EncryptUtil;->decryptFile(Landroid/app/Activity;ILcom/android/fileexplorer/encryption/PrivateFile;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 12
    iput v1, p1, Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;->errorCode:I

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDecryptedFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;->filePath:Ljava/lang/String;

    return-object p1

    .line 14
    :cond_7f
    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->val$privateFile:Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;->ext:Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->val$privateFile:Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 16
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    iget-object v4, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->val$privateFile:Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v4}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v8}, Lcom/android/fileexplorer/model/StorageHelper;->destHasEnoughSpace(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_af

    .line 17
    invoke-static {}, Lcom/android/fileexplorer/encryption/EncryptUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iput v2, p1, Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;->errorCode:I

    return-object p1

    .line 19
    :cond_af
    iget-object v4, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->val$activity:Lcom/android/fileexplorer/activity/BaseActivity;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->val$privateFile:Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-static {}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getOldDeviceId()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/android/fileexplorer/encryption/EncryptUtil;->decryptFile(Landroid/app/Activity;ILcom/android/fileexplorer/encryption/PrivateFile;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->val$privateFile:Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->createLock(Ljava/lang/String;)Z

    .line 21
    iput v1, p1, Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;->errorCode:I

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->val$privateFile:Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDecryptedFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;->filePath:Ljava/lang/String;

    :cond_d6
    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;)V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->val$activity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/android/fileexplorer/activity/BaseActivity;->dismissProgress()V

    .line 3
    iget v0, p1, Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;->errorCode:I

    const v1, 0x7f110113

    const/4 v2, 0x0

    if-eqz v0, :cond_3a

    const/16 p1, 0x12

    if-eq v0, p1, :cond_2d

    const/4 p1, 0x3

    if-eq v0, p1, :cond_22

    const/4 p1, 0x4

    if-eq v0, p1, :cond_18

    goto :goto_69

    .line 4
    :cond_18
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->val$activity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_69

    .line 5
    :cond_22
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->val$activity:Lcom/android/fileexplorer/activity/BaseActivity;

    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$2$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/encryption/EncryptUtil$2$1;-><init>(Lcom/android/fileexplorer/encryption/EncryptUtil$2;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_69

    .line 6
    :cond_2d
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->val$activity:Lcom/android/fileexplorer/activity/BaseActivity;

    const v0, 0x7f11046a

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_69

    .line 7
    :cond_3a
    iget-object v0, p1, Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->val$activity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 9
    :cond_4c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v1, p1, Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;->ext:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance v3, Lcom/android/fileexplorer/model/FileWithExt;

    iget-object p1, p1, Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;->filePath:Ljava/lang/String;

    invoke-direct {v3, p1, v1}, Lcom/android/fileexplorer/model/FileWithExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->val$activity:Lcom/android/fileexplorer/activity/BaseActivity;

    const/4 v1, 0x1

    const-string v3, ""

    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;ILjava/lang/String;Z)V

    :goto_69
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->onPostExecute(Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->val$activity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    const v1, 0x7f110115

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/activity/BaseActivity;->showLoadingDialog(I)V

    .line 11
    :cond_a
    return-void
.end method
