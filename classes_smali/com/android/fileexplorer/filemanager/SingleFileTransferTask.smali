.class public Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;
.super Ljava/lang/Object;
.source "SingleFileTransferTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SingleFileTransferTask"


# instance fields
.field private mDesFile:Ljava/io/File;

.field private mIDialogOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field private mIsMove:Z

.field private mParams:Lcom/android/fileexplorer/filemanager/FileTransferParams;

.field private mParentDF:Ls0/a;

.field private mResultCode:I

.field private mSrcFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/io/File;Ljava/io/File;ZLs0/a;Lcom/android/fileexplorer/filemanager/FileTransferParams;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mIDialogOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mSrcFile:Ljava/io/File;

    .line 8
    iput-object p3, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mDesFile:Ljava/io/File;

    .line 10
    iput-boolean p4, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mIsMove:Z

    .line 12
    iput-object p5, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mParentDF:Ls0/a;

    .line 14
    iput-object p6, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mParams:Lcom/android/fileexplorer/filemanager/FileTransferParams;

    .line 16
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mIDialogOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;)Lcom/android/fileexplorer/filemanager/FileTransferParams;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mParams:Lcom/android/fileexplorer/filemanager/FileTransferParams;

    .line 3
    return-object p0
.end method

.method private static copyFilePoorway(Ljava/util/concurrent/ThreadPoolExecutor;Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/concurrent/FutureTask;

    .line 3
    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 6
    sget-object p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->futureRes:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 14
    sget-object p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->futureRes:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result p0

    .line 20
    const/16 p1, 0x3e8

    .line 22
    if-le p0, p1, :cond_76

    .line 24
    sget-object p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->futureRes:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p0

    .line 30
    const-string p1, "rmfutureRes"

    .line 32
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object p1

    .line 36
    sget-object v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->futureRes:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    move-result v0

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 52
    :cond_33
    :goto_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_73

    .line 58
    :try_start_39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Ljava/util/concurrent/FutureTask;

    .line 64
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->isDone()Z

    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_33

    .line 70
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Ljava/util/concurrent/FutureTask;

    .line 76
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Ljava/lang/Integer;

    .line 82
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_6a

    .line 88
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Ljava/util/concurrent/FutureTask;

    .line 94
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Ljava/lang/Integer;

    .line 100
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 103
    move-result p1

    .line 104
    const/4 v0, 0x1

    .line 105
    if-ne p1, v0, :cond_33

    .line 107
    :cond_6a
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_6d} :catch_6e

    .line 110
    goto :goto_33

    .line 111
    :catch_6e
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    goto :goto_33

    .line 116
    :cond_73
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 119
    :cond_76
    return-void
.end method

