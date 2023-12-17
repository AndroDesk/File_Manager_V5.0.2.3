.class public Lcom/android/fileexplorer/fragment/file/task/LoadOwnerTask;
.super Ljava/lang/Object;
.source "LoadOwnerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_LANGUAGE:Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;

.field private final mSourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 3
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/fileexplorer/fragment/file/task/LoadOwnerTask;->DEFAULT_LANGUAGE:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/task/LoadOwnerTask;->mSourceList:Ljava/util/List;

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/file/task/LoadOwnerTask;->mCallback:Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/task/LoadOwnerTask;->mSourceList:Ljava/util/List;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/util/FavUtil;->getFavLocationByFileInfo(Ljava/util/List;)Ljava/util/HashSet;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/task/LoadOwnerTask;->mSourceList:Ljava/util/List;

    .line 14
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v2

    .line 18
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_3a

    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lcom/android/fileexplorer/model/FileInfo;

    .line 30
    iget-object v4, v3, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 32
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_26

    .line 38
    goto :goto_11

    .line 39
    :cond_26
    iget-boolean v4, v3, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 41
    if-eqz v4, :cond_2d

    .line 43
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_2d
    iget-object v4, v3, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 48
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 55
    move-result v4

    .line 56
    iput-boolean v4, v3, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 58
    goto :goto_11

    .line 59
    :cond_3a
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 61
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_94

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    .line 73
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object v1

    .line 80
    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_61

    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 92
    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    goto :goto_4f

    .line 98
    :cond_61
    :try_start_61
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 110
    invoke-static {}, Lcom/android/fileexplorer/service/DirParseSDK;->getInstance()Lcom/android/fileexplorer/service/DirParseSDK;

    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v2}, Lcom/android/fileexplorer/service/DirParseSDK;->getService()Lcom/android/fileexplorer/service/IDirParse;

    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_94

    .line 124
    if-eqz v2, :cond_94

    .line 126
    sget-object v3, Lcom/android/fileexplorer/fragment/file/task/LoadOwnerTask;->DEFAULT_LANGUAGE:Ljava/lang/String;

    .line 128
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_94

    .line 134
    new-instance v1, Lcom/android/fileexplorer/controller/WeakQueryCallBack;

    .line 136
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/file/task/LoadOwnerTask;->mCallback:Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;

    .line 138
    invoke-direct {v1, v3}, Lcom/android/fileexplorer/controller/WeakQueryCallBack;-><init>(Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;)V

    .line 141
    invoke-interface {v2, v0, v1}, Lcom/android/fileexplorer/service/IDirParse;->queryDirInfo(Ljava/util/List;Lcom/android/fileexplorer/service/IQueryCallBack;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_8f} :catch_90

    .line 144
    goto :goto_94

    .line 145
    :catch_90
    move-exception v0

    .line 146
    invoke-static {v0}, Lcom/android/fileexplorer/model/Log;->getStackTraceString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 149
    :cond_94
    :goto_94
    return-void
.end method

.method public start()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    return-void
.end method
