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

    .line 1
    const-class v0, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;

    .line 3
    const-string v0, "LoadFileTask"

    .line 5
    sput-object v0, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->LOG_TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->mPath:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->mListener:Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;

    .line 8
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

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->LOG_TAG:Ljava/lang/String;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v3, "getLocalFileList in path = "

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_a7

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_a7

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_34

    .line 51
    goto/16 :goto_a7

    .line 53
    :cond_34
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->mFilter:Lcom/android/fileexplorer/util/FileNameExtFilter;

    .line 55
    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_91

    .line 61
    array-length v0, p1

    .line 62
    const/4 v2, 0x0

    .line 63
    move v3, v2

    .line 64
    :goto_3f
    if-ge v3, v0, :cond_75

    .line 66
    aget-object v4, p1, v3

    .line 68
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 75
    move-result-object v6

    .line 76
    invoke-direct {p0, v6}, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->isPrivateFolder(Ljava/lang/String;)Z

    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_52

    .line 82
    goto :goto_72

    .line 83
    :cond_52
    invoke-static {v5}, Lcom/android/fileexplorer/model/Util;->isNormalFile(Ljava/lang/String;)Z

    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_72

    .line 89
    iget-object v5, p0, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->mFilter:Lcom/android/fileexplorer/util/FileNameExtFilter;

    .line 91
    const/4 v6, 0x1

    .line 92
    invoke-static {v4, v5, v6}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/model/FileInfo;

    .line 95
    move-result-object v4

    .line 96
    iget-object v5, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 98
    invoke-static {v5}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_6b

    .line 104
    iput-boolean v2, v4, Lcom/android/fileexplorer/model/FileInfo;->canWrite:Z

    .line 106
    iput-boolean v2, v4, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    .line 108
    :cond_6b
    iget-boolean v5, v4, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 110
    if-nez v5, :cond_72

    .line 112
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_72
    :goto_72
    add-int/lit8 v3, v3, 0x1

    .line 117
    goto :goto_3f

    .line 118
    :cond_75
    :try_start_75
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 120
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 127
    move-result-object p1

    .line 128
    invoke-static {}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->values()[Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 131
    move-result-object v0

    .line 132
    iget v2, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 134
    aget-object v0, v0, v2

    .line 136
    iget-boolean p1, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 138
    invoke-static {v1, v0, p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->sort(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;Z)V
    :try_end_8c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_75 .. :try_end_8c} :catch_8d

    .line 141
    goto :goto_91

    .line 142
    :catch_8d
    move-exception p1

    .line 143
    invoke-static {p1}, Lcom/android/fileexplorer/model/Log;->getStackTraceString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 146
    :cond_91
    :goto_91
    sget-object p1, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->LOG_TAG:Ljava/lang/String;

    .line 148
    const-string v0, "getLocalFileList end size = "

    .line 150
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 157
    move-result v2

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v0

    .line 165
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_a7
    :goto_a7
    return-object v1
.end method

.method private isPrivateFolder(Ljava/lang/String;)Z
    .registers 3

    .line 1
    const-string v0, "FileExplorer"

    .line 3
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
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

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->mPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->getLocalFileList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
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

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->mListener:Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;

    if-eqz v0, :cond_a

    .line 4
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;->onComplete(Ljava/util/List;)V

    :cond_a
    return-void
.end method

.method public setFilter(Lcom/android/fileexplorer/util/FileNameExtFilter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->mFilter:Lcom/android/fileexplorer/util/FileNameExtFilter;

    .line 3
    return-void
.end method
