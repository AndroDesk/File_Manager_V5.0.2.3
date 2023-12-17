.class Lcom/android/fileexplorer/encryption/EncryptUtil$6;
.super Landroid/os/AsyncTask;
.source "EncryptUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/encryption/EncryptUtil;->operationDecryptFiles(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V
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
.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$arrayList:Ljava/util/ArrayList;

.field public final synthetic val$destFolder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$6;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$6;->val$arrayList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$6;->val$destFolder:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 13

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$6;->val$arrayList:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getPrivateFileSize(Ljava/util/ArrayList;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$6;->val$activity:Landroid/app/Activity;

    instance-of v3, v2, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v3, :cond_1a

    check-cast v2, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v2, v0, v1}, Lcom/android/fileexplorer/activity/BaseActivity;->setProgressMax(J)V

    :cond_1a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$6;->val$destFolder:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/model/StorageHelper;->destVolumeFreeSpace(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-gez v0, :cond_33

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_41
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/android/fileexplorer/encryption/PrivateFile;

    iget-object v3, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$6;->val$activity:Landroid/app/Activity;

    instance-of v4, v3, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v4, :cond_62

    check-cast v3, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/android/fileexplorer/activity/BaseActivity;->isProgressCancelled()Z

    move-result v3

    if-eqz v3, :cond_62

    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_62
    iget-object v3, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$6;->val$destFolder:Ljava/lang/String;

    const-string v4, "/FileExplorer/.safebox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-virtual {v10}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_74
    iget-object v3, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$6;->val$activity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getOldDeviceId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$6;->val$destFolder:Ljava/lang/String;

    move-object v5, v10

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->decryptFile(Landroid/app/Activity;ILcom/android/fileexplorer/encryption/PrivateFile;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$6;->val$destFolder:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a2
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->deleteList(Ljava/util/List;)V

    goto :goto_41

    :cond_a6
    invoke-static {v1}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/util/List;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b5

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_b5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq v0, p1, :cond_c6

    const/16 p1, 0x13

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_c6
    const/16 p1, 0x14

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$6;->val$activity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/android/fileexplorer/activity/BaseActivity;->dismissProgress()V

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_5e

    const/4 v2, 0x3

    if-eq p1, v2, :cond_53

    const/16 v2, 0x13

    if-eq p1, v2, :cond_2c

    const/16 v2, 0x14

    if-eq p1, v2, :cond_1f

    goto :goto_84

    :cond_1f
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$6;->val$activity:Landroid/app/Activity;

    const v2, 0x7f110051

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_84

    :cond_2c
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f182eac

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$6;->val$destFolder:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/fileexplorer/model/Util;->getReadablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_84

    :cond_53
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$6;->val$activity:Landroid/app/Activity;

    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$6$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/encryption/EncryptUtil$6$1;-><init>(Lcom/android/fileexplorer/encryption/EncryptUtil$6;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_84

    :cond_5e
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f182dc8

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$6;->val$destFolder:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/fileexplorer/model/Util;->getReadablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_84
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {v1, v1, v1, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$6;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$6;->val$activity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/android/fileexplorer/activity/BaseActivity;

    const v1, 0x7f110115

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/activity/BaseActivity;->showProgressDialog(I)V

    :cond_e
    return-void
.end method
