.class Lcom/android/fileexplorer/encryption/EncryptUtil$4;
.super Landroid/os/AsyncTask;
.source "EncryptUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/encryption/EncryptUtil;->deleteFiles(Landroid/content/Context;Ljava/util/ArrayList;)V
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
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$4;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$4;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$4;->val$list:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getPrivateFileSize(Ljava/util/ArrayList;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$4;->val$context:Landroid/content/Context;

    instance-of v2, p1, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v2, :cond_15

    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/activity/BaseActivity;->setProgressMax(J)V

    :cond_15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$4;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/encryption/PrivateFile;

    iget-object v3, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$4;->val$context:Landroid/content/Context;

    instance-of v4, v3, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v4, :cond_40

    check-cast v3, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/android/fileexplorer/activity/BaseActivity;->isProgressCancelled()Z

    move-result v3

    if-eqz v3, :cond_40

    return-object p1

    :cond_40
    iget-object v3, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$4;->val$context:Landroid/content/Context;

    invoke-static {v3, v2, v0}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->deletePrivateFile(Landroid/content/Context;Lcom/android/fileexplorer/encryption/PrivateFile;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    :cond_4a
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->deleteList(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_56

    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->playDeleteAudio()V

    :cond_56
    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$4;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$4;->val$context:Landroid/content/Context;

    instance-of v1, v0, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/android/fileexplorer/activity/BaseActivity;->dismissProgress()V

    :cond_b
    const/4 v0, -0x1

    if-nez p1, :cond_f

    goto :goto_29

    :cond_f
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_29

    :cond_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$4;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p1, v0, :cond_26

    const v0, 0x7f11033b

    goto :goto_29

    :cond_26
    const v0, 0x7f110117

    :goto_29
    if-lez v0, :cond_35

    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$4;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_35
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, v0, v0, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$4;->val$context:Landroid/content/Context;

    instance-of v1, v0, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/android/fileexplorer/activity/BaseActivity;

    const v1, 0x7f1102fd

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/activity/BaseActivity;->showProgressDialog(I)V

    :cond_e
    return-void
.end method
