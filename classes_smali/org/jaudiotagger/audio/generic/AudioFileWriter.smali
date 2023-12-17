.class public abstract Lorg/jaudiotagger/audio/generic/AudioFileWriter;
.super Ljava/lang/Object;
.source "AudioFileWriter.java"


# static fields
.field private static final MINIMUM_FILESIZE:I = 0x96

.field private static final TEMP_FILENAME_SUFFIX:Ljava/lang/String; = ".tmp"

.field private static final WRITE_MODE:Ljava/lang/String; = "rws"

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.audio.generic"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    .line 7
    return-void
.end method

.method private precheckWrite(Lorg/jaudiotagger/audio/AudioFile;)V
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_2
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getTag()Lorg/jaudiotagger/tag/Tag;

    .line 6
    move-result-object v2

    .line 7
    invoke-interface {v2}, Lorg/jaudiotagger/tag/Tag;->isEmpty()Z

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_10

    .line 13
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->delete(Lorg/jaudiotagger/audio/AudioFile;)V
    :try_end_f
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_2 .. :try_end_f} :catch_83

    .line 16
    return-void

    .line 17
    :cond_10
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_56

    .line 27
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 34
    move-result-wide v2

    .line 35
    const-wide/16 v4, 0x96

    .line 37
    cmp-long v2, v2, v4

    .line 39
    if-lez v2, :cond_29

    .line 41
    return-void

    .line 42
    :cond_29
    sget-object v2, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    .line 44
    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_IS_TOO_SMALL:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 46
    new-array v4, v1, [Ljava/lang/Object;

    .line 48
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 55
    move-result-object v5

    .line 56
    aput-object v5, v4, v0

    .line 58
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 65
    new-instance v2, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 67
    new-array v1, v1, [Ljava/lang/Object;

    .line 69
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    aput-object p1, v1, v0

    .line 79
    invoke-virtual {v3, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    invoke-direct {v2, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    .line 86
    throw v2

    .line 87
    :cond_56
    sget-object v2, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    .line 89
    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 91
    new-array v4, v1, [Ljava/lang/Object;

    .line 93
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 100
    move-result-object v5

    .line 101
    aput-object v5, v4, v0

    .line 103
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 110
    new-instance v2, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 112
    new-array v1, v1, [Ljava/lang/Object;

    .line 114
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    aput-object p1, v1, v0

    .line 124
    invoke-virtual {v3, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    invoke-direct {v2, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    .line 131
    throw v2

    .line 132
    :catch_83
    new-instance v2, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 134
    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 136
    new-array v1, v1, [Ljava/lang/Object;

    .line 138
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 146
    aput-object p1, v1, v0

    .line 148
    invoke-virtual {v3, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    move-result-object p1

    .line 152
    invoke-direct {v2, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    .line 155
    throw v2
.end method


# virtual methods
.method public declared-synchronized delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 5

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 55
    :try_start_3
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 56
    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 57
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 58
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized delete(Lorg/jaudiotagger/audio/AudioFile;)V
    .registers 15

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_30a

    .line 2
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_322

    const-wide/16 v5, 0x96

    cmp-long v0, v3, v5

    if-lez v0, :cond_2f2

    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    .line 3
    :try_start_1f
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2e

    const/16 v8, 0x5f

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-static {v6, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3d} :catch_1a8
    .catchall {:try_start_1f .. :try_end_3d} :catchall_1a1

    .line 4
    :try_start_3d
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v8, "rws"

    invoke-direct {v7, v6, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_44} :catch_19c
    .catchall {:try_start_3d .. :try_end_44} :catchall_196

    .line 5
    :try_start_44
    new-instance v8, Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v9

    const-string v10, "rws"

    invoke-direct {v8, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4f} :catch_191
    .catchall {:try_start_44 .. :try_end_4f} :catchall_18b

    .line 6
    :try_start_4f
    invoke-virtual {v8, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 7
    invoke-virtual {v7, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_55} :catch_189
    .catchall {:try_start_4f .. :try_end_55} :catchall_185

    .line 8
    :try_start_55
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    if-eqz v0, :cond_5c

    .line 9
    invoke-interface {v0, p1, v2}, Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;->fileWillBeModified(Lorg/jaudiotagger/audio/AudioFile;Z)V

    .line 10
    :cond_5c
    invoke-virtual {p0, v8, v7}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 11
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    if-eqz v0, :cond_66

    .line 12
    invoke-interface {v0, p1, v6}, Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;->fileModified(Lorg/jaudiotagger/audio/AudioFile;Ljava/io/File;)V
    :try_end_66
    .catch Lorg/jaudiotagger/audio/exceptions/ModifyVetoException; {:try_start_55 .. :try_end_66} :catch_17e
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_66} :catch_189
    .catchall {:try_start_55 .. :try_end_66} :catchall_185

    .line 13
    :cond_66
    :try_start_66
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v0
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_322

    .line 14
    :try_start_6a
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 15
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 16
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v3, v7, v3

    if-lez v3, :cond_123

    .line 17
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 18
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_8a} :catch_13e
    .catchall {:try_start_6a .. :try_end_8a} :catchall_322

    if-eqz v3, :cond_b1

    .line 19
    :try_start_8c
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_175

    .line 20
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_175

    .line 21
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v3, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_ab} :catch_ad
    .catchall {:try_start_8c .. :try_end_ab} :catchall_322

    goto/16 :goto_175

    :catch_ad
    move-exception v0

    move-object v1, v6

    goto/16 :goto_142

    .line 22
    :cond_b1
    :try_start_b1
    sget-object v3, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_TO_ORIGINAL_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v4, v7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 23
    new-instance v3, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 24
    :cond_ea
    sget-object v3, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_ORIGINAL_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v4, v7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 25
    new-instance v3, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 26
    :cond_123
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_13c

    .line 27
    sget-object v3, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v4, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_13c} :catch_13e
    .catchall {:try_start_b1 .. :try_end_13c} :catchall_322

    :cond_13c
    move-object v6, v0

    goto :goto_175

    :catch_13e
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    .line 28
    :goto_142
    :try_start_142
    sget-object v2, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioFileWriter exception cleaning up delete:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " or"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    move-object v6, v1

    .line 29
    :cond_175
    :goto_175
    iget-object p1, p0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    if-eqz p1, :cond_17c

    .line 30
    invoke-interface {p1, v6}, Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;->fileOperationFinished(Ljava/io/File;)V
    :try_end_17c
    .catchall {:try_start_142 .. :try_end_17c} :catchall_322

    .line 31
    :cond_17c
    monitor-exit p0

    return-void

    :catch_17e
    move-exception v0

    .line 32
    :try_start_17f
    new-instance v9, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    invoke-direct {v9, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_185} :catch_189
    .catchall {:try_start_17f .. :try_end_185} :catchall_185

    :catchall_185
    move-exception v0

    move v9, v1

    goto/16 :goto_1d6

    :catch_189
    move-exception v0

    goto :goto_1ad

    :catchall_18b
    move-exception v8

    move v9, v1

    move-object v12, v8

    move-object v8, v0

    move-object v0, v12

    goto :goto_1d6

    :catch_191
    move-exception v8

    move-object v12, v8

    move-object v8, v0

    move-object v0, v12

    goto :goto_1ad

    :catchall_196
    move-exception v7

    move-object v8, v0

    move v9, v1

    move-object v0, v7

    move-object v7, v8

    goto :goto_1d6

    :catch_19c
    move-exception v7

    move-object v8, v0

    move-object v0, v7

    move-object v7, v8

    goto :goto_1ad

    :catchall_1a1
    move-exception v6

    move-object v7, v0

    move-object v8, v7

    move v9, v1

    move-object v0, v6

    move-object v6, v8

    goto :goto_1d6

    :catch_1a8
    move-exception v6

    move-object v7, v0

    move-object v8, v7

    move-object v0, v6

    move-object v6, v8

    .line 33
    :goto_1ad
    :try_start_1ad
    new-instance v9, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\" :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_1d4
    .catchall {:try_start_1ad .. :try_end_1d4} :catchall_1d4

    :catchall_1d4
    move-exception v0

    move v9, v2

    .line 34
    :goto_1d6
    :try_start_1d6
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v10
    :try_end_1da
    .catchall {:try_start_1d6 .. :try_end_1da} :catchall_322

    if-eqz v8, :cond_1e3

    .line 35
    :try_start_1dc
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_1e3

    :catch_1e0
    move-exception v1

    goto/16 :goto_2b7

    :cond_1e3
    :goto_1e3
    if-eqz v7, :cond_1e8

    .line 36
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 37
    :cond_1e8
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v3, v7, v3

    if-lez v3, :cond_29d

    if-nez v9, :cond_29d

    .line 38
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_264

    .line 39
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3
    :try_end_204
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_204} :catch_1e0
    .catchall {:try_start_1dc .. :try_end_204} :catchall_322

    if-eqz v3, :cond_22b

    .line 40
    :try_start_206
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2ea

    .line 41
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2ea

    .line 42
    sget-object v3, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v4, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_225
    .catch Ljava/lang/Exception; {:try_start_206 .. :try_end_225} :catch_227
    .catchall {:try_start_206 .. :try_end_225} :catchall_322

    goto/16 :goto_2ea

    :catch_227
    move-exception v1

    move-object v10, v6

    goto/16 :goto_2b7

    .line 43
    :cond_22b
    :try_start_22b
    sget-object v3, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_TO_ORIGINAL_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v4, v7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 44
    new-instance v3, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 45
    :cond_264
    sget-object v3, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_ORIGINAL_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v4, v7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 46
    new-instance v3, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 47
    :cond_29d
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2e9

    .line 48
    sget-object v3, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v4, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_2b6
    .catch Ljava/lang/Exception; {:try_start_22b .. :try_end_2b6} :catch_1e0
    .catchall {:try_start_22b .. :try_end_2b6} :catchall_322

    goto :goto_2e9

    .line 49
    :goto_2b7
    :try_start_2b7
    sget-object v2, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioFileWriter exception cleaning up delete:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " or"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    :cond_2e9
    :goto_2e9
    move-object v6, v10

    .line 50
    :cond_2ea
    :goto_2ea
    iget-object p1, p0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    if-eqz p1, :cond_2f1

    .line 51
    invoke-interface {p1, v6}, Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;->fileOperationFinished(Ljava/io/File;)V

    .line 52
    :cond_2f1
    throw v0

    .line 53
    :cond_2f2
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_DELETE_FAILED:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v3, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_30a
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_DELETE_FAILED:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v3, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_322
    .catchall {:try_start_2b7 .. :try_end_322} :catchall_322

    :catchall_322
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
.end method

.method public declared-synchronized setAudioFileModificationListener(Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;)V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iput-object p1, p0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_5
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method public declared-synchronized write(Lorg/jaudiotagger/audio/AudioFile;)V
    .registers 16

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v2, "Started writing tag data for file:"

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->precheckWrite(Lorg/jaudiotagger/audio/AudioFile;)V

    .line 35
    instance-of v0, p1, Lorg/jaudiotagger/audio/mp3/MP3File;

    .line 37
    if-eqz v0, :cond_2b

    .line 39
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->commit()V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_3a0

    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :cond_2b
    const/4 v0, 0x0

    .line 45
    const/4 v1, 0x2

    .line 46
    const/4 v2, 0x0

    .line 47
    const/4 v3, 0x1

    .line 48
    :try_start_2f
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    const/16 v5, 0x2e

    .line 58
    const/16 v6, 0x5f

    .line 60
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 63
    move-result-object v4

    .line 64
    const-string v5, ".tmp"

    .line 66
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 73
    move-result-object v6

    .line 74
    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 77
    move-result-object v4
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_4d} :catch_354
    .catchall {:try_start_2f .. :try_end_4d} :catchall_3a0

    .line 78
    :try_start_4d
    new-instance v5, Ljava/io/RandomAccessFile;

    .line 80
    const-string v6, "rws"

    .line 82
    invoke-direct {v5, v4, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_54} :catch_2e4
    .catchall {:try_start_4d .. :try_end_54} :catchall_3a0

    .line 85
    :try_start_54
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 87
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 90
    move-result-object v6

    .line 91
    const-string v7, "rws"

    .line 93
    invoke-direct {v0, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5f} :catch_2e2
    .catchall {:try_start_54 .. :try_end_5f} :catchall_3a0

    .line 96
    const-wide/16 v6, 0x0

    .line 98
    :try_start_61
    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 101
    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_67} :catch_244
    .catchall {:try_start_61 .. :try_end_67} :catchall_242

    .line 104
    :try_start_67
    iget-object v8, p0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    .line 106
    if-eqz v8, :cond_6e

    .line 108
    invoke-interface {v8, p1, v2}, Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;->fileWillBeModified(Lorg/jaudiotagger/audio/AudioFile;Z)V

    .line 111
    :cond_6e
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getTag()Lorg/jaudiotagger/tag/Tag;

    .line 114
    move-result-object v8

    .line 115
    invoke-virtual {p0, v8, v0, v5}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->writeTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 118
    iget-object v8, p0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    .line 120
    if-eqz v8, :cond_7c

    .line 122
    invoke-interface {v8, p1, v4}, Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;->fileModified(Lorg/jaudiotagger/audio/AudioFile;Ljava/io/File;)V
    :try_end_7c
    .catch Lorg/jaudiotagger/audio/exceptions/ModifyVetoException; {:try_start_67 .. :try_end_7c} :catch_23b
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_7c} :catch_244
    .catchall {:try_start_67 .. :try_end_7c} :catchall_242

    .line 125
    :cond_7c
    :try_start_7c
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 128
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_82} :catch_83
    .catchall {:try_start_7c .. :try_end_82} :catchall_3a0

    .line 131
    goto :goto_a3

    .line 132
    :catch_83
    move-exception v0

    .line 133
    :try_start_84
    sget-object v5, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    .line 135
    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 137
    sget-object v9, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_PROBLEM_CLOSING_FILE_HANDLE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 139
    new-array v10, v1, [Ljava/lang/Object;

    .line 141
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 144
    move-result-object v11

    .line 145
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 148
    move-result-object v11

    .line 149
    aput-object v11, v10, v2

    .line 151
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 154
    move-result-object v11

    .line 155
    aput-object v11, v10, v3

    .line 157
    invoke-virtual {v9, v10}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    move-result-object v9

    .line 161
    invoke-virtual {v5, v8, v9, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    :goto_a3
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 171
    move-result-wide v8

    .line 172
    cmp-long v5, v8, v6

    .line 174
    if-lez v5, :cond_219

    .line 176
    new-instance v5, Ljava/io/File;

    .line 178
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 181
    move-result-object v6

    .line 182
    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 185
    move-result-object v6

    .line 186
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 189
    move-result-object v6

    .line 190
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 193
    move-result-object v6

    .line 194
    new-instance v7, Ljava/lang/StringBuilder;

    .line 196
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 202
    move-result-object v8

    .line 203
    invoke-static {v8}, Lorg/jaudiotagger/audio/AudioFile;->getBaseFilename(Ljava/io/File;)Ljava/lang/String;

    .line 206
    move-result-object v8

    .line 207
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v8, ".old"

    .line 212
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object v7

    .line 219
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    move v6, v3

    .line 223
    :goto_de
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 226
    move-result v7

    .line 227
    if-eqz v7, :cond_118

    .line 229
    new-instance v5, Ljava/io/File;

    .line 231
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 234
    move-result-object v7

    .line 235
    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 238
    move-result-object v7

    .line 239
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 242
    move-result-object v7

    .line 243
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 246
    move-result-object v7

    .line 247
    new-instance v8, Ljava/lang/StringBuilder;

    .line 249
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 255
    move-result-object v9

    .line 256
    invoke-static {v9}, Lorg/jaudiotagger/audio/AudioFile;->getBaseFilename(Ljava/io/File;)Ljava/lang/String;

    .line 259
    move-result-object v9

    .line 260
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v9, ".old"

    .line 265
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    move-result-object v8

    .line 275
    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    add-int/lit8 v6, v6, 0x1

    .line 280
    goto :goto_de

    .line 281
    :cond_118
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 284
    move-result-object v6

    .line 285
    invoke-static {v6, v5}, Lorg/jaudiotagger/audio/generic/Utils;->rename(Ljava/io/File;Ljava/io/File;)Z

    .line 288
    move-result v6

    .line 289
    if-eqz v6, :cond_1de

    .line 291
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 294
    move-result-object v6

    .line 295
    invoke-static {v4, v6}, Lorg/jaudiotagger/audio/generic/Utils;->rename(Ljava/io/File;Ljava/io/File;)Z

    .line 298
    move-result v6

    .line 299
    if-nez v6, :cond_1a5

    .line 301
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 304
    move-result v0

    .line 305
    if-nez v0, :cond_145

    .line 307
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    .line 309
    sget-object v6, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_NEW_FILE_DOESNT_EXIST:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 311
    new-array v7, v3, [Ljava/lang/Object;

    .line 313
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 316
    move-result-object v8

    .line 317
    aput-object v8, v7, v2

    .line 319
    invoke-virtual {v6, v7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 322
    move-result-object v6

    .line 323
    invoke-virtual {v0, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 326
    :cond_145
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v5, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 333
    move-result v0

    .line 334
    if-nez v0, :cond_16c

    .line 336
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    .line 338
    sget-object v6, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_ORIGINAL_BACKUP_TO_ORIGINAL:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 340
    new-array v7, v1, [Ljava/lang/Object;

    .line 342
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 345
    move-result-object v5

    .line 346
    aput-object v5, v7, v2

    .line 348
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 351
    move-result-object v5

    .line 352
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 355
    move-result-object v5

    .line 356
    aput-object v5, v7, v3

    .line 358
    invoke-virtual {v6, v7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 361
    move-result-object v5

    .line 362
    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 365
    :cond_16c
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    .line 367
    sget-object v5, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_TO_ORIGINAL_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 369
    new-array v6, v1, [Ljava/lang/Object;

    .line 371
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 374
    move-result-object v7

    .line 375
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 378
    move-result-object v7

    .line 379
    aput-object v7, v6, v2

    .line 381
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 384
    move-result-object v7

    .line 385
    aput-object v7, v6, v3

    .line 387
    invoke-virtual {v5, v6}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 390
    move-result-object v6

    .line 391
    invoke-virtual {v0, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 394
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 396
    new-array v1, v1, [Ljava/lang/Object;

    .line 398
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 401
    move-result-object p1

    .line 402
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 405
    move-result-object p1

    .line 406
    aput-object p1, v1, v2

    .line 408
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 411
    move-result-object p1

    .line 412
    aput-object p1, v1, v3

    .line 414
    invoke-virtual {v5, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 417
    move-result-object p1

    .line 418
    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    .line 421
    throw v0

    .line 422
    :cond_1a5
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 425
    move-result p1

    .line 426
    if-nez p1, :cond_1be

    .line 428
    sget-object p1, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    .line 430
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_WARNING_UNABLE_TO_DELETE_BACKUP_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 432
    new-array v6, v3, [Ljava/lang/Object;

    .line 434
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 437
    move-result-object v5

    .line 438
    aput-object v5, v6, v2

    .line 440
    invoke-virtual {v1, v6}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 443
    move-result-object v1

    .line 444
    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 447
    :cond_1be
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 450
    move-result p1

    .line 451
    if-eqz p1, :cond_232

    .line 453
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 456
    move-result p1

    .line 457
    if-nez p1, :cond_232

    .line 459
    sget-object p1, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    .line 461
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 463
    new-array v3, v3, [Ljava/lang/Object;

    .line 465
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 468
    move-result-object v4

    .line 469
    aput-object v4, v3, v2

    .line 471
    invoke-virtual {v1, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 474
    move-result-object v1

    .line 475
    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 478
    goto :goto_232

    .line 479
    :cond_1de
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    .line 481
    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 483
    sget-object v6, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_ORIGINAL_FILE_TO_BACKUP:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 485
    new-array v7, v1, [Ljava/lang/Object;

    .line 487
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 490
    move-result-object v8

    .line 491
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 494
    move-result-object v8

    .line 495
    aput-object v8, v7, v2

    .line 497
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 500
    move-result-object v8

    .line 501
    aput-object v8, v7, v3

    .line 503
    invoke-virtual {v6, v7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 506
    move-result-object v7

    .line 507
    invoke-virtual {v0, v4, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 510
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 512
    new-array v1, v1, [Ljava/lang/Object;

    .line 514
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 517
    move-result-object p1

    .line 518
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 521
    move-result-object p1

    .line 522
    aput-object p1, v1, v2

    .line 524
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 527
    move-result-object p1

    .line 528
    aput-object p1, v1, v3

    .line 530
    invoke-virtual {v6, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 533
    move-result-object p1

    .line 534
    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    .line 537
    throw v0

    .line 538
    :cond_219
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 541
    move-result p1

    .line 542
    if-nez p1, :cond_232

    .line 544
    sget-object p1, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    .line 546
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 548
    new-array v3, v3, [Ljava/lang/Object;

    .line 550
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 553
    move-result-object v4

    .line 554
    aput-object v4, v3, v2

    .line 556
    invoke-virtual {v1, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 559
    move-result-object v1

    .line 560
    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 563
    :cond_232
    :goto_232
    iget-object p1, p0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    .line 565
    if-eqz p1, :cond_239

    .line 567
    invoke-interface {p1, v0}, Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;->fileOperationFinished(Ljava/io/File;)V
    :try_end_239
    .catchall {:try_start_84 .. :try_end_239} :catchall_3a0

    .line 570
    :cond_239
    monitor-exit p0

    .line 571
    return-void

    .line 572
    :catch_23b
    move-exception v6

    .line 573
    :try_start_23c
    new-instance v7, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 575
    invoke-direct {v7, v6}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/Throwable;)V

    .line 578
    throw v7
    :try_end_242
    .catch Ljava/lang/Exception; {:try_start_23c .. :try_end_242} :catch_244
    .catchall {:try_start_23c .. :try_end_242} :catchall_242

    .line 579
    :catchall_242
    move-exception v4

    .line 580
    goto :goto_2ba

    .line 581
    :catch_244
    move-exception v6

    .line 582
    :try_start_245
    sget-object v7, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    .line 584
    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 586
    sget-object v9, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 588
    new-array v10, v1, [Ljava/lang/Object;

    .line 590
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 593
    move-result-object v11

    .line 594
    aput-object v11, v10, v2

    .line 596
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 599
    move-result-object v11

    .line 600
    aput-object v11, v10, v3

    .line 602
    invoke-virtual {v9, v10}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 605
    move-result-object v9

    .line 606
    invoke-virtual {v7, v8, v9, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_260
    .catchall {:try_start_245 .. :try_end_260} :catchall_242

    .line 609
    :try_start_260
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 612
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_266
    .catch Ljava/io/IOException; {:try_start_260 .. :try_end_266} :catch_267
    .catchall {:try_start_260 .. :try_end_266} :catchall_242

    .line 615
    goto :goto_287

    .line 616
    :catch_267
    move-exception v7

    .line 617
    :try_start_268
    sget-object v8, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    .line 619
    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 621
    sget-object v10, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_PROBLEM_CLOSING_FILE_HANDLE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 623
    new-array v11, v1, [Ljava/lang/Object;

    .line 625
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 628
    move-result-object v12

    .line 629
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 632
    move-result-object v12

    .line 633
    aput-object v12, v11, v2

    .line 635
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 638
    move-result-object v12

    .line 639
    aput-object v12, v11, v3

    .line 641
    invoke-virtual {v10, v11}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 644
    move-result-object v10

    .line 645
    invoke-virtual {v8, v9, v10, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 648
    :goto_287
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 651
    move-result v7

    .line 652
    if-nez v7, :cond_2a0

    .line 654
    sget-object v7, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    .line 656
    sget-object v8, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 658
    new-array v9, v3, [Ljava/lang/Object;

    .line 660
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 663
    move-result-object v4

    .line 664
    aput-object v4, v9, v2

    .line 666
    invoke-virtual {v8, v9}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 669
    move-result-object v4

    .line 670
    invoke-virtual {v7, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 673
    :cond_2a0
    new-instance v4, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 675
    sget-object v7, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 677
    new-array v8, v1, [Ljava/lang/Object;

    .line 679
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 682
    move-result-object v9

    .line 683
    aput-object v9, v8, v2

    .line 685
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 688
    move-result-object v6

    .line 689
    aput-object v6, v8, v3

    .line 691
    invoke-virtual {v7, v8}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 694
    move-result-object v6

    .line 695
    invoke-direct {v4, v6}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    .line 698
    throw v4
    :try_end_2ba
    .catchall {:try_start_268 .. :try_end_2ba} :catchall_242

    .line 699
    :goto_2ba
    :try_start_2ba
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 702
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2c0
    .catch Ljava/io/IOException; {:try_start_2ba .. :try_end_2c0} :catch_2c1
    .catchall {:try_start_2ba .. :try_end_2c0} :catchall_3a0

    .line 705
    goto :goto_2e1

    .line 706
    :catch_2c1
    move-exception v0

    .line 707
    :try_start_2c2
    sget-object v5, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    .line 709
    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 711
    sget-object v7, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_PROBLEM_CLOSING_FILE_HANDLE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 713
    new-array v1, v1, [Ljava/lang/Object;

    .line 715
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 718
    move-result-object p1

    .line 719
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 722
    move-result-object p1

    .line 723
    aput-object p1, v1, v2

    .line 725
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 728
    move-result-object p1

    .line 729
    aput-object p1, v1, v3

    .line 731
    invoke-virtual {v7, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 734
    move-result-object p1

    .line 735
    invoke-virtual {v5, v6, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 738
    :goto_2e1
    throw v4

    .line 739
    :catch_2e2
    move-exception v0

    .line 740
    goto :goto_2e8

    .line 741
    :catch_2e4
    move-exception v5

    .line 742
    move-object v13, v5

    .line 743
    move-object v5, v0

    .line 744
    move-object v0, v13

    .line 745
    :goto_2e8
    sget-object v6, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    .line 747
    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 749
    sget-object v8, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 751
    new-array v9, v3, [Ljava/lang/Object;

    .line 753
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 756
    move-result-object v10

    .line 757
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 760
    move-result-object v10

    .line 761
    aput-object v10, v9, v2

    .line 763
    invoke-virtual {v8, v9}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 766
    move-result-object v8

    .line 767
    invoke-virtual {v6, v7, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_301
    .catchall {:try_start_2c2 .. :try_end_301} :catchall_3a0

    .line 770
    if-eqz v5, :cond_323

    .line 772
    :try_start_303
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_306
    .catch Ljava/io/IOException; {:try_start_303 .. :try_end_306} :catch_307
    .catchall {:try_start_303 .. :try_end_306} :catchall_3a0

    .line 775
    goto :goto_323

    .line 776
    :catch_307
    move-exception v5

    .line 777
    :try_start_308
    sget-object v6, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    .line 779
    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 781
    sget-object v8, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_PROBLEM_CLOSING_FILE_HANDLE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 783
    new-array v1, v1, [Ljava/lang/Object;

    .line 785
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 788
    move-result-object v9

    .line 789
    aput-object v9, v1, v2

    .line 791
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 794
    move-result-object v0

    .line 795
    aput-object v0, v1, v3

    .line 797
    invoke-virtual {v8, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 800
    move-result-object v0

    .line 801
    invoke-virtual {v6, v7, v0, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 804
    :cond_323
    :goto_323
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 807
    move-result v0

    .line 808
    if-nez v0, :cond_33c

    .line 810
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    .line 812
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 814
    new-array v5, v3, [Ljava/lang/Object;

    .line 816
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 819
    move-result-object v4

    .line 820
    aput-object v4, v5, v2

    .line 822
    invoke-virtual {v1, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 825
    move-result-object v1

    .line 826
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 829
    :cond_33c
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 831
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 833
    new-array v3, v3, [Ljava/lang/Object;

    .line 835
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 838
    move-result-object p1

    .line 839
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 842
    move-result-object p1

    .line 843
    aput-object p1, v3, v2

    .line 845
    invoke-virtual {v1, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 848
    move-result-object p1

    .line 849
    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    .line 852
    throw v0

    .line 853
    :catch_354
    move-exception v0

    .line 854
    sget-object v4, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    .line 856
    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 858
    sget-object v6, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_CREATE_TEMPORARY_FILE_IN_FOLDER:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 860
    new-array v7, v1, [Ljava/lang/Object;

    .line 862
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 865
    move-result-object v8

    .line 866
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 869
    move-result-object v8

    .line 870
    aput-object v8, v7, v2

    .line 872
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 875
    move-result-object v8

    .line 876
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 879
    move-result-object v8

    .line 880
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 883
    move-result-object v8

    .line 884
    aput-object v8, v7, v3

    .line 886
    invoke-virtual {v6, v7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 889
    move-result-object v7

    .line 890
    invoke-virtual {v4, v5, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 893
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 895
    new-array v1, v1, [Ljava/lang/Object;

    .line 897
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 900
    move-result-object v4

    .line 901
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 904
    move-result-object v4

    .line 905
    aput-object v4, v1, v2

    .line 907
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 910
    move-result-object p1

    .line 911
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 914
    move-result-object p1

    .line 915
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 918
    move-result-object p1

    .line 919
    aput-object p1, v1, v3

    .line 921
    invoke-virtual {v6, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 924
    move-result-object p1

    .line 925
    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    .line 928
    throw v0
    :try_end_3a0
    .catchall {:try_start_308 .. :try_end_3a0} :catchall_3a0

    .line 929
    :catchall_3a0
    move-exception p1

    .line 930
    monitor-exit p0

    .line 931
    throw p1
.end method

.method public abstract writeTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
.end method
