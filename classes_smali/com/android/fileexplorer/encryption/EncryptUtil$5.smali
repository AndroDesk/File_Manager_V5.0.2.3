.class Lcom/android/fileexplorer/encryption/EncryptUtil$5;
.super Landroid/os/AsyncTask;
.source "EncryptUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/encryption/EncryptUtil;->operationRestoreFiles(Landroid/app/Activity;Ljava/util/ArrayList;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$5;->val$activity:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$5;->val$list:Ljava/util/ArrayList;

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

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 6

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$5;->val$list:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 3
    iget-object v2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$5;->val$activity:Landroid/app/Activity;

    instance-of v3, v2, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v3, :cond_22

    check-cast v2, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/android/fileexplorer/activity/BaseActivity;->isProgressCancelled()Z

    move-result v2

    if-eqz v2, :cond_22

    return-object v1

    .line 4
    :cond_22
    iget-object v1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$5;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->restoreFile(Landroid/content/Context;Lcom/android/fileexplorer/encryption/PrivateFile;)Ljava/util/List;

    goto :goto_6

    .line 5
    :cond_28
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isRestrictGetIMEI()Z

    move-result p1

    const v0, 0x7f110393

    if-eqz p1, :cond_36

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_36
    new-instance p1, Lcom/android/fileexplorer/encryption/FixCorrupt;

    iget-object v2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$5;->val$list:Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Lcom/android/fileexplorer/encryption/FixCorrupt;-><init>(Ljava/util/ArrayList;)V

    .line 8
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/FixCorrupt;->fix()I

    move-result p1

    if-eqz p1, :cond_55

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4d

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4d

    const/4 v2, 0x4

    if-eq p1, v2, :cond_55

    return-object v1

    :cond_4d
    const p1, 0x7f110394

    .line 9
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_55
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$5;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$5;->val$activity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v1, :cond_b

    .line 3
    check-cast v0, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/android/fileexplorer/activity/BaseActivity;->dismissProgress()V

    .line 4
    :cond_b
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$5;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110444

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1100eb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$5;->val$activity:Landroid/app/Activity;

    .line 3
    instance-of v1, v0, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 5
    if-eqz v1, :cond_e

    .line 7
    check-cast v0, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 9
    const v1, 0x7f11039b

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/activity/BaseActivity;->showLoadingDialog(I)V

    .line 15
    :cond_e
    return-void
.end method
