.class Lcom/android/fileexplorer/encryption/EncryptUtil$13;
.super Landroid/os/AsyncTask;
.source "EncryptUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/encryption/EncryptUtil;->encryptSingleFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/encryption/EncryptUtil$EncryptCallback;)V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$callback:Lcom/android/fileexplorer/encryption/EncryptUtil$EncryptCallback;

.field public final synthetic val$destPath:Ljava/lang/String;

.field public final synthetic val$path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/android/fileexplorer/encryption/EncryptUtil$EncryptCallback;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$13;->val$path:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$13;->val$activity:Landroid/app/Activity;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$13;->val$destPath:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$13;->val$callback:Lcom/android/fileexplorer/encryption/EncryptUtil$EncryptCallback;

    .line 9
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 9

    .line 2
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$13;->val$path:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$13;->val$activity:Landroid/app/Activity;

    instance-of v2, p1, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v2, :cond_16

    .line 4
    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/activity/BaseActivity;->setProgressMax(J)V

    .line 5
    :cond_16
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$13;->val$destPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-static {}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getExternalPrivateRootDir()Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    :cond_23
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$13;->val$destPath:Ljava/lang/String;

    :goto_25
    move-object v4, p1

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$13;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/android/fileexplorer/model/StorageHelper;->destHasEnoughSpace(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x3

    if-nez v0, :cond_3d

    .line 8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3d
    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$13;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$13;->val$path:Ljava/lang/String;

    invoke-static {}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getOldDeviceId()Ljava/lang/String;

    move-result-object v3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encryptFile(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$13;->val$path:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->insertList(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_5d

    const/4 v6, 0x0

    :cond_5d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_62
    const/16 p1, 0x14

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$13;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$13;->val$activity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v1, :cond_b

    .line 3
    check-cast v0, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/android/fileexplorer/activity/BaseActivity;->dismissProgress()V

    .line 4
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_32

    const/4 v1, 0x3

    if-eq p1, v1, :cond_27

    const/16 v1, 0x14

    if-eq p1, v1, :cond_1a

    goto :goto_61

    .line 5
    :cond_1a
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$13;->val$activity:Landroid/app/Activity;

    const v1, 0x7f11014c

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_61

    .line 6
    :cond_27
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$13;->val$activity:Landroid/app/Activity;

    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$13$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/encryption/EncryptUtil$13$1;-><init>(Lcom/android/fileexplorer/encryption/EncryptUtil$13;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_61

    .line 7
    :cond_32
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivateFolderToastTime()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 8
    sget-boolean v1, Lcom/android/fileexplorer/util/Build;->IS_TABLET:Z

    if-nez v1, :cond_50

    const/4 v1, 0x5

    if-le p1, v1, :cond_40

    goto :goto_50

    .line 9
    :cond_40
    iget-object v1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$13;->val$activity:Landroid/app/Activity;

    const v2, 0x7f110150

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 10
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setPrivateFolderToastTime(I)V

    goto :goto_5c

    .line 11
    :cond_50
    :goto_50
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$13;->val$activity:Landroid/app/Activity;

    const v1, 0x7f11014f

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 12
    :goto_5c
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$13;->val$callback:Lcom/android/fileexplorer/encryption/EncryptUtil$EncryptCallback;

    invoke-interface {p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$EncryptCallback;->onEncrypted()V

    :goto_61
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$13;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