.method private copySingleFileToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/io/File;Ljava/io/File;ZLs0/a;)I
    .registers 15

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "copyFile: file not exist or is directory, "

    .line 7
    const-string v2, "SingleFileTransferTask"

    .line 9
    if-nez v0, :cond_1e

    .line 11
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 p1, 0x6

    .line 30
    return p1

    .line 31
    :cond_1e
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_39

    .line 37
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/16 p1, 0xc

    .line 57
    return p1

    .line 58
    :cond_39
    const-string v0, "copySingleFileToLocal: from "

    .line 60
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, " to "

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :try_start_59
    invoke-virtual {p3}, Ljava/io/File;->isFile()Z

    .line 93
    move-result v0

    .line 94
    const/4 v1, 0x0

    .line 95
    if-eqz v0, :cond_e7

    .line 97
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_74

    .line 111
    const-string p1, "same folder copy"

    .line 113
    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return v1

    .line 117
    :cond_74
    const/4 v0, 0x5

    .line 118
    if-eqz p1, :cond_7e

    .line 120
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_7e

    .line 126
    return v0

    .line 127
    :cond_7e
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->isToAll()Z

    .line 134
    move-result v1

    .line 135
    if-nez v1, :cond_97

    .line 137
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 144
    move-result-object v2

    .line 145
    invoke-static {p1, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite2(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)I

    .line 148
    move-result p1

    .line 149
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setStatus(I)V

    .line 152
    :cond_97
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->getStatus()I

    .line 159
    move-result p1

    .line 160
    const/4 v1, 0x1

    .line 161
    if-eq p1, v1, :cond_c8

    .line 163
    const/4 v2, 0x2

    .line 164
    if-eq p1, v2, :cond_aa

    .line 166
    const/4 p2, 0x3

    .line 167
    if-eq p1, p2, :cond_a9

    .line 169
    return v0

    .line 170
    :cond_a9
    return v1

    .line 171
    :cond_aa
    invoke-static {p3}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    .line 174
    new-instance p1, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;

    .line 176
    move-object v2, p1

    .line 177
    move-object v3, p0

    .line 178
    move-object v4, p5

    .line 179
    move-object v5, p2

    .line 180
    move-object v6, p3

    .line 181
    move v7, p4

    .line 182
    invoke-direct/range {v2 .. v7}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;-><init>(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;Ls0/a;Ljava/io/File;Ljava/io/File;Z)V

    .line 185
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->call()Ljava/lang/Integer;

    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 192
    move-result p1

    .line 193
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 196
    move-result-object p2

    .line 197
    invoke-static {p2}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V

    .line 200
    return p1

    .line 201
    :cond_c8
    invoke-static {p3}, Lcom/android/fileexplorer/model/Util;->renameReal(Ljava/io/File;)Ljava/lang/String;

    .line 204
    move-result-object p1

    .line 205
    new-instance p3, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;

    .line 207
    new-instance v4, Ljava/io/File;

    .line 209
    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    move-object v0, p3

    .line 213
    move-object v1, p0

    .line 214
    move-object v2, p5

    .line 215
    move-object v3, p2

    .line 216
    move v5, p4

    .line 217
    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;-><init>(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;Ls0/a;Ljava/io/File;Ljava/io/File;Z)V

    .line 220
    invoke-virtual {p3}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->call()Ljava/lang/Integer;

    .line 223
    move-result-object p2

    .line 224
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 227
    move-result p2

    .line 228
    invoke-static {p1}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V

    .line 231
    return p2

    .line 232
    :cond_e7
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    .line 235
    move-result p1

    .line 236
    if-eqz p1, :cond_f0

    .line 238
    const/16 p1, 0xe

    .line 240
    return p1

    .line 241
    :cond_f0
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getInstance()Lcom/android/fileexplorer/util/ThreadPoolManager;

    .line 244
    move-result-object p1

    .line 245
    sget-object v0, Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;->COPY:Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;

    .line 247
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getPool(Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;)Ljava/util/concurrent/ExecutorService;

    .line 250
    move-result-object p1

    .line 251
    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 253
    new-instance v0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;

    .line 255
    move-object v3, v0

    .line 256
    move-object v4, p0

    .line 257
    move-object v5, p5

    .line 258
    move-object v6, p2

    .line 259
    move-object v7, p3

    .line 260
    move v8, p4

    .line 261
    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;-><init>(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;Ls0/a;Ljava/io/File;Ljava/io/File;Z)V

    .line 264
    iget-object p2, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mParams:Lcom/android/fileexplorer/filemanager/FileTransferParams;

    .line 266
    if-eqz p2, :cond_11c

    .line 268
    invoke-virtual {p2}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->getUseThreadPool()Z

    .line 271
    move-result p2

    .line 272
    if-eqz p2, :cond_11c

    .line 274
    if-nez p4, :cond_11c

    .line 276
    const-string p2, "multi thread"

    .line 278
    invoke-static {v2, p2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-static {p1, v0}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->copyFilePoorway(Ljava/util/concurrent/ThreadPoolExecutor;Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;)V

    .line 284
    goto :goto_129

    .line 285
    :cond_11c
    const-string p1, "single thread"

    .line 287
    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->call()Ljava/lang/Integer;

    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 297
    move-result v1
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_129} :catch_12a

    .line 298
    :goto_129
    return v1

    .line 299
    :catch_12a
    move-exception p1

    .line 300
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 303
    const/4 p1, 0x4

    .line 304
    return p1
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .registers 7

    .line 2
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mIDialogOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mSrcFile:Ljava/io/File;

    iget-object v3, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mDesFile:Ljava/io/File;

    iget-boolean v4, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mIsMove:Z

    iget-object v5, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mParentDF:Ls0/a;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->copySingleFileToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/io/File;Ljava/io/File;ZLs0/a;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
