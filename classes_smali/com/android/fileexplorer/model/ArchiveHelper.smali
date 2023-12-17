.class public Lcom/android/fileexplorer/model/ArchiveHelper;
.super Ljava/lang/Object;
.source "ArchiveHelper.java"


# static fields
.field private static final ARCHIVE_EXTENSIONS_SET:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ArchiveHelper"

.field private static final RAR_ARCHIVE_EXTENSION:Ljava/lang/String; = "rar"

.field private static final TAG:Ljava/lang/String; = "ArchiveHelper"

.field private static final ZIP_ARCHIVE_EXTENSION:Ljava/lang/String; = "zip"

.field private static final ZIP_PWD_ERROR_MSG:Ljava/lang/String; = "wrong password"

.field private static ourInstance:Lcom/android/fileexplorer/model/ArchiveHelper;


# instance fields
.field private mArchivePath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/model/ArchiveHelper;->ARCHIVE_EXTENSIONS_SET:Ljava/util/HashSet;

    .line 8
    const-string v1, "zip"

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    const-string v1, "rar"

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v0, Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 20
    invoke-direct {v0}, Lcom/android/fileexplorer/model/ArchiveHelper;-><init>()V

    .line 23
    sput-object v0, Lcom/android/fileexplorer/model/ArchiveHelper;->ourInstance:Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 25
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method private createDirectory(Lcom/junrar/rarfile/FileHeader;Ljava/lang/String;)I
    .registers 7

    .line 1
    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->isDirectory()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "/"

    .line 8
    const-string v3, "\\\\"

    .line 10
    if-eqz v0, :cond_31

    .line 12
    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->isUnicode()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_31

    .line 18
    new-instance v0, Ljava/io/File;

    .line 20
    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->getFileNameW()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_28

    .line 37
    array-length p1, p1

    .line 38
    if-lez p1, :cond_28

    .line 40
    return v1

    .line 41
    :cond_28
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->mkDir(Ljava/lang/String;)I

    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    :cond_31
    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->isDirectory()Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_5d

    .line 56
    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->isUnicode()Z

    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_5d

    .line 62
    new-instance v0, Ljava/io/File;

    .line 64
    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_54

    .line 81
    array-length p1, p1

    .line 82
    if-lez p1, :cond_54

    .line 84
    return v1

    .line 85
    :cond_54
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->mkDir(Ljava/lang/String;)I

    .line 92
    move-result p1

    .line 93
    return p1

    .line 94
    :cond_5d
    sget-object p1, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    .line 96
    const-string p2, "fh is not a directory"

    .line 98
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 p1, 0x4

    .line 102
    return p1
.end method

