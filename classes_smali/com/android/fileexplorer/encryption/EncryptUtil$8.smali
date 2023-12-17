.class Lcom/android/fileexplorer/encryption/EncryptUtil$8;
.super Landroid/os/AsyncTask;
.source "EncryptUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/encryption/EncryptUtil;->doEncrypt(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/gallery/data/IExternalSettingSecretInterface;)V
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
        "Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$action:I

.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$destDir:Ljava/lang/String;

.field public final synthetic val$list:Ljava/util/ArrayList;

.field public final synthetic val$settingSecretInterface:Lcom/miui/gallery/data/IExternalSettingSecretInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/miui/gallery/data/IExternalSettingSecretInterface;Ljava/lang/String;I)V
    .registers 6

    iput-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$list:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$settingSecretInterface:Lcom/miui/gallery/data/IExternalSettingSecretInterface;

    iput-object p4, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$destDir:Ljava/lang/String;

    iput p5, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$action:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;
    .registers 20

    move-object/from16 v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/16 v3, 0x14

    const/4 v4, 0x0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;

    invoke-direct {v0, v3, v2, v4}, Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;-><init>(ILjava/util/List;Lcom/android/fileexplorer/encryption/EncryptUtil$1;)V

    return-object v0

    :cond_18
    iget-object v0, v1, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$list:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileSize(Ljava/util/List;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, v1, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$activity:Landroid/app/Activity;

    instance-of v7, v0, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v7, :cond_2d

    check-cast v0, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0, v5, v6}, Lcom/android/fileexplorer/activity/BaseActivity;->setProgressMax(J)V

    :cond_2d
    iget-object v0, v1, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$list:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->access$400(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v0, v1, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$settingSecretInterface:Lcom/miui/gallery/data/IExternalSettingSecretInterface;

    const/4 v6, 0x0

    if-eqz v0, :cond_67

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_67

    :try_start_3e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v7, v1, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$settingSecretInterface:Lcom/miui/gallery/data/IExternalSettingSecretInterface;

    invoke-interface {v7, v0}, Lcom/miui/gallery/data/IExternalSettingSecretInterface;->preSettingSecret([Ljava/lang/String;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_4c} :catch_5b
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_4c} :catch_4e

    const/4 v0, 0x1

    goto :goto_68

    :catch_4e
    move-exception v0

    invoke-static {}, Lcom/android/fileexplorer/encryption/EncryptUtil;->access$000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    :catch_5b
    move-exception v0

    invoke-static {}, Lcom/android/fileexplorer/encryption/EncryptUtil;->access$000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    :goto_67
    move v0, v6

    :goto_68
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v1, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_73
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_168

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v10, v1, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$activity:Landroid/app/Activity;

    instance-of v11, v10, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v11, :cond_94

    check-cast v10, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v10}, Lcom/android/fileexplorer/activity/BaseActivity;->isProgressCancelled()Z

    move-result v10

    if-eqz v10, :cond_94

    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;

    const/4 v3, 0x5

    invoke-direct {v0, v3, v2, v4}, Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;-><init>(ILjava/util/List;Lcom/android/fileexplorer/encryption/EncryptUtil$1;)V

    return-object v0

    :cond_94
    iget-object v10, v1, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$destDir:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_aa

    iget-object v10, v1, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$destDir:Ljava/lang/String;

    const-string v11, "/private"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a7

    goto :goto_aa

    :cond_a7
    iget-object v10, v1, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$destDir:Ljava/lang/String;

    goto :goto_b0

    :cond_aa
    :goto_aa
    iget-object v10, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateRootDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_b0
    move-object v15, v10

    invoke-static {v9}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileSize(Lcom/android/fileexplorer/model/FileInfo;)J

    move-result-wide v10

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v12

    invoke-virtual {v12, v15}, Lcom/android/fileexplorer/model/StorageHelper;->destVolumeFreeSpace(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v16, 0x0

    cmp-long v14, v12, v16

    const/4 v3, 0x3

    if-lez v14, :cond_ce

    cmp-long v10, v12, v10

    if-gez v10, :cond_ce

    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;

    invoke-direct {v0, v3, v2, v4}, Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;-><init>(ILjava/util/List;Lcom/android/fileexplorer/encryption/EncryptUtil$1;)V

    return-object v0

    :cond_ce
    new-instance v10, Ljava/io/File;

    iget-object v11, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_eb

    invoke-static {}, Lcom/android/fileexplorer/encryption/EncryptUtil;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v10, "file not exist"

    invoke-static {v3, v10}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15f

    :cond_eb
    iget-object v10, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v15, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_151

    iget-object v10, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/fileexplorer/model/Util;->getRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "FileExplorer"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_102

    goto :goto_151

    :cond_102
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v1, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$activity:Landroid/app/Activity;

    iget v12, v1, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$action:I

    iget-object v13, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getOldDeviceId()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v10

    invoke-static/range {v11 .. v16}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encryptFile(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v10}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->insertList(Ljava/util/List;)Z

    move-result v11

    if-nez v11, :cond_126

    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;

    invoke-direct {v0, v3, v2, v4}, Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;-><init>(ILjava/util/List;Lcom/android/fileexplorer/encryption/EncryptUtil$1;)V

    return-object v0

    :cond_126
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_12f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_143

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v11}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSourcePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12f

    :cond_143
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_15f

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->deleteFileByPath(Ljava/util/List;)V

    goto :goto_15f

    :cond_151
    :goto_151
    invoke-static {}, Lcom/android/fileexplorer/encryption/EncryptUtil;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v10, "cannot self encrypt"

    invoke-static {v3, v10}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15f
    :goto_15f
    iget-object v3, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x14

    goto/16 :goto_73

    :cond_168
    invoke-static {v7}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/util/List;)V

    if-eqz v0, :cond_19f

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19f

    :try_start_173
    invoke-static {v2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->access$500(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {v5, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->access$600(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$settingSecretInterface:Lcom/miui/gallery/data/IExternalSettingSecretInterface;

    invoke-interface {v0, v5, v3}, Lcom/miui/gallery/data/IExternalSettingSecretInterface;->onFinishSettingSecret([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_192
    .catch Landroid/os/RemoteException; {:try_start_173 .. :try_end_192} :catch_193

    goto :goto_19f

    :catch_193
    move-exception v0

    invoke-static {}, Lcom/android/fileexplorer/encryption/EncryptUtil;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19f
    :goto_19f
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b0

    iget-object v0, v1, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$list:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/fileexplorer/util/FavUtil;->removeFromDbByFileInfo(Ljava/util/List;)V

    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;

    invoke-direct {v0, v6, v2, v4}, Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;-><init>(ILjava/util/List;Lcom/android/fileexplorer/encryption/EncryptUtil$1;)V

    return-object v0

    :cond_1b0
    invoke-static {v2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->access$700(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1be

    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;

    const/16 v3, 0x15

    invoke-direct {v0, v3, v2, v4}, Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;-><init>(ILjava/util/List;Lcom/android/fileexplorer/encryption/EncryptUtil$1;)V

    return-object v0

    :cond_1be
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, v1, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v0, v3, :cond_1d2

    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;

    const/16 v3, 0x13

    invoke-direct {v0, v3, v2, v4}, Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;-><init>(ILjava/util/List;Lcom/android/fileexplorer/encryption/EncryptUtil$1;)V

    return-object v0

    :cond_1d2
    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;

    const/16 v3, 0x14

    invoke-direct {v0, v3, v2, v4}, Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;-><init>(ILjava/util/List;Lcom/android/fileexplorer/encryption/EncryptUtil$1;)V

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$activity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/android/fileexplorer/activity/BaseActivity;->dismissProgress()V

    :cond_b
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;->getResult()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4c

    const/4 v2, 0x3

    if-eq p1, v2, :cond_41

    packed-switch p1, :pswitch_data_86

    goto :goto_7d

    :pswitch_1a  #0x15
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$activity:Landroid/app/Activity;

    const v2, 0x7f110158

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_7d

    :pswitch_27  #0x14
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$activity:Landroid/app/Activity;

    const v2, 0x7f11014c

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_7d

    :pswitch_34  #0x13
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$activity:Landroid/app/Activity;

    const v2, 0x7f11033c

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_7d

    :cond_41
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/android/fileexplorer/encryption/EncryptUtil$8$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/encryption/EncryptUtil$8$1;-><init>(Lcom/android/fileexplorer/encryption/EncryptUtil$8;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_7d

    :cond_4c
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivateFolderToastTime()I

    move-result p1

    add-int/2addr p1, v0

    sget-boolean v2, Lcom/android/fileexplorer/util/Build;->IS_TABLET:Z

    if-nez v2, :cond_71

    const/4 v2, 0x5

    if-gt p1, v2, :cond_71

    iget-object v2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$destDir:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_61

    goto :goto_71

    :cond_61
    iget-object v2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$activity:Landroid/app/Activity;

    const v3, 0x7f110150

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setPrivateFolderToastTime(I)V

    goto :goto_7d

    :cond_71
    :goto_71
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$activity:Landroid/app/Activity;

    const v2, 0x7f11014f

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_7d
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {v0, v0, v0, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    return-void

    nop

    :pswitch_data_86
    .packed-switch 0x13
        :pswitch_34  #00000013
        :pswitch_27  #00000014
        :pswitch_1a  #00000015
    .end packed-switch
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->onPostExecute(Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$activity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/android/fileexplorer/activity/BaseActivity;

    const v1, 0x7f110151

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/activity/BaseActivity;->showProgressDialog(I)V

    :cond_e
    return-void
.end method
