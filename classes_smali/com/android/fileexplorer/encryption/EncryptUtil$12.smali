.class Lcom/android/fileexplorer/encryption/EncryptUtil$12;
.super Landroid/os/AsyncTask;
.source "EncryptUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/encryption/EncryptUtil;->movePrivateFiles(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V
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
        "Ljava/util/List<",
        "Lcom/android/fileexplorer/encryption/PrivateFile;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$checkedPrivateFiles:Ljava/util/ArrayList;

.field public final synthetic val$currentPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$12;->val$activity:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$12;->val$checkedPrivateFiles:Ljava/util/ArrayList;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$12;->val$currentPath:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$12;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$12;->val$checkedPrivateFiles:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getPrivateFileSize(Ljava/util/ArrayList;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$12;->val$activity:Landroid/app/Activity;

    instance-of v2, p1, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v2, :cond_15

    .line 4
    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/activity/BaseActivity;->setProgressMax(J)V

    .line 5
    :cond_15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$12;->val$checkedPrivateFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 9
    iget-object v2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$12;->val$currentPath:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/model/Util;->getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 10
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 11
    :cond_4b
    invoke-virtual {v4}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v2

    if-eqz v2, :cond_95

    .line 12
    iget-object v2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$12;->val$currentPath:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$12;->val$currentPath:Ljava/lang/String;

    goto :goto_69

    :cond_5e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$12;->val$currentPath:Ljava/lang/String;

    .line 13
    invoke-static {v2, v5, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    :goto_69
    invoke-virtual {v4}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-virtual {v4}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_8b

    :cond_78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 15
    :goto_8b
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 16
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 17
    :cond_95
    iget-object v2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$12;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$12;->val$currentPath:Ljava/lang/String;

    move-object v5, p1

    move-object v6, v1

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/android/fileexplorer/encryption/EncryptUtil;->moveFile(Landroid/app/Activity;Ljava/lang/String;Lcom/android/fileexplorer/encryption/PrivateFile;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2a

    .line 18
    :cond_a0
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->deleteList(Ljava/util/List;)V

    .line 19
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->insertList(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_aa

    goto :goto_ab

    :cond_aa
    const/4 v1, 0x0

    :goto_ab
    return-object v1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$12;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$12;->val$activity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v1, :cond_b

    .line 3
    check-cast v0, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/android/fileexplorer/activity/BaseActivity;->dismissProgress()V

    :cond_b
    if-nez p1, :cond_13

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$12;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->showSpaceNotEnoughDialog(Landroid/app/Activity;)V

    goto :goto_26

    .line 5
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_26

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$12;->val$activity:Landroid/app/Activity;

    const v0, 0x7f110297

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 7
    :cond_26
    :goto_26
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const/4 v0, 0x1

    .line 8
    invoke-static {v0, v0, v0, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$12;->val$activity:Landroid/app/Activity;

    .line 3
    instance-of v1, v0, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 5
    if-eqz v1, :cond_e

    .line 7
    check-cast v0, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 9
    const v1, 0x7f11030d

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/activity/BaseActivity;->showProgressDialog(I)V

    .line 15
    :cond_e
    return-void
.end method
