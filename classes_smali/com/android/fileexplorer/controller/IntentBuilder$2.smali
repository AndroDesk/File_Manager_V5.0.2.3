.class Lcom/android/fileexplorer/controller/IntentBuilder$2;
.super Landroid/os/AsyncTask;
.source "IntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/controller/IntentBuilder;->viewSmbInLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljcifs/smb/SmbFile;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public final synthetic val$cacheFile:Ljava/io/File;

.field public final synthetic val$file:Ljcifs/smb/SmbFile;

.field public final synthetic val$internal:Z


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljcifs/smb/SmbFile;Ljava/io/File;Z)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$2;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$2;->val$file:Ljcifs/smb/SmbFile;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/controller/IntentBuilder$2;->val$cacheFile:Ljava/io/File;

    .line 7
    iput-boolean p4, p0, Lcom/android/fileexplorer/controller/IntentBuilder$2;->val$internal:Z

    .line 9
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 7

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$2;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz p1, :cond_e

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$2;->val$file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setProgressMax(J)V

    .line 4
    :cond_e
    iget-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$2;->val$cacheFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$2;->val$cacheFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$2;->val$file:Ljcifs/smb/SmbFile;

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getContentLength()I

    move-result p1

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_2d

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2d
    const/4 p1, 0x4

    const/4 v0, 0x0

    .line 6
    :try_start_2f
    new-instance v1, Ljcifs/smb/SmbFileInputStream;

    iget-object v2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$2;->val$file:Ljcifs/smb/SmbFile;

    invoke-direct {v1, v2}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_57
    .catchall {:try_start_2f .. :try_end_36} :catchall_54

    .line 7
    :try_start_36
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/fileexplorer/controller/IntentBuilder$2;->val$cacheFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3d} :catch_4f
    .catchall {:try_start_36 .. :try_end_3d} :catchall_4c

    .line 8
    :try_start_3d
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$2;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    const/16 v3, 0x4000

    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    move-result p1
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_49} :catch_4a
    .catchall {:try_start_3d .. :try_end_49} :catchall_69

    goto :goto_5e

    :catch_4a
    move-exception v0

    goto :goto_5b

    :catchall_4c
    move-exception p1

    move-object v2, v0

    goto :goto_6a

    :catch_4f
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_5b

    :catchall_54
    move-exception p1

    move-object v2, v0

    goto :goto_6b

    :catch_57
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 9
    :goto_5b
    :try_start_5b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_69

    .line 10
    :goto_5e
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 11
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catchall_69
    move-exception p1

    :goto_6a
    move-object v0, v1

    .line 13
    :goto_6b
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 14
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 15
    throw p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$2;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz v0, :cond_52

    .line 3
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->dismissProgress()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$2;->val$cacheFile:Ljava/io/File;

    if-eqz v1, :cond_37

    .line 6
    new-instance p1, Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/fileexplorer/controller/IntentBuilder$2;->val$cacheFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v1, v3}, Lcom/android/fileexplorer/model/FileWithExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$2;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-boolean v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$2;->val$internal:Z

    const-string v3, ""

    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;ILjava/lang/String;Z)V

    goto :goto_52

    .line 9
    :cond_37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_52

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$2;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    const v0, 0x7f1100ee

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_52
    :goto_52
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder$2;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$2;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    const v1, 0x7f1103d5

    .line 8
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showProgressDialog(I)V

    .line 11
    :cond_a
    return-void
.end method
