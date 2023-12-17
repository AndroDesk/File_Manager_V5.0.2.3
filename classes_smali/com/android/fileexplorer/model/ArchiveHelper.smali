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

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/model/ArchiveHelper;->ARCHIVE_EXTENSIONS_SET:Ljava/util/HashSet;

    const-string v1, "zip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "rar"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/fileexplorer/model/ArchiveHelper;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/ArchiveHelper;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/model/ArchiveHelper;->ourInstance:Lcom/android/fileexplorer/model/ArchiveHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createDirectory(Lcom/junrar/rarfile/FileHeader;Ljava/lang/String;)I
    .registers 7

    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "/"

    const-string v3, "\\\\"

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->isUnicode()Z

    move-result v0

    if-eqz v0, :cond_31

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->getFileNameW()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_28

    array-length p1, p1

    if-lez p1, :cond_28

    return v1

    :cond_28
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->mkDir(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_31
    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->isUnicode()Z

    move-result v0

    if-nez v0, :cond_5d

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_54

    array-length p1, p1

    if-lez p1, :cond_54

    return v1

    :cond_54
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->mkDir(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_5d
    sget-object p1, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    const-string p2, "fh is not a directory"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    return p1
.end method

.method private createFile(Lcom/junrar/rarfile/FileHeader;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->isFileHeader()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->isUnicode()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->getFileNameW()Ljava/lang/String;

    move-result-object p1

    goto :goto_15

    :cond_11
    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    move-result-object p1

    :goto_15
    new-instance v0, Ljava/io/File;

    const-string v1, "\\\\"

    const-string v2, "/"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_46

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3b

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->mkDir(Ljava/lang/String;)I

    :cond_3b
    invoke-static {p2}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->mkDir(Ljava/lang/String;)I

    :try_start_3e
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

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

    const-string p4, "ArchiveHelper"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x2

    return p1

    :cond_a
    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/ArchiveHelper;->getArchiveRootDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x4

    :try_start_12
    new-instance v4, Lcom/junrar/Archive;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/junrar/Archive;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Lcom/junrar/exception/RarException; {:try_start_12 .. :try_end_1c} :catch_181
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_176
    .catchall {:try_start_12 .. :try_end_1c} :catchall_174

    :try_start_1c
    invoke-virtual {v4}, Lcom/junrar/Archive;->isEncrypted()Z

    move-result p2
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_20} :catch_16a
    .catch Lcom/junrar/exception/RarException; {:try_start_1c .. :try_end_20} :catch_167
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_20} :catch_164
    .catchall {:try_start_1c .. :try_end_20} :catchall_161

    const-string v5, "archive is encrypted cannot extreact"

    if-eqz p2, :cond_2b

    :try_start_24
    invoke-static {p4, v5}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/NullPointerException; {:try_start_24 .. :try_end_27} :catch_16a
    .catch Lcom/junrar/exception/RarException; {:try_start_24 .. :try_end_27} :catch_167
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_164
    .catchall {:try_start_24 .. :try_end_27} :catchall_161

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :cond_2b
    const-wide/16 v6, 0x0

    :try_start_2d
    invoke-virtual {v4}, Lcom/junrar/Archive;->getFileHeaders()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4b

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_37
    :goto_37
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/junrar/rarfile/FileHeader;

    if-eqz v8, :cond_37

    invoke-virtual {v8}, Lcom/junrar/rarfile/FileHeader;->getFullUnpackSize()J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_37

    :cond_4b
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/model/StorageHelper;->destVolumeFreeSpace(Ljava/lang/String;)J

    move-result-wide p2

    cmp-long p2, p2, v6

    if-gez p2, :cond_61

    const-string p1, "extract space not enough"

    invoke-static {p4, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Lcom/junrar/exception/RarException; {:try_start_2d .. :try_end_5c} :catch_167
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_5c} :catch_164
    .catchall {:try_start_2d .. :try_end_5c} :catchall_161

    const/4 p1, 0x3

    :goto_5d
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return p1

    :cond_61
    :try_start_61
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->mkDir(Ljava/lang/String;)I

    move-result p2
    :try_end_65
    .catch Lcom/junrar/exception/RarException; {:try_start_61 .. :try_end_65} :catch_167
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_65} :catch_164
    .catchall {:try_start_61 .. :try_end_65} :catchall_161

    if-eqz p2, :cond_6b

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return p2

    :cond_6b
    :try_start_6b
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz p2, :cond_76

    invoke-interface {p2, v6, v7}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setProgressMax(J)V

    :cond_76
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/lang/String;)Z

    move-result p2

    move-object p3, v2

    :goto_7b
    invoke-virtual {v4}, Lcom/junrar/Archive;->nextFileHeader()Lcom/junrar/rarfile/FileHeader;

    move-result-object v6

    if-nez v6, :cond_86

    invoke-static {v0}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_5d

    :cond_86
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz v7, :cond_a0

    invoke-virtual {v6}, Lcom/junrar/rarfile/FileHeader;->getFullUnpackSize()J

    move-result-wide v8

    invoke-interface {v7, v8, v9}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->increaseProgressBy(J)V

    invoke-interface {v7}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result v7

    if-eqz v7, :cond_a0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->deleteExtractedFiles(Ljava/lang/String;)V

    const/4 p1, 0x5

    goto :goto_5d

    :cond_a0
    invoke-virtual {v6}, Lcom/junrar/rarfile/FileHeader;->isEncrypted()Z

    move-result v7

    if-eqz v7, :cond_c3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/junrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->deleteExtractedFiles(Ljava/lang/String;)V
    :try_end_bf
    .catch Lcom/junrar/exception/RarException; {:try_start_6b .. :try_end_bf} :catch_167
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_bf} :catch_164
    .catchall {:try_start_6b .. :try_end_bf} :catchall_161

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :cond_c3
    :try_start_c3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "extracting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/junrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p4, v7}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_db
    .catch Lcom/junrar/exception/RarException; {:try_start_c3 .. :try_end_db} :catch_167
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_db} :catch_164
    .catchall {:try_start_c3 .. :try_end_db} :catchall_161

    :try_start_db
    invoke-virtual {v6}, Lcom/junrar/rarfile/FileHeader;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_f6

    invoke-direct {p0, v6, v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->createDirectory(Lcom/junrar/rarfile/FileHeader;Ljava/lang/String;)I

    move-result v6
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e5} :catch_135
    .catchall {:try_start_db .. :try_end_e5} :catchall_11c

    if-eqz v6, :cond_f4

    const/4 v7, 0x1

    if-eq v6, v7, :cond_f4

    :try_start_ea
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_f0
    .catch Lcom/junrar/exception/RarException; {:try_start_ea .. :try_end_f0} :catch_167
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_f0} :catch_164
    .catchall {:try_start_ea .. :try_end_f0} :catchall_161

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v6

    :cond_f4
    move-object v7, v2

    goto :goto_127

    :cond_f6
    :try_start_f6
    invoke-direct {p0, v6, v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->createFile(Lcom/junrar/rarfile/FileHeader;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    if-eqz p2, :cond_11e

    invoke-static {v7}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentFile(Ljava/io/File;)Ls0/a;

    move-result-object v7

    check-cast v7, Ls0/c;

    iget-object v7, v7, Ls0/c;->c:Landroid/net/Uri;

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "rw"

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p3

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_124

    :catchall_11c
    move-exception p1

    goto :goto_15a

    :cond_11e
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_123} :catch_135
    .catchall {:try_start_f6 .. :try_end_123} :catchall_11c

    move-object v7, v8

    :goto_124
    :try_start_124
    invoke-virtual {v4, v6, v7}, Lcom/junrar/Archive;->extractFile(Lcom/junrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_127} :catch_132
    .catchall {:try_start_124 .. :try_end_127} :catchall_12f

    :goto_127
    :try_start_127
    invoke-static {v7}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_12d
    .catch Lcom/junrar/exception/RarException; {:try_start_127 .. :try_end_12d} :catch_167
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_12d} :catch_164
    .catchall {:try_start_127 .. :try_end_12d} :catchall_161

    goto/16 :goto_7b

    :catchall_12f
    move-exception p1

    move-object v2, v7

    goto :goto_15a

    :catch_132
    move-exception p1

    move-object v2, v7

    goto :goto_136

    :catch_135
    move-exception p1

    :goto_136
    :try_start_136
    sget-object p2, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decompressRarArchive error: "

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_150
    .catchall {:try_start_136 .. :try_end_150} :catchall_11c

    :try_start_150
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_156
    .catch Lcom/junrar/exception/RarException; {:try_start_150 .. :try_end_156} :catch_167
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_156} :catch_164
    .catchall {:try_start_150 .. :try_end_156} :catchall_161

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v3

    :goto_15a
    :try_start_15a
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    :catchall_161
    move-exception p1

    move-object v2, v4

    goto :goto_196

    :catch_164
    move-exception p1

    move-object v2, v4

    goto :goto_177

    :catch_167
    move-exception p1

    move-object v2, v4

    goto :goto_182

    :catch_16a
    move-exception p1

    const-string p2, "mainheader is null"

    invoke-static {p4, p2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_170
    .catch Lcom/junrar/exception/RarException; {:try_start_15a .. :try_end_170} :catch_167
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_170} :catch_164
    .catchall {:try_start_15a .. :try_end_170} :catchall_161

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v3

    :catchall_174
    move-exception p1

    goto :goto_196

    :catch_176
    move-exception p1

    :goto_177
    :try_start_177
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->deleteExtractedFiles(Ljava/lang/String;)V
    :try_end_17d
    .catchall {:try_start_177 .. :try_end_17d} :catchall_174

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v3

    :catch_181
    move-exception p1

    :goto_182
    :try_start_182
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->deleteExtractedFiles(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/junrar/exception/RarException;->getType()Lcom/junrar/exception/RarException$RarExceptionType;

    move-result-object p1

    sget-object p2, Lcom/junrar/exception/RarException$RarExceptionType;->rarEncryptedException:Lcom/junrar/exception/RarException$RarExceptionType;
    :try_end_18e
    .catchall {:try_start_182 .. :try_end_18e} :catchall_174

    if-ne p1, p2, :cond_191

    goto :goto_192

    :cond_191
    move v1, v3

    :goto_192
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :goto_196
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

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

    const-string v0, "error extract zip file"

    const-string v1, "ArchiveHelper"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    sget-object p1, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    const-string p2, "decompressZipArchive invalid path"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1

    :cond_13
    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/ArchiveHelper;->getArchiveRootDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/16 v2, 0xd

    const/4 v3, 0x4

    :try_start_1a
    new-instance v4, Lf4/a;

    invoke-direct {v4, p2}, Lf4/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lf4/a;->l()Z

    move-result p2

    if-nez p2, :cond_2f

    sget-object p1, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    const-string p2, "decompressZipArchive invalid format"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xc

    return p1

    :cond_2f
    invoke-virtual {v4}, Lf4/a;->k()Z

    move-result p2

    if-eqz p2, :cond_4a

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_42

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iput-object p2, v4, Lf4/a;->e:[C

    goto :goto_4a

    :cond_42
    sget-object p1, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    const-string p2, "decompressZipArchive invalied pass"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4a
    :goto_4a
    invoke-virtual {v4}, Lf4/a;->m()V

    iget-object p2, v4, Lf4/a;->b:Lm4/n;

    if-eqz p2, :cond_5b

    iget-object p2, p2, Lm4/n;->b:Lo1/a;

    if-nez p2, :cond_56

    goto :goto_5b

    :cond_56
    iget-object p2, p2, Lo1/a;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    goto :goto_5f

    :cond_5b
    :goto_5b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :goto_5f
    const-wide/16 v5, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_65
    :goto_65
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9c

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lm4/g;

    iget-object v8, v7, Lm4/b;->k:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/fileexplorer/apptag/FileUtils;->isValidFatFilename(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_94

    sget-object p1, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "fileName error:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, v7, Lm4/b;->k:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x1a

    return p1

    :cond_94
    iget-boolean v8, v7, Lm4/b;->s:Z

    if-nez v8, :cond_65

    iget-wide v7, v7, Lm4/b;->h:J

    add-long/2addr v5, v7

    goto :goto_65

    :cond_9c
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/fileexplorer/model/StorageHelper;->destVolumeFreeSpace(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long p4, v7, v5

    if-gez p4, :cond_b1

    sget-object p1, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    const-string p2, "decompressZipArchive not enough space"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    return p1

    :cond_b1
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz p4, :cond_bc

    invoke-interface {p4, v5, v6}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setProgressMax(J)V

    :cond_bc
    invoke-static {p3}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->mkDir(Ljava/lang/String;)I

    move-result p4

    if-eqz p4, :cond_ca

    sget-object p1, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    const-string p2, "decompressZipArchive create root dir failed"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p4

    :cond_ca
    iget-object p4, v4, Lf4/a;->d:Lnet/lingala/zip4j/progress/ProgressMonitor;

    new-instance v5, Lcom/android/fileexplorer/model/ArchiveHelper$1;

    invoke-direct {v5, p0, p1, p4}, Lcom/android/fileexplorer/model/ArchiveHelper$1;-><init>(Lcom/android/fileexplorer/model/ArchiveHelper;Ljava/lang/ref/WeakReference;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    invoke-static {v5}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    invoke-static {p3}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/lang/String;)Z

    move-result p4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_dc
    :goto_dc
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm4/g;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz v6, :cond_fb

    invoke-interface {v6}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result v7

    if-eqz v7, :cond_fb

    invoke-direct {p0, p3}, Lcom/android/fileexplorer/model/ArchiveHelper;->deleteExtractedFiles(Ljava/lang/String;)V

    const/4 p1, 0x5

    return p1

    :cond_fb
    iget-boolean v7, v5, Lm4/b;->q:Z

    if-eqz v7, :cond_109

    iget-object v7, v5, Lm4/b;->k:Ljava/lang/String;

    sget-object v8, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    const-string v9, "decompressZipArchive: utf8"

    invoke-static {v8, v9}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_118

    :cond_109
    new-instance v7, Ljava/lang/String;

    iget-object v8, v5, Lm4/b;->k:Ljava/lang/String;

    const-string v9, "Cp850"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const-string v9, "GBK"

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_118
    const-string v8, "(/[.]{2})*"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lm4/b;->k:Ljava/lang/String;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    if-eqz p4, :cond_166

    iget-boolean v7, v5, Lm4/b;->s:Z
    :try_end_12f
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1a .. :try_end_12f} :catch_19b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_12f} :catch_18f

    if-nez v7, :cond_15d

    :try_start_131
    invoke-virtual {v4, v5}, Lf4/a;->h(Lm4/g;)Lk4/k;

    move-result-object v5

    invoke-interface {v6}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v6

    const/4 v7, 0x1

    const v9, 0x8000

    invoke-static {v6, v5, v8, v7, v9}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeDocumentFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/File;ZI)I
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_140} :catch_141

    goto :goto_dc

    :catch_141
    move-exception p1

    :try_start_142
    sget-object p2, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decompressZipArchive writeDocumentFile error:"

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_15d
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->mkDir(Ljava/lang/String;)I

    goto/16 :goto_dc

    :cond_166
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_16f

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    :cond_16f
    iget-boolean v7, v5, Lm4/b;->s:Z

    if-nez v7, :cond_17f

    invoke-virtual {v4, v5, p3}, Lf4/a;->g(Lm4/g;Ljava/lang/String;)V

    if-eqz v6, :cond_dc

    iget-wide v7, v5, Lm4/b;->h:J

    invoke-interface {v6, v7, v8}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->increaseProgressBy(J)V

    goto/16 :goto_dc

    :cond_17f
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_dc

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_dc

    :cond_18a
    invoke-static {p3}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V
    :try_end_18d
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_142 .. :try_end_18d} :catch_19b
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_18d} :catch_18f

    const/4 p1, 0x0

    return p1

    :catch_18f
    move-exception p1

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2, v1}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/android/fileexplorer/model/ArchiveHelper;->deleteExtractedFiles(Ljava/lang/String;)V

    return v3

    :catch_19b
    move-exception p1

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/android/fileexplorer/model/ArchiveHelper;->deleteExtractedFiles(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/lingala/zip4j/exception/ZipException;->getType()Lnet/lingala/zip4j/exception/ZipException$Type;

    move-result-object p2

    sget-object p3, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    if-eq p2, p3, :cond_1d1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1d0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "wrong password"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1d0

    goto :goto_1d1

    :cond_1d0
    move v2, v3

    :cond_1d1
    :goto_1d1
    return v2
.end method

.method private deleteExtractedFiles(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    :cond_e
    return-void
.end method

.method public static getArchiveRootDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getArchiveRootFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/model/ArchiveHelper;->ourInstance:Lcom/android/fileexplorer/model/ArchiveHelper;

    return-object v0
.end method

.method private unZipSmbFile(Landroid/content/Context;Ljava/lang/String;)I
    .registers 10

    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x2

    return p1

    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/16 p1, 0xc

    return p1

    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/fileexplorer/model/ArchiveHelper;->getArchiveRootDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    :try_start_22
    new-instance v1, Ljcifs/smb/SmbFile;

    iget-object v2, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/fileexplorer/model/StorageHelper;->destVolumeFreeSpace(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_42

    sget-object p1, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    const-string p2, "decompressZipArchive not enough space"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/net/MalformedURLException; {:try_start_22 .. :try_end_40} :catch_b0
    .catch Ljcifs/smb/SmbException; {:try_start_22 .. :try_end_40} :catch_ab

    const/4 p1, 0x3

    return p1

    :cond_42
    const/4 v2, 0x0

    :try_start_43
    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4c} :catch_9f
    .catchall {:try_start_43 .. :try_end_4c} :catchall_9d

    :cond_4c
    :goto_4c
    :try_start_4c
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_92

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "(/[.]{2})*"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_71} :catch_9a
    .catchall {:try_start_4c .. :try_end_71} :catchall_97

    if-nez v1, :cond_4c

    :try_start_73
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_78} :catch_86
    .catchall {:try_start_73 .. :try_end_78} :catchall_84

    const v4, 0x8000

    :try_start_7b
    invoke-static {p1, v3, v1, v4}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_82
    .catchall {:try_start_7b .. :try_end_7e} :catchall_8c

    :goto_7e
    :try_start_7e
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_9a
    .catchall {:try_start_7e .. :try_end_81} :catchall_97

    goto :goto_4c

    :catch_82
    move-exception v4

    goto :goto_88

    :catchall_84
    move-exception p1

    goto :goto_8e

    :catch_86
    move-exception v4

    move-object v1, v2

    :goto_88
    :try_start_88
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_7e

    :catchall_8c
    move-exception p1

    move-object v2, v1

    :goto_8e
    :try_start_8e
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_92} :catch_9a
    .catchall {:try_start_8e .. :try_end_92} :catchall_97

    :cond_92
    const/4 p1, 0x0

    :try_start_93
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_96
    .catch Ljava/net/MalformedURLException; {:try_start_93 .. :try_end_96} :catch_b0
    .catch Ljcifs/smb/SmbException; {:try_start_93 .. :try_end_96} :catch_ab

    return p1

    :catchall_97
    move-exception p1

    move-object v2, v3

    goto :goto_a7

    :catch_9a
    move-exception p1

    move-object v2, v3

    goto :goto_a0

    :catchall_9d
    move-exception p1

    goto :goto_a7

    :catch_9f
    move-exception p1

    :goto_a0
    :try_start_a0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_9d

    :try_start_a3
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :goto_a7
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
    :try_end_ab
    .catch Ljava/net/MalformedURLException; {:try_start_a3 .. :try_end_ab} :catch_b0
    .catch Ljcifs/smb/SmbException; {:try_start_a3 .. :try_end_ab} :catch_ab

    :catch_ab
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b4

    :catch_b0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

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

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v10, 0x0

    :try_start_d
    iput-object v1, v0, Lnet/lingala/zip4j/model/ZipParameters;->p:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ll4/k;->e(Lnet/lingala/zip4j/model/ZipParameters;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const/4 v11, 0x5

    const/4 v5, 0x0

    if-eqz v4, :cond_57

    invoke-virtual/range {p5 .. p5}, Ll4/k;->a()Lm4/g;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    array-length v14, v12

    move v15, v5

    :goto_3b
    if-ge v15, v14, :cond_b9

    aget-object v3, v12, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object v5, v13

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/model/ArchiveHelper;->writeFileInfoToZip(Ljava/lang/ref/WeakReference;Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Ljava/lang/String;Ll4/k;[B)I

    move-result v5
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_4e} :catch_9d
    .catchall {:try_start_d .. :try_end_4e} :catchall_9b

    if-ne v5, v11, :cond_54

    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v5

    :cond_54
    add-int/lit8 v15, v15, 0x1

    goto :goto_3b

    :cond_57
    :try_start_57
    new-instance v1, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5e} :catch_9d
    .catchall {:try_start_57 .. :try_end_5e} :catchall_9b

    move v0, v5

    :cond_5f
    :goto_5f
    :try_start_5f
    invoke-virtual {v1, v9}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_90

    invoke-virtual {v8, v9, v5, v4}, Ll4/k;->write([BII)V

    add-int/2addr v0, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-wide/16 v12, 0x3e8

    cmp-long v4, v6, v12

    if-lez v4, :cond_5f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz v4, :cond_8c

    invoke-interface {v4}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result v6

    if-eqz v6, :cond_84

    goto :goto_8c

    :cond_84
    int-to-long v6, v0

    invoke-interface {v4, v6, v7}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setSingleSizeDone(J)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_88} :catch_98
    .catchall {:try_start_5f .. :try_end_88} :catchall_95

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_5f

    :cond_8c
    :goto_8c
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v11

    :cond_90
    :try_start_90
    invoke-virtual/range {p5 .. p5}, Ll4/k;->a()Lm4/g;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_98
    .catchall {:try_start_90 .. :try_end_93} :catchall_95

    move-object v10, v1

    goto :goto_b9

    :catchall_95
    move-exception v0

    move-object v10, v1

    goto :goto_bd

    :catch_98
    move-exception v0

    move-object v10, v1

    goto :goto_9e

    :catchall_9b
    move-exception v0

    goto :goto_bd

    :catch_9d
    move-exception v0

    :goto_9e
    :try_start_9e
    sget-object v1, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFileInfoToZip error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_9e .. :try_end_b8} :catchall_9b

    const/4 v5, 0x4

    :cond_b9
    :goto_b9
    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v5

    :goto_bd
    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public addZipExtensionIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1e

    if-lez v0, :cond_24

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    :cond_1e
    const-string v0, ".zip"

    invoke-static {p1, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

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

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_20

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    :cond_20
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "zip"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_44

    :cond_43
    const/4 p1, 0x0

    :goto_44
    return-object p1
.end method

.method public checkIfArchive(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/android/fileexplorer/model/ArchiveHelper;->ARCHIVE_EXTENSIONS_SET:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

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

    invoke-static {p3}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->checkSDRootPathWritable()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/model/ArchiveHelper;->compressZipArchiveZipByDocumentFile(Ljava/lang/ref/WeakReference;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_11
    sget-object p1, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    const-string p2, "compressZipArchive, no permission with external SD card."

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x11

    return p1

    :cond_1b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/model/ArchiveHelper;->compressZipArchiveZipNormal(Ljava/lang/ref/WeakReference;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result p1

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

    sget-object v0, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    const-string v1, "compressZipArchiveZipByDocumentFile"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    :try_start_9
    new-instance v3, Ljava/io/File;

    move-object/from16 v4, p3

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentFile(Ljava/io/File;)Ls0/a;

    move-result-object v3

    if-nez v3, :cond_25

    const-string v3, "compressZipArchiveZipByDocumentFile documentFile is null"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_dd
    .catchall {:try_start_9 .. :try_end_1b} :catchall_d9

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :cond_25
    :try_start_25
    check-cast v3, Ls0/c;

    iget-object v3, v3, Ls0/c;->c:Landroid/net/Uri;

    if-nez v3, :cond_3a

    const-string v3, "compressZipArchiveZipByDocumentFile uri is null"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_30} :catch_dd
    .catchall {:try_start_25 .. :try_end_30} :catchall_d9

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :cond_3a
    :try_start_3a
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "rw"

    invoke-virtual {v5, v3, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_48} :catch_dd
    .catchall {:try_start_3a .. :try_end_48} :catchall_d9

    if-nez v3, :cond_59

    :try_start_4a
    const-string v4, "compressZipArchiveZipByDocumentFile fd is null"

    invoke-static {v0, v4}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4f} :catch_d6
    .catchall {:try_start_4a .. :try_end_4f} :catchall_d3

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :cond_59
    :try_start_59
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_62} :catch_d6
    .catchall {:try_start_59 .. :try_end_62} :catchall_d3

    :try_start_62
    new-instance v13, Ll4/k;

    new-instance v0, Lm4/i;

    const/4 v6, 0x1

    const/16 v7, 0x1000

    invoke-direct {v0, v7, v6}, Lm4/i;-><init>(IZ)V

    new-instance v6, Lm4/n;

    invoke-direct {v6}, Lm4/n;-><init>()V

    invoke-direct {v13, v5, v2, v0, v6}, Ll4/k;-><init>(Ljava/io/OutputStream;[CLm4/i;Lm4/n;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_74} :catch_cf
    .catchall {:try_start_62 .. :try_end_74} :catchall_cb

    :try_start_74
    new-instance v0, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/ZipParameters;-><init>()V

    sget-object v2, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v2, v0, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    sget-object v2, Lnet/lingala/zip4j/model/enums/CompressionLevel;->ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iput-object v2, v0, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    new-array v2, v7, [B

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v15, 0x0

    move v6, v15

    :cond_89
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/fileexplorer/model/FileInfo;

    new-instance v8, Ljava/io/File;

    iget-object v6, v6, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v9, v0

    move-object v11, v13

    move-object v12, v2

    invoke-direct/range {v6 .. v12}, Lcom/android/fileexplorer/model/ArchiveHelper;->writeFileInfoToZip(Ljava/lang/ref/WeakReference;Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Ljava/lang/String;Ll4/k;[B)I

    move-result v6

    if-eqz v6, :cond_89

    sget-object v0, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    const-string v2, "writeFileInfoToZip error"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b2
    if-nez v6, :cond_c1

    invoke-static/range {p3 .. p3}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_b7} :catch_c8
    .catchall {:try_start_74 .. :try_end_b7} :catchall_c5

    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v13}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v15

    :cond_c1
    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_fe

    :catchall_c5
    move-exception v0

    move-object v2, v13

    goto :goto_cc

    :catch_c8
    move-exception v0

    move-object v2, v13

    goto :goto_d0

    :catchall_cb
    move-exception v0

    :goto_cc
    move-object v4, v2

    move-object v2, v5

    goto :goto_106

    :catch_cf
    move-exception v0

    :goto_d0
    move-object v4, v2

    move-object v2, v5

    goto :goto_e0

    :catchall_d3
    move-exception v0

    move-object v4, v2

    goto :goto_106

    :catch_d6
    move-exception v0

    move-object v4, v2

    goto :goto_e0

    :catchall_d9
    move-exception v0

    move-object v3, v2

    move-object v4, v3

    goto :goto_106

    :catch_dd
    move-exception v0

    move-object v3, v2

    move-object v4, v3

    :goto_e0
    :try_start_e0
    sget-object v5, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compressZipArchiveZipByDocumentFile error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fa
    .catchall {:try_start_e0 .. :try_end_fa} :catchall_105

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    move-object v13, v4

    :goto_fe
    invoke-static {v13}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :catchall_105
    move-exception v0

    :goto_106
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

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

    const/4 v0, 0x4

    :try_start_1
    new-instance v1, Lf4/a;

    invoke-direct {v1, p3}, Lf4/a;-><init>(Ljava/lang/String;)V

    new-instance v2, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v2}, Lnet/lingala/zip4j/model/ZipParameters;-><init>()V

    sget-object v3, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    sget-object v3, Lnet/lingala/zip4j/model/enums/CompressionLevel;->ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iput-object v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iget-object v3, v1, Lf4/a;->d:Lnet/lingala/zip4j/progress/ProgressMonitor;

    new-instance v4, Lcom/android/fileexplorer/model/ArchiveHelper$2;

    invoke-direct {v4, p0, p1, v3}, Lcom/android/fileexplorer/model/ArchiveHelper$2;-><init>(Lcom/android/fileexplorer/model/ArchiveHelper;Ljava/lang/ref/WeakReference;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    invoke-static {v4}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_21
    :goto_21
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x5

    if-eqz v4, :cond_55

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    new-instance v6, Ljava/io/File;

    iget-object v7, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v4, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v4, :cond_3d

    invoke-virtual {v1, v6, v2}, Lf4/a;->e(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    goto :goto_40

    :cond_3d
    invoke-virtual {v1, v6, v2}, Lf4/a;->a(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    :goto_40
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-boolean v7, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->e:Z

    if-eqz v7, :cond_4b

    return v5

    :cond_4b
    if-eqz v4, :cond_21

    invoke-static {v6}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->increaseProgressBy(J)V

    goto :goto_21

    :cond_55
    sget-object p1, Lcom/android/fileexplorer/model/ArchiveHelper$3;->$SwitchMap$net$lingala$zip4j$progress$ProgressMonitor$Result:[I

    iget-object p2, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_67

    const/4 p2, 0x2

    if-eq p1, p2, :cond_66

    return v0

    :cond_66
    return v5

    :cond_67
    invoke-static {p3}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V
    :try_end_6a
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_6a} :catch_6c

    const/4 p1, 0x0

    return p1

    :catch_6c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

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

    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_122

    invoke-static {p2}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_122

    :cond_10
    invoke-static {p2}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->noSDWritePermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object p1, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    const-string p2, "decompressArchive,need request permission"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x11

    return p1

    :cond_20
    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    const-string v1, "smb://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/model/ArchiveHelper;->unZipSmbFile(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_39
    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/model/ContentFile;->generateFromUri(Ljava/lang/String;)Lcom/android/fileexplorer/model/ContentFile;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/model/ContentFile;->isEmpty(Lcom/android/fileexplorer/model/ContentFile;)Z

    move-result v2

    if-eqz v2, :cond_51

    return v1

    :cond_51
    sget-object v9, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils;->URI_TEMP_DIR_PATH:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_58
    invoke-static {v2}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_68

    :catch_5c
    move-exception v2

    sget-object v3, Lcom/android/fileexplorer/model/ArchiveHelper;->TAG:Ljava/lang/String;

    const-string v4, "handleContentFile, delete archiveTempFile error: "

    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v4, v3}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_68
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, v9

    invoke-static/range {v2 .. v8}, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils;->copySingleFileToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;Ljava/lang/String;ZZZLcom/android/fileexplorer/filemanager/FileTransferParams;)I

    move-result v2

    if-eqz v2, :cond_7b

    return v2

    :cond_7b
    invoke-static {v9}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9d

    return v1

    :cond_9d
    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xc

    if-lez v0, :cond_121

    const-string v0, "eu.medsea.mimeutil.detector.MagicMimeMimeDetector"

    invoke-static {v0}, Leu/medsea/mimeutil/MimeUtil;->registerMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;

    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    invoke-static {v0}, Leu/medsea/mimeutil/MimeUtil;->getMimeTypes(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_120

    iget-object v1, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/android/fileexplorer/model/ArchiveHelper;->getArchiveRootFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_e4

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/lang/String;)Z

    goto :goto_e4

    :cond_e3
    return v4

    :cond_e4
    :goto_e4
    const-string v3, "zip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_110

    const-string v0, "ArchiveHelper"

    const-string v2, "decompressZip start"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    invoke-static {p1, v2, p2}, Lcom/android/fileexplorer/model/ZipUtils;->decompressZipArchive(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10a

    if-eq v2, v4, :cond_10a

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/android/fileexplorer/model/ArchiveHelper;->decompressZipArchive(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :cond_10a
    const-string p1, "decompressZip end"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_110
    const-string v1, "rar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11f

    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/fileexplorer/model/ArchiveHelper;->decompressRarArchive(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_11f
    return v2

    :cond_120
    return v1

    :cond_121
    return v2

    :cond_122
    :goto_122
    const/4 p1, 0x2

    return p1
.end method

.method public getArchivePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    return-object v0
.end method

.method public hasArchiveToDecompress()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setArchiveToDecompress(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/model/ArchiveHelper;->mArchivePath:Ljava/lang/String;

    return-void
.end method