.method private createFile(Lcom/junrar/rarfile/FileHeader;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->isFileHeader()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_11

    .line 7
    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->isUnicode()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_11

    .line 13
    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->getFileNameW()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    goto :goto_15

    .line 18
    :cond_11
    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    :goto_15
    new-instance v0, Ljava/io/File;

    .line 24
    const-string v1, "\\\\"

    .line 26
    const-string v2, "/"

    .line 28
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_46

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_3b

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_3b

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->mkDir(Ljava/lang/String;)I

    .line 60
    :cond_3b
    invoke-static {p2}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->mkDir(Ljava/lang/String;)I

    .line 63
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    .line 66
    goto :goto_46

    .line 67
    :catch_42
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    :cond_46
    :goto_46
    return-object v0
.end method

.method private decompressRarArchive(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1
    const-string p4, "ArchiveHelper"

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 p1, 0x2

    .line 10
    return p1

    .line 11
    :cond_a
    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/ArchiveHelper;->getArchiveRootDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0xf

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x4

    .line 19
    :try_start_12
    new-instance v4, Lcom/junrar/Archive;

    .line 21
    new-instance v5, Ljava/io/File;

    .line 23
    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-direct {v4, v5}, Lcom/junrar/Archive;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Lcom/junrar/exception/RarException; {:try_start_12 .. :try_end_1c} :catch_181
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_176
    .catchall {:try_start_12 .. :try_end_1c} :catchall_174

    .line 29
    :try_start_1c
    invoke-virtual {v4}, Lcom/junrar/Archive;->isEncrypted()Z

    .line 32
    move-result p2
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_20} :catch_16a
    .catch Lcom/junrar/exception/RarException; {:try_start_1c .. :try_end_20} :catch_167
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_20} :catch_164
    .catchall {:try_start_1c .. :try_end_20} :catchall_161

    .line 33
    const-string v5, "archive is encrypted cannot extreact"

    .line 35
    if-eqz p2, :cond_2b

    .line 37
    :try_start_24
    invoke-static {p4, v5}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/NullPointerException; {:try_start_24 .. :try_end_27} :catch_16a
    .catch Lcom/junrar/exception/RarException; {:try_start_24 .. :try_end_27} :catch_167
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_164
    .catchall {:try_start_24 .. :try_end_27} :catchall_161

    .line 40
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 43
    return v1

    .line 44
    :cond_2b
    const-wide/16 v6, 0x0

    .line 46
    :try_start_2d
    invoke-virtual {v4}, Lcom/junrar/Archive;->getFileHeaders()Ljava/util/List;

    .line 49
    move-result-object p2

    .line 50
    if-eqz p2, :cond_4b

    .line 52
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object p2

    .line 56
    :cond_37
    :goto_37
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v8

    .line 60
    if-eqz v8, :cond_4b

    .line 62
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v8

    .line 66
    check-cast v8, Lcom/junrar/rarfile/FileHeader;

    .line 68
    if-eqz v8, :cond_37

    .line 70
    invoke-virtual {v8}, Lcom/junrar/rarfile/FileHeader;->getFullUnpackSize()J

    .line 73
    move-result-wide v8

    .line 74
    add-long/2addr v6, v8

    .line 75
    goto :goto_37

    .line 76
    :cond_4b
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/model/StorageHelper;->destVolumeFreeSpace(Ljava/lang/String;)J

    .line 83
    move-result-wide p2

    .line 84
    cmp-long p2, p2, v6

    .line 86
    if-gez p2, :cond_61

    .line 88
    const-string p1, "extract space not enough"

    .line 90
    invoke-static {p4, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Lcom/junrar/exception/RarException; {:try_start_2d .. :try_end_5c} :catch_167
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_5c} :catch_164
    .catchall {:try_start_2d .. :try_end_5c} :catchall_161

    .line 93
    const/4 p1, 0x3

    .line 94
    :goto_5d
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 97
    return p1

    .line 98
    :cond_61
    :try_start_61
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->mkDir(Ljava/lang/String;)I

    .line 101
    move-result p2
    :try_end_65
    .catch Lcom/junrar/exception/RarException; {:try_start_61 .. :try_end_65} :catch_167
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_65} :catch_164
    .catchall {:try_start_61 .. :try_end_65} :catchall_161

    .line 102
    if-eqz p2, :cond_6b

    .line 104
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 107
    return p2

    .line 108
    :cond_6b
    :try_start_6b
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 111
    move-result-object p2

    .line 112
    check-cast p2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 114
    if-eqz p2, :cond_76

    .line 116
    invoke-interface {p2, v6, v7}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setProgressMax(J)V

    .line 119
    :cond_76
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/lang/String;)Z

    .line 122
    move-result p2

    .line 123
    move-object p3, v2

    .line 124
    :goto_7b
    invoke-virtual {v4}, Lcom/junrar/Archive;->nextFileHeader()Lcom/junrar/rarfile/FileHeader;

    .line 127
    move-result-object v6

    .line 128
    if-nez v6, :cond_86

    .line 130
    invoke-static {v0}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V

    .line 133
    const/4 p1, 0x0

    .line 134
    goto :goto_5d

    .line 135
    :cond_86
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 138
    move-result-object v7

    .line 139
    check-cast v7, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 141
    if-eqz v7, :cond_a0

    .line 143
    invoke-virtual {v6}, Lcom/junrar/rarfile/FileHeader;->getFullUnpackSize()J

    .line 146
    move-result-wide v8

    .line 147
    invoke-interface {v7, v8, v9}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->increaseProgressBy(J)V

    .line 150
    invoke-interface {v7}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 153
    move-result v7

    .line 154
    if-eqz v7, :cond_a0

    .line 156
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->deleteExtractedFiles(Ljava/lang/String;)V

    .line 159
    const/4 p1, 0x5

    .line 160
    goto :goto_5d

    .line 161
    :cond_a0
    invoke-virtual {v6}, Lcom/junrar/rarfile/FileHeader;->isEncrypted()Z

    .line 164
    move-result v7

    .line 165
    if-eqz v7, :cond_c3

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    .line 169
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v6}, Lcom/junrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    .line 178
    move-result-object p2

    .line 179
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object p1

    .line 186
    invoke-static {p4, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->deleteExtractedFiles(Ljava/lang/String;)V
    :try_end_bf
    .catch Lcom/junrar/exception/RarException; {:try_start_6b .. :try_end_bf} :catch_167
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_bf} :catch_164
    .catchall {:try_start_6b .. :try_end_bf} :catchall_161

    .line 192
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 195
    return v1

    .line 196
    :cond_c3
    :try_start_c3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 198
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    const-string v8, "extracting: "

    .line 203
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v6}, Lcom/junrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    .line 209
    move-result-object v8

    .line 210
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object v7

    .line 217
    invoke-static {p4, v7}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_db
    .catch Lcom/junrar/exception/RarException; {:try_start_c3 .. :try_end_db} :catch_167
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_db} :catch_164
    .catchall {:try_start_c3 .. :try_end_db} :catchall_161

    .line 220
    :try_start_db
    invoke-virtual {v6}, Lcom/junrar/rarfile/FileHeader;->isDirectory()Z

    .line 223
    move-result v7

    .line 224
    if-eqz v7, :cond_f6

    .line 226
    invoke-direct {p0, v6, v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->createDirectory(Lcom/junrar/rarfile/FileHeader;Ljava/lang/String;)I

    .line 229
    move-result v6
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e5} :catch_135
    .catchall {:try_start_db .. :try_end_e5} :catchall_11c

    .line 230
    if-eqz v6, :cond_f4

    .line 232
    const/4 v7, 0x1

    .line 233
    if-eq v6, v7, :cond_f4

    .line 235
    :try_start_ea
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 238
    invoke-static {p3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_f0
    .catch Lcom/junrar/exception/RarException; {:try_start_ea .. :try_end_f0} :catch_167
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_f0} :catch_164
    .catchall {:try_start_ea .. :try_end_f0} :catchall_161

    .line 241
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 244
    return v6

    .line 245
    :cond_f4
    move-object v7, v2

    .line 246
    goto :goto_127

    .line 247
    :cond_f6
    :try_start_f6
    invoke-direct {p0, v6, v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->createFile(Lcom/junrar/rarfile/FileHeader;Ljava/lang/String;)Ljava/io/File;

    .line 250
    move-result-object v7

    .line 251
    if-eqz p2, :cond_11e

    .line 253
    invoke-static {v7}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentFile(Ljava/io/File;)Ls0/a;

    .line 256
    move-result-object v7

    .line 257
    check-cast v7, Ls0/c;

    .line 259
    iget-object v7, v7, Ls0/c;->c:Landroid/net/Uri;

    .line 261
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 264
    move-result-object v8

    .line 265
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 268
    move-result-object v8

    .line 269
    const-string v9, "rw"

    .line 271
    invoke-virtual {v8, v7, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 274
    move-result-object p3

    .line 275
    new-instance v7, Ljava/io/FileOutputStream;

    .line 277
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 280
    move-result-object v8

    .line 281
    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 284
    goto :goto_124

    .line 285
    :catchall_11c
    move-exception p1

    .line 286
    goto :goto_15a

    .line 287
    :cond_11e
    new-instance v8, Ljava/io/FileOutputStream;

    .line 289
    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_123} :catch_135
    .catchall {:try_start_f6 .. :try_end_123} :catchall_11c

    .line 292
    move-object v7, v8

    .line 293
    :goto_124
    :try_start_124
    invoke-virtual {v4, v6, v7}, Lcom/junrar/Archive;->extractFile(Lcom/junrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_127} :catch_132
    .catchall {:try_start_124 .. :try_end_127} :catchall_12f

    .line 296
    :goto_127
    :try_start_127
    invoke-static {v7}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 299
    invoke-static {p3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_12d
    .catch Lcom/junrar/exception/RarException; {:try_start_127 .. :try_end_12d} :catch_167
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_12d} :catch_164
    .catchall {:try_start_127 .. :try_end_12d} :catchall_161

    .line 302
    goto/16 :goto_7b

    .line 304
    :catchall_12f
    move-exception p1

    .line 305
    move-object v2, v7

    .line 306
    goto :goto_15a

    .line 307
    :catch_132
    move-exception p1

    .line 308
    move-object v2, v7

    .line 309
    goto :goto_136

    .line 310
    :catch_135
    move-exception p1

    .line 311
    :goto_136
    :try_start_136
    sget-object p2, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    .line 313
    new-instance p4, Ljava/lang/StringBuilder;

    .line 315
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    const-string v5, "decompressRarArchive error: "

    .line 320
    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 326
    move-result-object p1

    .line 327
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    move-result-object p1

    .line 334
    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_150
    .catchall {:try_start_136 .. :try_end_150} :catchall_11c

    .line 337
    :try_start_150
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 340
    invoke-static {p3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_156
    .catch Lcom/junrar/exception/RarException; {:try_start_150 .. :try_end_156} :catch_167
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_156} :catch_164
    .catchall {:try_start_150 .. :try_end_156} :catchall_161

    .line 343
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 346
    return v3

    .line 347
    :goto_15a
    :try_start_15a
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 350
    invoke-static {p3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 353
    throw p1

    .line 354
    :catchall_161
    move-exception p1

    .line 355
    move-object v2, v4

    .line 356
    goto :goto_196

    .line 357
    :catch_164
    move-exception p1

    .line 358
    move-object v2, v4

    .line 359
    goto :goto_177

    .line 360
    :catch_167
    move-exception p1

    .line 361
    move-object v2, v4

    .line 362
    goto :goto_182

    .line 363
    :catch_16a
    move-exception p1

    .line 364
    const-string p2, "mainheader is null"

    .line 366
    invoke-static {p4, p2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_170
    .catch Lcom/junrar/exception/RarException; {:try_start_15a .. :try_end_170} :catch_167
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_170} :catch_164
    .catchall {:try_start_15a .. :try_end_170} :catchall_161

    .line 369
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 372
    return v3

    .line 373
    :catchall_174
    move-exception p1

    .line 374
    goto :goto_196

    .line 375
    :catch_176
    move-exception p1

    .line 376
    :goto_177
    :try_start_177
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 379
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->deleteExtractedFiles(Ljava/lang/String;)V
    :try_end_17d
    .catchall {:try_start_177 .. :try_end_17d} :catchall_174

    .line 382
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 385
    return v3

    .line 386
    :catch_181
    move-exception p1

    .line 387
    :goto_182
    :try_start_182
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 390
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->deleteExtractedFiles(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1}, Lcom/junrar/exception/RarException;->getType()Lcom/junrar/exception/RarException$RarExceptionType;

    .line 396
    move-result-object p1

    .line 397
    sget-object p2, Lcom/junrar/exception/RarException$RarExceptionType;->rarEncryptedException:Lcom/junrar/exception/RarException$RarExceptionType;
    :try_end_18e
    .catchall {:try_start_182 .. :try_end_18e} :catchall_174

    .line 399
    if-ne p1, p2, :cond_191

    .line 401
    goto :goto_192

    .line 402
    :cond_191
    move v1, v3

    .line 403
    :goto_192
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 406
    return v1

    .line 407
    :goto_196
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 410
    throw p1
.end method

.method private decompressZipArchive(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1
    const-string v0, "error extract zip file"

    .line 3
    const-string v1, "ArchiveHelper"

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_13

    .line 11
    sget-object p1, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    .line 13
    const-string p2, "decompressZipArchive invalid path"

    .line 15
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const/4 p1, 0x2

    .line 19
    return p1

    .line 20
    :cond_13
    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/ArchiveHelper;->getArchiveRootDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p3

    .line 24
    const/16 v2, 0xd

    .line 26
    const/4 v3, 0x4

    .line 27
    :try_start_1a
    new-instance v4, Lf4/a;

    .line 29
    invoke-direct {v4, p2}, Lf4/a;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v4}, Lf4/a;->l()Z

    .line 35
    move-result p2

    .line 36
    if-nez p2, :cond_2f

    .line 38
    sget-object p1, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    .line 40
    const-string p2, "decompressZipArchive invalid format"

    .line 42
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/16 p1, 0xc

    .line 47
    return p1

    .line 48
    :cond_2f
    invoke-virtual {v4}, Lf4/a;->k()Z

    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_4a

    .line 54
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_42

    .line 60
    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    .line 63
    move-result-object p2

    .line 64
    iput-object p2, v4, Lf4/a;->e:[C

    .line 66
    goto :goto_4a

    .line 67
    :cond_42
    sget-object p1, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    .line 69
    const-string p2, "decompressZipArchive invalied pass"

    .line 71
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return v2

    .line 75
    :cond_4a
    :goto_4a
    invoke-virtual {v4}, Lf4/a;->m()V

    .line 78
    iget-object p2, v4, Lf4/a;->b:Lm4/n;

    .line 80
    if-eqz p2, :cond_5b

    .line 82
    iget-object p2, p2, Lm4/n;->b:Lo1/a;

    .line 84
    if-nez p2, :cond_56

    .line 86
    goto :goto_5b

    .line 87
    :cond_56
    iget-object p2, p2, Lo1/a;->b:Ljava/lang/Object;

    .line 89
    check-cast p2, Ljava/util/List;

    .line 91
    goto :goto_5f

    .line 92
    :cond_5b
    :goto_5b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 95
    move-result-object p2

    .line 96
    :goto_5f
    const-wide/16 v5, 0x0

    .line 98
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 101
    move-result-object p4

    .line 102
    :cond_65
    :goto_65
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_9c

    .line 108
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Lm4/g;

    .line 114
    iget-object v8, v7, Lm4/b;->k:Ljava/lang/String;

    .line 116
    invoke-static {v8}, Lcom/android/fileexplorer/apptag/FileUtils;->isValidFatFilename(Ljava/lang/String;)Z

    .line 119
    move-result v8

    .line 120
    if-nez v8, :cond_94

    .line 122
    sget-object p1, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    const-string p4, "fileName error:"

    .line 131
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object p4, v7, Lm4/b;->k:Ljava/lang/String;

    .line 136
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object p2

    .line 143
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/16 p1, 0x1a

    .line 148
    return p1

    .line 149
    :cond_94
    iget-boolean v8, v7, Lm4/b;->s:Z

    .line 151
    if-nez v8, :cond_65

    .line 153
    iget-wide v7, v7, Lm4/b;->h:J

    .line 155
    add-long/2addr v5, v7

    .line 156
    goto :goto_65

    .line 157
    :cond_9c
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 160
    move-result-object p4

    .line 161
    invoke-virtual {p4, p3}, Lcom/android/fileexplorer/model/StorageHelper;->destVolumeFreeSpace(Ljava/lang/String;)J

    .line 164
    move-result-wide v7

    .line 165
    cmp-long p4, v7, v5

    .line 167
    if-gez p4, :cond_b1

    .line 169
    sget-object p1, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    .line 171
    const-string p2, "decompressZipArchive not enough space"

    .line 173
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 p1, 0x3

    .line 177
    return p1

    .line 178
    :cond_b1
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 181
    move-result-object p4

    .line 182
    check-cast p4, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 184
    if-eqz p4, :cond_bc

    .line 186
    invoke-interface {p4, v5, v6}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setProgressMax(J)V

    .line 189
    :cond_bc
    invoke-static {p3}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->mkDir(Ljava/lang/String;)I

    .line 192
    move-result p4

    .line 193
    if-eqz p4, :cond_ca

    .line 195
    sget-object p1, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    .line 197
    const-string p2, "decompressZipArchive create root dir failed"

    .line 199
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return p4

    .line 203
    :cond_ca
    iget-object p4, v4, Lf4/a;->d:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 205
    new-instance v5, Lcom/android/fileexplorer/model/ArchiveHelper$1;

    .line 207
    invoke-direct {v5, p0, p1, p4}, Lcom/android/fileexplorer/model/ArchiveHelper$1;-><init>(Lcom/android/fileexplorer/model/ArchiveHelper;Ljava/lang/ref/WeakReference;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 210
    invoke-static {v5}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    .line 213
    invoke-static {p3}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/lang/String;)Z

    .line 216
    move-result p4

    .line 217
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 220
    move-result-object p2

    .line 221
    :cond_dc
    :goto_dc
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    move-result v5

    .line 225
    if-eqz v5, :cond_18a

    .line 227
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    move-result-object v5

    .line 231
    check-cast v5, Lm4/g;

    .line 233
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 236
    move-result-object v6

    .line 237
    check-cast v6, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 239
    if-eqz v6, :cond_fb

    .line 241
    invoke-interface {v6}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 244
    move-result v7

    .line 245
    if-eqz v7, :cond_fb

    .line 247
    invoke-direct {p0, p3}, Lcom/android/fileexplorer/model/ArchiveHelper;->deleteExtractedFiles(Ljava/lang/String;)V

    .line 250
    const/4 p1, 0x5

    .line 251
    return p1

    .line 252
    :cond_fb
    iget-boolean v7, v5, Lm4/b;->q:Z

    .line 254
    if-eqz v7, :cond_109

    .line 256
    iget-object v7, v5, Lm4/b;->k:Ljava/lang/String;

    .line 258
    sget-object v8, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    .line 260
    const-string v9, "decompressZipArchive: utf8"

    .line 262
    invoke-static {v8, v9}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    goto :goto_118

    .line 266
    :cond_109
    new-instance v7, Ljava/lang/String;

    .line 268
    iget-object v8, v5, Lm4/b;->k:Ljava/lang/String;

    .line 270
    const-string v9, "Cp850"

    .line 272
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 275
    move-result-object v8

    .line 276
    const-string v9, "GBK"

    .line 278
    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 281
    :goto_118
    const-string v8, "(/[.]{2})*"

    .line 283
    const-string v9, ""

    .line 285
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    move-result-object v7

    .line 289
    iput-object v7, v5, Lm4/b;->k:Ljava/lang/String;

    .line 291
    new-instance v8, Ljava/io/File;

    .line 293
    invoke-direct {v8, p3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 299
    move-result-object v7

    .line 300
    if-eqz p4, :cond_166

    .line 302
    iget-boolean v7, v5, Lm4/b;->s:Z
    :try_end_12f
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1a .. :try_end_12f} :catch_19b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_12f} :catch_18f

    .line 304
    if-nez v7, :cond_15d

    .line 306
    :try_start_131
    invoke-virtual {v4, v5}, Lf4/a;->h(Lm4/g;)Lk4/k;

    .line 309
    move-result-object v5

    .line 310
    invoke-interface {v6}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 313
    move-result-object v6

    .line 314
    const/4 v7, 0x1

    .line 315
    const v9, 0x8000

    .line 318
    invoke-static {v6, v5, v8, v7, v9}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeDocumentFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/File;ZI)I
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_140} :catch_141

    .line 321
    goto :goto_dc

    .line 322
    :catch_141
    move-exception p1

    .line 323
    :try_start_142
    sget-object p2, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    .line 325
    new-instance p4, Ljava/lang/StringBuilder;

    .line 327
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    const-string v4, "decompressZipArchive writeDocumentFile error:"

    .line 332
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 338
    move-result-object p1

    .line 339
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    move-result-object p1

    .line 346
    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return v3

    .line 350
    :cond_15d
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 353
    move-result-object v5

    .line 354
    invoke-static {v5}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->mkDir(Ljava/lang/String;)I

    .line 357
    goto/16 :goto_dc

    .line 359
    :cond_166
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 362
    move-result v9

    .line 363
    if-nez v9, :cond_16f

    .line 365
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 368
    :cond_16f
    iget-boolean v7, v5, Lm4/b;->s:Z

    .line 370
    if-nez v7, :cond_17f

    .line 372
    invoke-virtual {v4, v5, p3}, Lf4/a;->g(Lm4/g;Ljava/lang/String;)V

    .line 375
    if-eqz v6, :cond_dc

    .line 377
    iget-wide v7, v5, Lm4/b;->h:J

    .line 379
    invoke-interface {v6, v7, v8}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->increaseProgressBy(J)V

    .line 382
    goto/16 :goto_dc

    .line 384
    :cond_17f
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 387
    move-result v5

    .line 388
    if-nez v5, :cond_dc

    .line 390
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 393
    goto/16 :goto_dc

    .line 395
    :cond_18a
    invoke-static {p3}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V
    :try_end_18d
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_142 .. :try_end_18d} :catch_19b
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_18d} :catch_18f

    .line 398
    const/4 p1, 0x0

    .line 399
    return p1

    .line 400
    :catch_18f
    move-exception p1

    .line 401
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    move-result-object p2

    .line 405
    invoke-static {p1, p2, v1}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 408
    invoke-direct {p0, p3}, Lcom/android/fileexplorer/model/ArchiveHelper;->deleteExtractedFiles(Ljava/lang/String;)V

    .line 411
    return v3

    .line 412
    :catch_19b
    move-exception p1

    .line 413
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    move-result-object p2

    .line 417
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 420
    move-result-object p4

    .line 421
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    move-result-object p2

    .line 428
    invoke-static {v1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-direct {p0, p3}, Lcom/android/fileexplorer/model/ArchiveHelper;->deleteExtractedFiles(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p1}, Lnet/lingala/zip4j/exception/ZipException;->getType()Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 437
    move-result-object p2

    .line 438
    sget-object p3, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 440
    if-eq p2, p3, :cond_1d1

    .line 442
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 445
    move-result-object p2

    .line 446
    if-eqz p2, :cond_1d0

    .line 448
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 451
    move-result-object p1

    .line 452
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 455
    move-result-object p1

    .line 456
    const-string p2, "wrong password"

    .line 458
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 461
    move-result p1

    .line 462
    if-eqz p1, :cond_1d0

    .line 464
    goto :goto_1d1

    .line 465
    :cond_1d0
    move v2, v3

    .line 466
    :cond_1d1
    :goto_1d1
    return v2
.end method

.method private deleteExtractedFiles(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_e

    .line 12
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    .line 15
    :cond_e
    return-void
.end method

.method public static getArchiveRootDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/io/File;

    .line 7
    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static getArchiveRootFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/io/File;

    .line 7
    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-object v0
.end method

.method public static getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/ArchiveHelper;->ourInstance:Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 3
    return-object v0
.end method

.method private unZipSmbFile(Landroid/content/Context;Ljava/lang/String;)I
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 p1, 0x2

    .line 10
    return p1

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    const-string v1, "zip"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1b

    .line 25
    const/16 p1, 0xc

    .line 27
    return p1

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    .line 30
    invoke-static {v0, p2}, Lcom/android/fileexplorer/model/ArchiveHelper;->getArchiveRootDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 34
    const/4 v0, 0x4

    .line 35
    :try_start_22
    new-instance v1, Ljcifs/smb/SmbFile;

    .line 37
    iget-object v2, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    .line 39
    invoke-direct {v1, v2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2, p2}, Lcom/android/fileexplorer/model/StorageHelper;->destVolumeFreeSpace(Ljava/lang/String;)J

    .line 49
    move-result-wide v2

    .line 50
    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->length()J

    .line 53
    move-result-wide v4

    .line 54
    cmp-long v2, v2, v4

    .line 56
    if-gez v2, :cond_42

    .line 58
    sget-object p1, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    .line 60
    const-string p2, "decompressZipArchive not enough space"

    .line 62
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/net/MalformedURLException; {:try_start_22 .. :try_end_40} :catch_b0
    .catch Ljcifs/smb/SmbException; {:try_start_22 .. :try_end_40} :catch_ab

    .line 65
    const/4 p1, 0x3

    .line 66
    return p1

    .line 67
    :cond_42
    const/4 v2, 0x0

    .line 68
    :try_start_43
    new-instance v3, Ljava/util/zip/ZipInputStream;

    .line 70
    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->getInputStream()Ljava/io/InputStream;

    .line 73
    move-result-object v1

    .line 74
    invoke-direct {v3, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4c} :catch_9f
    .catchall {:try_start_43 .. :try_end_4c} :catchall_9d

    .line 77
    :cond_4c
    :goto_4c
    :try_start_4c
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_92

    .line 83
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 86
    move-result-object v4

    .line 87
    const-string v5, "(/[.]{2})*"

    .line 89
    const-string v6, ""

    .line 91
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object v4

    .line 95
    new-instance v5, Ljava/io/File;

    .line 97
    invoke-direct {v5, p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 107
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 110
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 113
    move-result v1
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_71} :catch_9a
    .catchall {:try_start_4c .. :try_end_71} :catchall_97

    .line 114
    if-nez v1, :cond_4c

    .line 116
    :try_start_73
    new-instance v1, Ljava/io/FileOutputStream;

    .line 118
    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_78} :catch_86
    .catchall {:try_start_73 .. :try_end_78} :catchall_84

    .line 121
    const v4, 0x8000

    .line 124
    :try_start_7b
    invoke-static {p1, v3, v1, v4}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_82
    .catchall {:try_start_7b .. :try_end_7e} :catchall_8c

    .line 127
    :goto_7e
    :try_start_7e
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_9a
    .catchall {:try_start_7e .. :try_end_81} :catchall_97

    .line 130
    goto :goto_4c

    .line 131
    :catch_82
    move-exception v4

    .line 132
    goto :goto_88

    .line 133
    :catchall_84
    move-exception p1

    .line 134
    goto :goto_8e

    .line 135
    :catch_86
    move-exception v4

    .line 136
    move-object v1, v2

    .line 137
    :goto_88
    :try_start_88
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    .line 140
    goto :goto_7e

    .line 141
    :catchall_8c
    move-exception p1

    .line 142
    move-object v2, v1

    .line 143
    :goto_8e
    :try_start_8e
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 146
    throw p1
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_92} :catch_9a
    .catchall {:try_start_8e .. :try_end_92} :catchall_97

    .line 147
    :cond_92
    const/4 p1, 0x0

    .line 148
    :try_start_93
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_96
    .catch Ljava/net/MalformedURLException; {:try_start_93 .. :try_end_96} :catch_b0
    .catch Ljcifs/smb/SmbException; {:try_start_93 .. :try_end_96} :catch_ab

    .line 151
    return p1

    .line 152
    :catchall_97
    move-exception p1

    .line 153
    move-object v2, v3

    .line 154
    goto :goto_a7

    .line 155
    :catch_9a
    move-exception p1

    .line 156
    move-object v2, v3

    .line 157
    goto :goto_a0

    .line 158
    :catchall_9d
    move-exception p1

    .line 159
    goto :goto_a7

    .line 160
    :catch_9f
    move-exception p1

    .line 161
    :goto_a0
    :try_start_a0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_9d

    .line 164
    :try_start_a3
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 167
    return v0

    .line 168
    :goto_a7
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 171
    throw p1
    :try_end_ab
    .catch Ljava/net/MalformedURLException; {:try_start_a3 .. :try_end_ab} :catch_b0
    .catch Ljcifs/smb/SmbException; {:try_start_a3 .. :try_end_ab} :catch_ab

    .line 172
    :catch_ab
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    goto :goto_b4

    .line 177
    :catch_b0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 181
    :goto_b4
    return v0
