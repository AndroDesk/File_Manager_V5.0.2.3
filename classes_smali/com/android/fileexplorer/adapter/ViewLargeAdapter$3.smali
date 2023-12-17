.class Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;
.super Landroid/os/AsyncTask;
.source "ViewLargeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->loadGifImage(Landroid/view/View;Lcom/android/fileexplorer/model/FileWithExt;ILandroid/widget/ProgressBar;Landroid/view/View;)V
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
        "Landroid/util/Pair<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

.field public final synthetic val$errorView:Landroid/view/View;

.field public final synthetic val$image:Lcom/android/fileexplorer/model/FileWithExt;

.field public final synthetic val$position:I

.field public final synthetic val$progressBar:Landroid/widget/ProgressBar;

.field public final synthetic val$retView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;Lcom/android/fileexplorer/model/FileWithExt;Landroid/widget/ProgressBar;Landroid/view/View;Landroid/view/View;I)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$image:Lcom/android/fileexplorer/model/FileWithExt;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$progressBar:Landroid/widget/ProgressBar;

    .line 7
    iput-object p4, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$errorView:Landroid/view/View;

    .line 9
    iput-object p5, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$retView:Landroid/view/View;

    .line 11
    iput p6, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$position:I

    .line 13
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$image:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$image:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/FileExplorer/.safebox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x6

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_11e

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$image:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getFromFilePath(Ljava/lang/String;)Lcom/android/fileexplorer/encryption/PrivateFile;

    move-result-object v0

    const/16 v3, 0x14

    if-nez v0, :cond_67

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$image:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$image:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v4}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$100(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path error"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 10
    :cond_5b
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getFromDisplayPath(Ljava/lang/String;)Lcom/android/fileexplorer/encryption/PrivateFile;

    move-result-object v0

    if-nez v0, :cond_67

    .line 11
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 12
    :cond_67
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_135

    .line 14
    :cond_7c
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_118

    .line 15
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v1

    iget-object v4, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$image:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v4}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$image:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v5}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/fileexplorer/model/Util;->getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/fileexplorer/model/StorageHelper;->destHasEnoughSpace(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b0

    .line 16
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 17
    :cond_b0
    invoke-static {}, Lcom/android/fileexplorer/model/SettingActivitySpHelper;->getEncrypt()Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 18
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {v1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$200(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil;->moveNormalPendingOpenFile(Landroid/app/Activity;Lcom/android/fileexplorer/encryption/PrivateFile;)Lcom/android/fileexplorer/encryption/PrivateFile;

    move-result-object v0

    .line 19
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    .line 20
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {v1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$200(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v4

    const/4 v5, 0x3

    .line 21
    invoke-static {}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getOldDeviceId()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object v6, v0

    .line 22
    invoke-static/range {v4 .. v9}, Lcom/android/fileexplorer/encryption/EncryptUtil;->decryptFile(Landroid/app/Activity;ILcom/android/fileexplorer/encryption/PrivateFile;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 24
    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDecryptedFilePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_135

    :cond_e9
    move v2, v3

    goto :goto_135

    .line 25
    :cond_eb
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {v1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$200(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v4

    const/4 v5, 0x2

    .line 26
    invoke-static {}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getOldDeviceId()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$image:Lcom/android/fileexplorer/model/FileWithExt;

    .line 27
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v6, v0

    .line 28
    invoke-static/range {v4 .. v9}, Lcom/android/fileexplorer/encryption/EncryptUtil;->decryptFile(Landroid/app/Activity;ILcom/android/fileexplorer/encryption/PrivateFile;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 30
    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->createLock(Ljava/lang/String;)Z

    .line 31
    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDecryptedFilePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_135

    .line 32
    :cond_118
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 33
    :cond_11e
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$image:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_135

    .line 34
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 35
    :cond_135
    :goto_135
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Landroid/util/Pair;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$200(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v0, :cond_15

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$200(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/android/fileexplorer/activity/BaseActivity;->dismissProgress()V

    .line 4
    :cond_15
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_88

    const/4 p1, 0x3

    if-eq v0, p1, :cond_6f

    const/16 p1, 0x12

    if-eq v0, p1, :cond_54

    const/16 p1, 0x14

    if-eq v0, p1, :cond_39

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$errorView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b2

    .line 7
    :cond_39
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$errorView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$200(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    const v0, 0x7f110113

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_b2

    .line 10
    :cond_54
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$errorView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$200(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    const v0, 0x7f11046a

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_b2

    .line 13
    :cond_6f
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$errorView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$200(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$2;-><init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_b2

    .line 16
    :cond_88
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_97

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$errorView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 19
    :cond_97
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$retView:Landroid/view/View;

    const v1, 0x7f0a01aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 20
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance v2, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;

    invoke-direct {v2, p0, v0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;-><init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;Landroid/widget/ImageView;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/fileexplorer/model/FileIconHelper;->loadGif(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestListener;)V

    :goto_b2
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
