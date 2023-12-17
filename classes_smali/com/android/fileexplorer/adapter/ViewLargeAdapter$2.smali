.class Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;
.super Landroid/os/AsyncTask;
.source "ViewLargeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->loadImage(Landroid/view/View;Lcom/android/fileexplorer/model/FileWithExt;ILandroid/widget/ProgressBar;Landroid/view/View;)V
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
.field private mOrientation:I

.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

.field public final synthetic val$errorView:Landroid/view/View;

.field public final synthetic val$image:Lcom/android/fileexplorer/model/FileWithExt;

.field public final synthetic val$position:I

.field public final synthetic val$progressBar:Landroid/widget/ProgressBar;

.field public final synthetic val$retView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;Lcom/android/fileexplorer/model/FileWithExt;Landroid/view/View;ILandroid/widget/ProgressBar;Landroid/view/View;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$image:Lcom/android/fileexplorer/model/FileWithExt;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$retView:Landroid/view/View;

    .line 7
    iput p4, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$position:I

    .line 9
    iput-object p5, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$progressBar:Landroid/widget/ProgressBar;

    .line 11
    iput-object p6, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$errorView:Landroid/view/View;

    .line 13
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 16
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->mOrientation:I

    .line 19
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .registers 14
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
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$image:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 4
    new-instance p1, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_18
    const-string v0, "/FileExplorer/.safebox"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x3

    const-string v3, ""

    const/4 v4, 0x6

    if-eqz v0, :cond_12f

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$image:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getFromFilePath(Ljava/lang/String;)Lcom/android/fileexplorer/encryption/PrivateFile;

    move-result-object v0

    const/16 v5, 0x14

    if-nez v0, :cond_75

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$image:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$image:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v6}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$100(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "path error"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance p1, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 11
    :cond_65
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getFromDisplayPath(Ljava/lang/String;)Lcom/android/fileexplorer/encryption/PrivateFile;

    move-result-object v0

    if-nez v0, :cond_75

    .line 12
    new-instance p1, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 13
    :cond_75
    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 14
    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_14a

    .line 15
    :cond_8a
    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_125

    .line 16
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v3

    iget-object v6, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$image:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v6}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$image:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v7}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/fileexplorer/model/Util;->getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/android/fileexplorer/model/StorageHelper;->destHasEnoughSpace(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_bd

    .line 17
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 18
    :cond_bd
    invoke-static {}, Lcom/android/fileexplorer/model/SettingActivitySpHelper;->getEncrypt()Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 19
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {v3}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$200(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil;->moveNormalPendingOpenFile(Landroid/app/Activity;Lcom/android/fileexplorer/encryption/PrivateFile;)Lcom/android/fileexplorer/encryption/PrivateFile;

    move-result-object v0

    if-eqz v0, :cond_14b

    .line 20
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    .line 21
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {v3}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$200(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v6

    const/4 v7, 0x3

    .line 22
    invoke-static {}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getOldDeviceId()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    move-object v8, v0

    .line 23
    invoke-static/range {v6 .. v11}, Lcom/android/fileexplorer/encryption/EncryptUtil;->decryptFile(Landroid/app/Activity;ILcom/android/fileexplorer/encryption/PrivateFile;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 24
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14b

    .line 25
    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDecryptedFilePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_14a

    .line 26
    :cond_f8
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {v3}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$200(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v6

    const/4 v7, 0x2

    .line 27
    invoke-static {}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getOldDeviceId()Ljava/lang/String;

    move-result-object v9

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$image:Lcom/android/fileexplorer/model/FileWithExt;

    .line 28
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/model/Util;->getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move-object v8, v0

    .line 29
    invoke-static/range {v6 .. v11}, Lcom/android/fileexplorer/encryption/EncryptUtil;->decryptFile(Landroid/app/Activity;ILcom/android/fileexplorer/encryption/PrivateFile;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 30
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14b

    .line 31
    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->createLock(Ljava/lang/String;)Z

    .line 32
    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDecryptedFilePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_14a

    .line 33
    :cond_125
    new-instance p1, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 34
    :cond_12f
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$image:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v5}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_14a

    .line 35
    new-instance p1, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_14a
    :goto_14a
    move v5, v1

    :cond_14b
    if-nez v5, :cond_187

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_187

    .line 37
    :try_start_153
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v3, "Orientation"

    const/4 v6, 0x1

    .line 38
    invoke-virtual {v0, v3, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_174

    if-eq v0, v4, :cond_16f

    const/16 v2, 0x8

    if-eq v0, v2, :cond_16a

    .line 39
    iput v1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->mOrientation:I

    goto :goto_187

    :cond_16a
    const/16 v0, 0x10e

    .line 40
    iput v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->mOrientation:I

    goto :goto_187

    :cond_16f
    const/16 v0, 0x5a

    .line 41
    iput v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->mOrientation:I

    goto :goto_187

    :cond_174
    const/16 v0, 0xb4

    .line 42
    iput v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->mOrientation:I
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_178} :catch_179

    goto :goto_187

    :catch_179
    move-exception v0

    .line 43
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {v1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$100(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_187
    :goto_187
    new-instance v0, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Landroid/util/Pair;)V
    .registers 11
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
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$200(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v0, :cond_15

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

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
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$errorView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_bf

    .line 7
    :cond_39
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$errorView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$200(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    const v0, 0x7f110113

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_bf

    .line 10
    :cond_54
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$errorView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$200(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    const v0, 0x7f11046a

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_bf

    .line 13
    :cond_6f
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$errorView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$200(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2$1;-><init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_bf

    .line 16
    :cond_88
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$retView:Landroid/view/View;

    const v3, 0x7f0a01aa

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$retView:Landroid/view/View;

    const v1, 0x7f0a0361

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget v1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setOrientation(I)V

    .line 20
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->uri(Ljava/lang/String;)Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    move-result-object p1

    .line 21
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    iget v5, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$position:I

    iget-object v6, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$progressBar:Landroid/widget/ProgressBar;

    iget-object v7, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->val$errorView:Landroid/view/View;

    move-object v4, v0

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$300(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;ILandroid/widget/ProgressBar;Landroid/view/View;Lcom/android/fileexplorer/view/viewlarge/ImageSource;)V

    .line 22
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setImage(Lcom/android/fileexplorer/view/viewlarge/ImageSource;)V

    :goto_bf
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
