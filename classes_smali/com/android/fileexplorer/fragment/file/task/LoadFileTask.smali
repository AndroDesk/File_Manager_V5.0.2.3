.class public Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;
.super Landroid/os/AsyncTask;
.source "LoadFileTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/android/fileexplorer/model/FileInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mFilter:Lcom/android/fileexplorer/util/FileNameExtFilter;

.field private final mListener:Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;

.field private final mPath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;

    const-string v0, "LoadFileTask"

    sput-object v0, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->mPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->mListener:Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;

    return-void
.end method

.method private getLocalFileList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocalFileList in path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a7

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_a7

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_34

    goto/16 :goto_a7

    :cond_34
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->mFilter:Lcom/android/fileexplorer/util/FileNameExtFilter;

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_91

    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_3f
    if-ge v3, v0, :cond_75

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->isPrivateFolder(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_52

    goto :goto_72

    :cond_52
    invoke-static {v5}, Lcom/android/fileexplorer/model/Util;->isNormalFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_72

    iget-object v5, p0, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->mFilter:Lcom/android/fileexplorer/util/FileNameExtFilter;

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v4

    iget-object v5, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    iput-boolean v2, v4, Lcom/android/fileexplorer/model/FileInfo;->canWrite:Z

    iput-boolean v2, v4, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    :cond_6b
    iget-boolean v5, v4, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    if-nez v5, :cond_72

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_72
    :goto_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :cond_75
    :try_start_75
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object p1

    invoke-static {}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->values()[Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    move-result-object v0

    iget v2, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    aget-object v0, v0, v2

    iget-boolean p1, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-static {v1, v0, p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->sort(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;Z)V
    :try_end_8c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_75 .. :try_end_8c} :catch_8d

    goto :goto_91

    :catch_8d
    move-exception p1

    invoke-static {p1}, Lcom/android/fileexplorer/model/Log;->getStackTraceString(Ljava/lang/Exception;)Ljava/lang/String;

    :cond_91
    :goto_91
    sget-object p1, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getLocalFileList end size = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a7
    :goto_a7
    return-object v1
.end method

.method private isPrivateFolder(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "FileExplorer"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->mPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->getLocalFileList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->mListener:Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;->onComplete(Ljava/util/List;)V

    :cond_a
    return-void
.end method

.method public setFilter(Lcom/android/fileexplorer/util/FileNameExtFilter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->mFilter:Lcom/android/fileexplorer/util/FileNameExtFilter;

    return-void
.end method
