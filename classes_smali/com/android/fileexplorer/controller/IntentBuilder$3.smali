.class Lcom/android/fileexplorer/controller/IntentBuilder$3;
.super Landroid/os/AsyncTask;
.source "IntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/controller/IntentBuilder;->viewFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;ILjava/lang/String;ZLcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public final synthetic val$callback:Lcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;

.field public final synthetic val$currentPath:Ljava/lang/String;

.field public final synthetic val$extension:Ljava/lang/String;

.field public final synthetic val$fileList:Ljava/util/List;

.field public final synthetic val$fileWithExt:Lcom/android/fileexplorer/model/FileWithExt;

.field public final synthetic val$internal:Z

.field public final synthetic val$realName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/fileexplorer/model/FileWithExt;Lcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 9

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$extension:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$fileWithExt:Lcom/android/fileexplorer/model/FileWithExt;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$callback:Lcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;

    .line 7
    iput-object p4, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 9
    iput-boolean p5, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$internal:Z

    .line 11
    iput-object p6, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$realName:Ljava/lang/String;

    .line 13
    iput-object p7, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$currentPath:Ljava/lang/String;

    .line 15
    iput-object p8, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$fileList:Ljava/util/List;

    .line 17
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 5

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$extension:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "*/*"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$fileWithExt:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/MimeUtils;->getMimeTypeFromMediaDatabase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "application/octet-stream"

    .line 5
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$extension:Ljava/lang/String;

    const-string v2, "vob"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    move-object p1, v0

    :cond_2b
    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder$3;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .registers 8

    .line 2
    sget-object v0, Lcom/android/fileexplorer/controller/IntentBuilder;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$fileWithExt:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_29c

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto/16 :goto_29c

    .line 5
    :cond_1e
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    const-string v2, "IntentBuilder"

    if-eqz v1, :cond_28f

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isActivityFinish()Z

    move-result v1

    if-eqz v1, :cond_2c

    goto/16 :goto_28f

    .line 6
    :cond_2c
    iget-boolean v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$internal:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_7c

    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object v1

    iget-object v4, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$realName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/fileexplorer/model/ArchiveHelper;->checkIfArchive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid24AndLater()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-static {v0}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_4c

    :cond_48
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 8
    :goto_4c
    invoke-static {v0, p1, v3}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$100(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$200(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$300(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$callback:Lcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;

    if-eqz v0, :cond_66

    .line 12
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;->onPostExecute(Ljava/lang/String;)V

    :cond_66
    return-void

    .line 13
    :cond_67
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$fileWithExt:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$currentPath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$400(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$callback:Lcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;

    if-eqz v0, :cond_7b

    .line 15
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;->onPostExecute(Ljava/lang/String;)V

    :cond_7b
    return-void

    .line 16
    :cond_7c
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid24AndLater()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-static {v0}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_8b

    :cond_87
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 17
    :goto_8b
    iget-boolean v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$internal:Z

    if-eqz v1, :cond_c8

    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$extension:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/util/MimeUtils;->isBook(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 18
    invoke-static {v0, p1, v3}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$100(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$500(Landroid/content/Context;Landroid/content/Intent;)V

    .line 20
    invoke-static {v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$200(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_bd

    .line 21
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$extension:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/util/WpsSupportUtil;->checkIfWpsSupportFileType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 22
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$600(Landroid/app/Activity;Landroid/content/Intent;)V

    goto/16 :goto_287

    .line 23
    :cond_bd
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$700(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_287

    .line 24
    :cond_c8
    iget-boolean v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$internal:Z

    const-string v4, "image/"

    if-eqz v1, :cond_11e

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11e

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-static {v0, p1, v3}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$100(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 27
    invoke-static {v2}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$800(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {v2}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$900(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_fa

    const-string v3, "com.miui.gallery"

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fa

    .line 30
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$300(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_287

    .line 31
    :cond_fa
    iget-object v2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$fileList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$fileWithExt:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-static {v1, v2, v3}, Lcom/android/fileexplorer/controller/IntentBuilder;->prepareViewImageLists(Ljava/util/List;Ljava/util/List;Lcom/android/fileexplorer/model/FileWithExt;)I

    move-result v2

    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_113

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewImagesUsingGallery(Landroid/content/Context;Ljava/util/List;I)V

    goto/16 :goto_287

    .line 34
    :cond_113
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$300(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_287

    .line 35
    :cond_11e
    iget-boolean v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$internal:Z

    if-eqz v1, :cond_157

    const-string v1, "video/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_157

    .line 36
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$fileWithExt:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->isInVisibleVolume(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14c

    invoke-static {v0, p1, v3}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$100(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$200(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_141

    goto :goto_14c

    .line 37
    :cond_141
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$300(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_287

    .line 38
    :cond_14c
    :goto_14c
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1, v0, p1, v3}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$1000(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_287

    .line 39
    :cond_157
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$extension:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/util/MimeUtils;->guessFileTypeFromExtension(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1a0

    .line 40
    iget-boolean v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$internal:Z

    if-eqz v1, :cond_16d

    const-string v1, "music"

    const-string v2, "operation"

    const-string v3, "open"

    .line 41
    invoke-static {v1, v2, v3}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    :cond_16d
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$fileWithExt:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->isInVisibleVolume(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "audio/*"

    if-nez v1, :cond_186

    .line 43
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$1100(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_287

    .line 44
    :cond_186
    iget-boolean v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$internal:Z

    if-nez v1, :cond_195

    .line 45
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$1200(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_287

    .line 46
    :cond_195
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$300(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_287

    :cond_1a0
    const-string v1, "*/*"

    .line 47
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_265

    .line 48
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1be

    .line 49
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$fileWithExt:Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.android.fileexplorer.media.file.path"

    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_1be
    invoke-static {v0, p1, v3}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$100(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$500(Landroid/content/Context;Landroid/content/Intent;)V

    .line 53
    invoke-static {v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$200(Landroid/content/Intent;)Z

    move-result v1

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasDefaultResolvable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ";internal:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$internal:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ";extension:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$extension:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-boolean v2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$internal:Z

    const-string v3, "DocTest"

    if-eqz v2, :cond_225

    iget-object v2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$extension:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/fileexplorer/util/WpsSupportUtil;->checkIfWpsSupportFileType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_225

    if-nez v1, :cond_225

    const-string v1, "startWithWPS: "

    .line 56
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 57
    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$600(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_287

    .line 59
    :cond_225
    iget-boolean v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$internal:Z

    if-nez v1, :cond_247

    const-string v1, "startResolverActivity: "

    .line 60
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 61
    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$1300(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_287

    :cond_247
    const-string v1, "startViewIntent: "

    .line 63
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 64
    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$700(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_287

    .line 66
    :cond_265
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$realName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/util/WechatUtil;->isApk(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_280

    .line 67
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-static {v1, v0, v2}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$300(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$callback:Lcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;

    if-eqz v0, :cond_27f

    .line 69
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;->onPostExecute(Ljava/lang/String;)V

    :cond_27f
    return-void

    .line 70
    :cond_280
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$extension:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$1400(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Landroid/net/Uri;Ljava/lang/String;)V

    .line 71
    :goto_287
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$callback:Lcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;

    if-eqz v0, :cond_28e

    .line 72
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;->onPostExecute(Ljava/lang/String;)V

    :cond_28e
    return-void

    :cond_28f
    :goto_28f
    const-string v0, "onPostExecute: activity is null or destroyed"

    .line 73
    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$callback:Lcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;

    if-eqz v0, :cond_29b

    .line 75
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;->onPostExecute(Ljava/lang/String;)V

    :cond_29b
    return-void

    .line 76
    :cond_29c
    :goto_29c
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$3;->val$callback:Lcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;

    if-eqz v0, :cond_2a3

    .line 77
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;->onPostExecute(Ljava/lang/String;)V

    :cond_2a3
    return-void
.end method
