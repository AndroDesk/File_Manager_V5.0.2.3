.class public Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;
.super Ljava/lang/Object;
.source "AppTagFilePasteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;->sInstance:Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;

    .line 7
    invoke-direct {v0}, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;-><init>()V

    .line 10
    sput-object v0, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;->sInstance:Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;

    .line 12
    :cond_b
    sget-object v0, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;->sInstance:Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;

    .line 14
    return-object v0
.end method


# virtual methods
.method public pasteFile(Ljava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 9
    if-eqz p1, :cond_fb

    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_12

    .line 17
    goto/16 :goto_fb

    .line 19
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v3

    .line 33
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_37

    .line 39
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;

    .line 45
    iget-object v5, v4, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;->oldPath:Ljava/lang/String;

    .line 47
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v4, v4, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;->newPath:Ljava/lang/String;

    .line 52
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    goto :goto_20

    .line 56
    :cond_37
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3, v1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getFileItemByPath(Ljava/util/List;)Ljava/util/List;

    .line 63
    move-result-object v4

    .line 64
    if-nez v4, :cond_42

    .line 66
    return-void

    .line 67
    :cond_42
    if-eqz p2, :cond_67

    .line 69
    invoke-virtual {v3, v1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->deleteFileByPath(Ljava/util/List;)V

    .line 72
    new-instance p2, Ljava/util/ArrayList;

    .line 74
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 80
    move-result-object v1

    .line 81
    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_64

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    move-result-object v5

    .line 91
    check-cast v5, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 93
    invoke-virtual {v5}, Lcom/android/fileexplorer/dao/file/FileItem;->getId()Ljava/lang/Long;

    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    goto :goto_50

    .line 101
    :cond_64
    invoke-virtual {v3, p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->deleteFileGroupDetail(Ljava/util/List;)V

    .line 104
    :cond_67
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 107
    move-result p2

    .line 108
    if-nez p2, :cond_70

    .line 110
    invoke-virtual {v3, v2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->deleteFileByPath(Ljava/util/List;)V

    .line 113
    :cond_70
    new-instance p2, Ljava/util/ArrayList;

    .line 115
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 121
    move-result-object v1

    .line 122
    :cond_79
    :goto_79
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_ea

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 134
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 137
    move-result-object v3

    .line 138
    :cond_89
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_79

    .line 144
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    move-result-object v4

    .line 148
    check-cast v4, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;

    .line 150
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 153
    move-result-object v5

    .line 154
    iget-object v6, v4, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;->oldPath:Ljava/lang/String;

    .line 156
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_89

    .line 162
    new-instance v3, Ljava/io/File;

    .line 164
    iget-object v4, v4, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;->newPath:Ljava/lang/String;

    .line 166
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    new-instance v4, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 171
    invoke-direct {v4}, Lcom/android/fileexplorer/dao/file/FileItem;-><init>()V

    .line 174
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 177
    move-result-object v5

    .line 178
    invoke-virtual {v4, v5}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileName(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 184
    move-result-object v5

    .line 185
    invoke-virtual {v4, v5}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileCategoryType()Ljava/lang/Integer;

    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v4, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileCategoryType(Ljava/lang/Integer;)V

    .line 195
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 198
    move-result-wide v5

    .line 199
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v4, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileSize(Ljava/lang/Long;)V

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 209
    move-result-wide v5

    .line 210
    invoke-virtual {v3, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    .line 213
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 216
    move-result-object v2

    .line 217
    invoke-virtual {v4, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setModifyTime(Ljava/lang/Long;)V

    .line 220
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v4, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setParentDir(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    goto :goto_79

    .line 235
    :cond_ea
    const-string p1, " pasteFile step1 time = "

    .line 237
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 243
    move-result-object p1

    .line 244
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/apptag/MiFileListManager;->insertNewFiles(Ljava/util/List;)V

    .line 247
    const-string p1, " pasteFile step2 time = "

    .line 249
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 252
    :cond_fb
    :goto_fb
    return-void
.end method