.end method

.method private writeFileInfoToZip(Ljava/lang/ref/WeakReference;Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Ljava/lang/String;Ll4/k;[B)I
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            ">;",
            "Ljava/io/File;",
            "Lnet/lingala/zip4j/model/ZipParameters;",
            "Ljava/lang/String;",
            "Ll4/k;",
            "[B)I"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p3

    .line 3
    move-object/from16 v1, p4

    .line 5
    move-object/from16 v8, p5

    .line 7
    move-object/from16 v9, p6

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    move-result-wide v2

    .line 13
    const/4 v10, 0x0

    .line 14
    :try_start_d
    iput-object v1, v0, Lnet/lingala/zip4j/model/ZipParameters;->p:Ljava/lang/String;

    .line 16
    invoke-virtual {v8, v0}, Ll4/k;->e(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 19
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->isDirectory()Z

    .line 22
    move-result v4

    .line 23
    const/4 v11, 0x5

    .line 24
    const/4 v5, 0x0

    .line 25
    if-eqz v4, :cond_57

    .line 27
    invoke-virtual/range {p5 .. p5}, Ll4/k;->a()Lm4/g;

    .line 30
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 33
    move-result-object v12

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v13

    .line 58
    array-length v14, v12

    .line 59
    move v15, v5

    .line 60
    :goto_3b
    if-ge v15, v14, :cond_b9

    .line 62
    aget-object v3, v12, v15

    .line 64
    move-object/from16 v1, p0

    .line 66
    move-object/from16 v2, p1

    .line 68
    move-object/from16 v4, p3

    .line 70
    move-object v5, v13

    .line 71
    move-object/from16 v6, p5

    .line 73
    move-object/from16 v7, p6

    .line 75
    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/model/ArchiveHelper;->writeFileInfoToZip(Ljava/lang/ref/WeakReference;Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Ljava/lang/String;Ll4/k;[B)I

    .line 78
    move-result v5
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_4e} :catch_9d
    .catchall {:try_start_d .. :try_end_4e} :catchall_9b

    .line 79
    if-ne v5, v11, :cond_54

    .line 81
    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 84
    return v5

    .line 85
    :cond_54
    add-int/lit8 v15, v15, 0x1

    .line 87
    goto :goto_3b

    .line 88
    :cond_57
    :try_start_57
    new-instance v1, Ljava/io/FileInputStream;

    .line 90
    move-object/from16 v0, p2

    .line 92
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5e} :catch_9d
    .catchall {:try_start_57 .. :try_end_5e} :catchall_9b

    .line 95
    move v0, v5

    .line 96
    :cond_5f
    :goto_5f
    :try_start_5f
    invoke-virtual {v1, v9}, Ljava/io/InputStream;->read([B)I

    .line 99
    move-result v4

    .line 100
    const/4 v6, -0x1

    .line 101
    if-eq v4, v6, :cond_90

    .line 103
    invoke-virtual {v8, v9, v5, v4}, Ll4/k;->write([BII)V

    .line 106
    add-int/2addr v0, v4

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 110
    move-result-wide v6

    .line 111
    sub-long/2addr v6, v2

    .line 112
    const-wide/16 v12, 0x3e8

    .line 114
    cmp-long v4, v6, v12

    .line 116
    if-lez v4, :cond_5f

    .line 118
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 124
    if-eqz v4, :cond_8c

    .line 126
    invoke-interface {v4}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 129
    move-result v6

    .line 130
    if-eqz v6, :cond_84

    .line 132
    goto :goto_8c

    .line 133
    :cond_84
    int-to-long v6, v0

    .line 134
    invoke-interface {v4, v6, v7}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setSingleSizeDone(J)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_88} :catch_98
    .catchall {:try_start_5f .. :try_end_88} :catchall_95

    .line 137
    const-wide/16 v6, 0x1

    .line 139
    add-long/2addr v2, v6

    .line 140
    goto :goto_5f

    .line 141
    :cond_8c
    :goto_8c
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 144
    return v11

    .line 145
    :cond_90
    :try_start_90
    invoke-virtual/range {p5 .. p5}, Ll4/k;->a()Lm4/g;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_98
    .catchall {:try_start_90 .. :try_end_93} :catchall_95

    .line 148
    move-object v10, v1

    .line 149
    goto :goto_b9

    .line 150
    :catchall_95
    move-exception v0

    .line 151
    move-object v10, v1

    .line 152
    goto :goto_bd

    .line 153
    :catch_98
    move-exception v0

    .line 154
    move-object v10, v1

    .line 155
    goto :goto_9e

    .line 156
    :catchall_9b
    move-exception v0

    .line 157
    goto :goto_bd

    .line 158
    :catch_9d
    move-exception v0

    .line 159
    :goto_9e
    :try_start_9e
    sget-object v1, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    const-string v3, "writeFileInfoToZip error: "

    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v0

    .line 182
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_9e .. :try_end_b8} :catchall_9b

    .line 185
    const/4 v5, 0x4

    .line 186
    :cond_b9
    :goto_b9
    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 189
    return v5

    .line 190
    :goto_bd
    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 193
    throw v0
.end method


# virtual methods
.method public addZipExtensionIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_24

    .line 7
    const-string v0, "."

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_1e

    .line 15
    if-lez v0, :cond_24

    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "zip"

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_24

    .line 31
    :cond_1e
    const-string v0, ".zip"

    .line 33
    invoke-static {p1, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    :cond_24
    return-object p1
.end method

.method public buildZipName(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_43

    .line 7
    new-instance v0, Ljava/io/File;

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 16
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 18
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result p1

    .line 25
    const/4 v1, 0x1

    .line 26
    if-ne p1, v1, :cond_20

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    goto :goto_28

    .line 33
    :cond_20
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string p1, "."

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string p1, "zip"

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    goto :goto_44

    .line 68
    :cond_43
    const/4 p1, 0x0

    .line 69
    :goto_44
    return-object p1
.end method

.method public checkIfArchive(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_14

    .line 11
    sget-object v0, Lcom/android/fileexplorer/model/ArchiveHelper;->ARCHIVE_EXTENSIONS_SET:Ljava/util/HashSet;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_14

    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    :goto_15
    return p1
.end method

.method public compressZipArchiveZip4J(Ljava/lang/ref/WeakReference;Ljava/util/ArrayList;Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1b

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->checkSDRootPathWritable()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_11

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/model/ArchiveHelper;->compressZipArchiveZipByDocumentFile(Ljava/lang/ref/WeakReference;Ljava/util/ArrayList;Ljava/lang/String;)I

    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_11
    sget-object p1, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    .line 20
    const-string p2, "compressZipArchive, no permission with external SD card."

    .line 22
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const/16 p1, 0x11

    .line 27
    return p1

    .line 28
    :cond_1b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/model/ArchiveHelper;->compressZipArchiveZipNormal(Ljava/lang/ref/WeakReference;Ljava/util/ArrayList;Ljava/lang/String;)I

    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public compressZipArchiveZipByDocumentFile(Ljava/lang/ref/WeakReference;Ljava/util/ArrayList;Ljava/lang/String;)I
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "compressZipArchiveZipByDocumentFile"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const/4 v1, 0x4

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_9
    new-instance v3, Ljava/io/File;

    .line 12
    move-object/from16 v4, p3

    .line 14
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-static {v3}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentFile(Ljava/io/File;)Ls0/a;

    .line 20
    move-result-object v3

    .line 21
    if-nez v3, :cond_25

    .line 23
    const-string v3, "compressZipArchiveZipByDocumentFile documentFile is null"

    .line 25
    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_dd
    .catchall {:try_start_9 .. :try_end_1b} :catchall_d9

    .line 28
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 31
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 34
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 37
    return v1

    .line 38
    :cond_25
    :try_start_25
    check-cast v3, Ls0/c;

    .line 40
    iget-object v3, v3, Ls0/c;->c:Landroid/net/Uri;

    .line 42
    if-nez v3, :cond_3a

    .line 44
    const-string v3, "compressZipArchiveZipByDocumentFile uri is null"

    .line 46
    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_30} :catch_dd
    .catchall {:try_start_25 .. :try_end_30} :catchall_d9

    .line 49
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 52
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 55
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 58
    return v1

    .line 59
    :cond_3a
    :try_start_3a
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 66
    move-result-object v5

    .line 67
    const-string v6, "rw"

    .line 69
    invoke-virtual {v5, v3, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 72
    move-result-object v3
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_48} :catch_dd
    .catchall {:try_start_3a .. :try_end_48} :catchall_d9

    .line 73
    if-nez v3, :cond_59

    .line 75
    :try_start_4a
    const-string v4, "compressZipArchiveZipByDocumentFile fd is null"

    .line 77
    invoke-static {v0, v4}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4f} :catch_d6
    .catchall {:try_start_4a .. :try_end_4f} :catchall_d3

    .line 80
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 83
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 86
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 89
    return v1

    .line 90
    :cond_59
    :try_start_59
    new-instance v5, Ljava/io/FileOutputStream;

    .line 92
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 95
    move-result-object v0

    .line 96
    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_62} :catch_d6
    .catchall {:try_start_59 .. :try_end_62} :catchall_d3

    .line 99
    :try_start_62
    new-instance v13, Ll4/k;

    .line 101
    new-instance v0, Lm4/i;

    .line 103
    const/4 v6, 0x1

    .line 104
    const/16 v7, 0x1000

    .line 106
    invoke-direct {v0, v7, v6}, Lm4/i;-><init>(IZ)V

    .line 109
    new-instance v6, Lm4/n;

    .line 111
    invoke-direct {v6}, Lm4/n;-><init>()V

    .line 114
    invoke-direct {v13, v5, v2, v0, v6}, Ll4/k;-><init>(Ljava/io/OutputStream;[CLm4/i;Lm4/n;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_74} :catch_cf
    .catchall {:try_start_62 .. :try_end_74} :catchall_cb

    .line 117
    :try_start_74
    new-instance v0, Lnet/lingala/zip4j/model/ZipParameters;

    .line 119
    invoke-direct {v0}, Lnet/lingala/zip4j/model/ZipParameters;-><init>()V

    .line 122
    sget-object v2, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 124
    iput-object v2, v0, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 126
    sget-object v2, Lnet/lingala/zip4j/model/enums/CompressionLevel;->ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 128
    iput-object v2, v0, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 130
    new-array v2, v7, [B

    .line 132
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 135
    move-result-object v14

    .line 136
    const/4 v15, 0x0

    .line 137
    move v6, v15

    .line 138
    :cond_89
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    move-result v7

    .line 142
    if-eqz v7, :cond_b2

    .line 144
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    move-result-object v6

    .line 148
    check-cast v6, Lcom/android/fileexplorer/model/FileInfo;

    .line 150
    new-instance v8, Ljava/io/File;

    .line 152
    iget-object v6, v6, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 154
    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    .line 159
    move-object/from16 v6, p0

    .line 161
    move-object/from16 v7, p1

    .line 163
    move-object v9, v0

    .line 164
    move-object v11, v13

    .line 165
    move-object v12, v2

    .line 166
    invoke-direct/range {v6 .. v12}, Lcom/android/fileexplorer/model/ArchiveHelper;->writeFileInfoToZip(Ljava/lang/ref/WeakReference;Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Ljava/lang/String;Ll4/k;[B)I

    .line 169
    move-result v6

    .line 170
    if-eqz v6, :cond_89

    .line 172
    sget-object v0, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    .line 174
    const-string v2, "writeFileInfoToZip error"

    .line 176
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_b2
    if-nez v6, :cond_c1

    .line 181
    invoke-static/range {p3 .. p3}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_b7} :catch_c8
    .catchall {:try_start_74 .. :try_end_b7} :catchall_c5

    .line 184
    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 187
    invoke-static {v13}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 190
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 193
    return v15

    .line 194
    :cond_c1
    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 197
    goto :goto_fe

    .line 198
    :catchall_c5
    move-exception v0

    .line 199
    move-object v2, v13

    .line 200
    goto :goto_cc

    .line 201
    :catch_c8
    move-exception v0

    .line 202
    move-object v2, v13

    .line 203
    goto :goto_d0

    .line 204
    :catchall_cb
    move-exception v0

    .line 205
    :goto_cc
    move-object v4, v2

    .line 206
    move-object v2, v5

    .line 207
    goto :goto_106

    .line 208
    :catch_cf
    move-exception v0

    .line 209
    :goto_d0
    move-object v4, v2

    .line 210
    move-object v2, v5

    .line 211
    goto :goto_e0

    .line 212
    :catchall_d3
    move-exception v0

    .line 213
    move-object v4, v2

    .line 214
    goto :goto_106

    .line 215
    :catch_d6
    move-exception v0

    .line 216
    move-object v4, v2

    .line 217
    goto :goto_e0

    .line 218
    :catchall_d9
    move-exception v0

    .line 219
    move-object v3, v2

    .line 220
    move-object v4, v3

    .line 221
    goto :goto_106

    .line 222
    :catch_dd
    move-exception v0

    .line 223
    move-object v3, v2

    .line 224
    move-object v4, v3

    .line 225
    :goto_e0
    :try_start_e0
    sget-object v5, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    .line 229
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    const-string v7, "compressZipArchiveZipByDocumentFile error: "

    .line 234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    move-result-object v0

    .line 248
    invoke-static {v5, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fa
    .catchall {:try_start_e0 .. :try_end_fa} :catchall_105

    .line 251
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 254
    move-object v13, v4

    .line 255
    :goto_fe
    invoke-static {v13}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 258
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 261
    return v1

    .line 262
    :catchall_105
    move-exception v0

    .line 263
    :goto_106
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 266
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 269
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 272
    throw v0
.end method

.method public compressZipArchiveZipNormal(Ljava/lang/ref/WeakReference;Ljava/util/ArrayList;Ljava/lang/String;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    :try_start_1
    new-instance v1, Lf4/a;

    .line 4
    invoke-direct {v1, p3}, Lf4/a;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v2, Lnet/lingala/zip4j/model/ZipParameters;

    .line 9
    invoke-direct {v2}, Lnet/lingala/zip4j/model/ZipParameters;-><init>()V

    .line 12
    sget-object v3, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 14
    iput-object v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 16
    sget-object v3, Lnet/lingala/zip4j/model/enums/CompressionLevel;->ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 18
    iput-object v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 20
    iget-object v3, v1, Lf4/a;->d:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 22
    new-instance v4, Lcom/android/fileexplorer/model/ArchiveHelper$2;

    .line 24
    invoke-direct {v4, p0, p1, v3}, Lcom/android/fileexplorer/model/ArchiveHelper$2;-><init>(Lcom/android/fileexplorer/model/ArchiveHelper;Ljava/lang/ref/WeakReference;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 27
    invoke-static {v4}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    .line 30
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object p2

    .line 34
    :cond_21
    :goto_21
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x5

    .line 39
    if-eqz v4, :cond_55

    .line 41
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    .line 47
    new-instance v6, Ljava/io/File;

    .line 49
    iget-object v7, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 51
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    iget-boolean v4, v4, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 56
    if-eqz v4, :cond_3d

    .line 58
    invoke-virtual {v1, v6, v2}, Lf4/a;->e(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 61
    goto :goto_40

    .line 62
    :cond_3d
    invoke-virtual {v1, v6, v2}, Lf4/a;->a(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 65
    :goto_40
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 71
    iget-boolean v7, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->e:Z

    .line 73
    if-eqz v7, :cond_4b

    .line 75
    return v5

    .line 76
    :cond_4b
    if-eqz v4, :cond_21

    .line 78
    invoke-static {v6}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileSize(Ljava/io/File;)J

    .line 81
    move-result-wide v5

    .line 82
    invoke-interface {v4, v5, v6}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->increaseProgressBy(J)V

    .line 85
    goto :goto_21

    .line 86
    :cond_55
    sget-object p1, Lcom/android/fileexplorer/model/ArchiveHelper$3;->$SwitchMap$net$lingala$zip4j$progress$ProgressMonitor$Result:[I

    .line 88
    iget-object p2, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 90
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 93
    move-result p2

    .line 94
    aget p1, p1, p2

    .line 96
    const/4 p2, 0x1

    .line 97
    if-eq p1, p2, :cond_67

    .line 99
    const/4 p2, 0x2

    .line 100
    if-eq p1, p2, :cond_66

    .line 102
    return v0

    .line 103
    :cond_66
    return v5

    .line 104
    :cond_67
    invoke-static {p3}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V
    :try_end_6a
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_6a} :catch_6c

    .line 107
    const/4 p1, 0x0

    .line 108
    return p1

    .line 109
    :catch_6c
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    return v0
.end method

.method public decompressArchive(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_122

    .line 9
    invoke-static {p2}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    goto/16 :goto_122

    .line 17
    :cond_10
    invoke-static {p2}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->noSDWritePermission(Ljava/lang/String;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_20

    .line 23
    sget-object p1, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    .line 25
    const-string p2, "decompressArchive,need request permission"

    .line 27
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/16 p1, 0x11

    .line 32
    return p1

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    .line 35
    const-string v1, "smb://"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_39

    .line 43
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 49
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/model/ArchiveHelper;->unZipSmbFile(Landroid/content/Context;Ljava/lang/String;)I

    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    :cond_39
    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    .line 60
    const-string v1, "content"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 65
    move-result v0

    .line 66
    const/4 v1, 0x4

    .line 67
    if-eqz v0, :cond_9d

    .line 69
    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    .line 71
    invoke-static {v0}, Lcom/android/fileexplorer/model/ContentFile;->generateFromUri(Ljava/lang/String;)Lcom/android/fileexplorer/model/ContentFile;

    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/android/fileexplorer/model/ContentFile;->isEmpty(Lcom/android/fileexplorer/model/ContentFile;)Z

    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_51

    .line 81
    return v1

    .line 82
    :cond_51
    sget-object v9, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils;->URI_TEMP_DIR_PATH:Ljava/lang/String;

    .line 84
    new-instance v2, Ljava/io/File;

    .line 86
    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    :try_start_58
    invoke-static {v2}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 92
    goto :goto_68

    .line 93
    :catch_5c
    move-exception v2

    .line 94
    sget-object v3, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    .line 96
    const-string v4, "handleContentFile, delete archiveTempFile error: "

    .line 98
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    move-result-object v4

    .line 102
    invoke-static {v2, v4, v3}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 105
    :goto_68
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 111
    const/4 v5, 0x1

    .line 112
    const/4 v6, 0x0

    .line 113
    const/4 v7, 0x0

    .line 114
    const/4 v8, 0x0

    .line 115
    move-object v3, v0

    .line 116
    move-object v4, v9

    .line 117
    invoke-static/range {v2 .. v8}, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils;->copySingleFileToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;Ljava/lang/String;ZZZLcom/android/fileexplorer/filemanager/FileTransferParams;)I

    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_7b

    .line 123
    return v2

    .line 124
    :cond_7b
    invoke-static {v9}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    move-result-object v2

    .line 128
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v0, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 135
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 142
    iput-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/io/File;

    .line 146
    iget-object v2, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    .line 148
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_9d

    .line 157
    return v1

    .line 158
    :cond_9d
    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    .line 160
    const-string v2, "."

    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 165
    move-result v0

    .line 166
    const/16 v2, 0xc

    .line 168
    if-lez v0, :cond_121

    .line 170
    const-string v0, "eu.medsea.mimeutil.detector.MagicMimeMimeDetector"

    .line 172
    invoke-static {v0}, Leu/medsea/mimeutil/MimeUtil;->registerMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;

    .line 175
    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    .line 177
    invoke-static {v0}, Leu/medsea/mimeutil/MimeUtil;->getMimeTypes(Ljava/lang/String;)Ljava/util/Collection;

    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 184
    move-result-object v0

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    move-result v3

    .line 189
    if-nez v3, :cond_120

    .line 191
    iget-object v1, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    .line 193
    invoke-static {v1, p2}, Lcom/android/fileexplorer/model/ArchiveHelper;->getArchiveRootFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 200
    move-result v3

    .line 201
    const/4 v4, 0x5

    .line 202
    if-eqz v3, :cond_e4

    .line 204
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 207
    move-result-object v3

    .line 208
    check-cast v3, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 210
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 213
    move-result-object v5

    .line 214
    invoke-static {v3, v5}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z

    .line 217
    move-result v3

    .line 218
    if-eqz v3, :cond_e3

    .line 220
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 223
    move-result-object v3

    .line 224
    invoke-static {v3}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/lang/String;)Z

    .line 227
    goto :goto_e4

    .line 228
    :cond_e3
    return v4

    .line 229
    :cond_e4
    :goto_e4
    const-string v3, "zip"

    .line 231
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 234
    move-result v3

    .line 235
    if-eqz v3, :cond_110

    .line 237
    const-string v0, "ArchiveHelper"

    .line 239
    const-string v2, "decompressZip start"

    .line 241
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v2, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    .line 246
    invoke-static {p1, v2, p2}, Lcom/android/fileexplorer/model/ZipUtils;->decompressZipArchive(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_10a

    .line 252
    if-eq v2, v4, :cond_10a

    .line 254
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 257
    move-result-object v1

    .line 258
    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/lang/String;)Z

    .line 261
    iget-object v1, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    .line 263
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/android/fileexplorer/model/ArchiveHelper;->decompressZipArchive(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    move-result v2

    .line 267
    :cond_10a
    const-string p1, "decompressZip end"

    .line 269
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return v2

    .line 273
    :cond_110
    const-string v1, "rar"

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_11f

    .line 281
    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    .line 283
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/fileexplorer/model/ArchiveHelper;->decompressRarArchive(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-result p1

    .line 287
    return p1

    .line 288
    :cond_11f
    return v2

    .line 289
    :cond_120
    return v1

    .line 290
    :cond_121
    return v2

    .line 291
    :cond_122
    :goto_122
    const/4 p1, 0x2

    .line 292
    return p1
.end method

.method public getArchivePath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public hasArchiveToDecompress()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method public setArchiveToDecompress(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    .line 3
    return-void
.end method
