.class public abstract Lorg/jaudiotagger/audio/generic/AudioFileReader;
.super Ljava/lang/Object;
.source "AudioFileReader.java"


# static fields
.field private static final MINIMUM_SIZE_FOR_VALID_AUDIO_FILE:I = 0x96

.field public static logger:Ljava/util/logging/Logger;


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
    sput-object v0, Lorg/jaudiotagger/audio/generic/AudioFileReader;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
.end method

.method public abstract getTag(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/Tag;
.end method

.method public read(Ljava/io/File;)Lorg/jaudiotagger/audio/AudioFile;
    .registers 12

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileReader;->logger:Ljava/util/logging/Logger;

    .line 3
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_1f

    .line 13
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileReader;->logger:Ljava/util/logging/Logger;

    .line 15
    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_READ:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 17
    new-array v4, v2, [Ljava/lang/Object;

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 22
    move-result-object v5

    .line 23
    aput-object v5, v4, v1

    .line 25
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 32
    :cond_1f
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_e0

    .line 38
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 41
    move-result-wide v3

    .line 42
    const-wide/16 v5, 0x96

    .line 44
    cmp-long v0, v3, v5

    .line 46
    if-lez v0, :cond_cc

    .line 48
    const/4 v0, 0x0

    .line 49
    :try_start_30
    new-instance v3, Ljava/io/RandomAccessFile;

    .line 51
    const-string v4, "r"

    .line 53
    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_37
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_30 .. :try_end_37} :catch_aa
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_37} :catch_6f
    .catchall {:try_start_30 .. :try_end_37} :catchall_6a

    .line 56
    const-wide/16 v4, 0x0

    .line 58
    :try_start_39
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 61
    invoke-virtual {p0, v3}, Lorg/jaudiotagger/audio/generic/AudioFileReader;->getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 68
    invoke-virtual {p0, v3}, Lorg/jaudiotagger/audio/generic/AudioFileReader;->getTag(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/Tag;

    .line 71
    move-result-object v4

    .line 72
    new-instance v5, Lorg/jaudiotagger/audio/AudioFile;

    .line 74
    invoke-direct {v5, p1, v0, v4}, Lorg/jaudiotagger/audio/AudioFile;-><init>(Ljava/io/File;Lorg/jaudiotagger/audio/AudioHeader;Lorg/jaudiotagger/tag/Tag;)V
    :try_end_4c
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_39 .. :try_end_4c} :catch_68
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4c} :catch_66
    .catchall {:try_start_39 .. :try_end_4c} :catchall_af

    .line 77
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_50

    .line 80
    goto :goto_65

    .line 81
    :catch_50
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileReader;->logger:Ljava/util/logging/Logger;

    .line 83
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 85
    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_READ_FAILED_UNABLE_TO_CLOSE_RANDOM_ACCESS_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 87
    new-array v2, v2, [Ljava/lang/Object;

    .line 89
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    aput-object p1, v2, v1

    .line 95
    invoke-virtual {v4, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v0, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 102
    :goto_65
    return-object v5

    .line 103
    :catch_66
    move-exception v0

    .line 104
    goto :goto_73

    .line 105
    :catch_68
    move-exception v0

    .line 106
    goto :goto_ae

    .line 107
    :catchall_6a
    move-exception v3

    .line 108
    move-object v9, v3

    .line 109
    move-object v3, v0

    .line 110
    move-object v0, v9

    .line 111
    goto :goto_b0

    .line 112
    :catch_6f
    move-exception v3

    .line 113
    move-object v9, v3

    .line 114
    move-object v3, v0

    .line 115
    move-object v0, v9

    .line 116
    :goto_73
    :try_start_73
    sget-object v4, Lorg/jaudiotagger/audio/generic/AudioFileReader;->logger:Ljava/util/logging/Logger;

    .line 118
    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 120
    sget-object v6, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_READ:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 122
    new-array v7, v2, [Ljava/lang/Object;

    .line 124
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 127
    move-result-object v8

    .line 128
    aput-object v8, v7, v1

    .line 130
    invoke-virtual {v6, v7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    move-result-object v6

    .line 134
    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    new-instance v4, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v6, ":"

    .line 153
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 159
    move-result-object v6

    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v5

    .line 167
    invoke-direct {v4, v5, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    throw v4

    .line 171
    :catch_aa
    move-exception v3

    .line 172
    move-object v9, v3

    .line 173
    move-object v3, v0

    .line 174
    move-object v0, v9

    .line 175
    :goto_ae
    throw v0
    :try_end_af
    .catchall {:try_start_73 .. :try_end_af} :catchall_af

    .line 176
    :catchall_af
    move-exception v0

    .line 177
    :goto_b0
    if-eqz v3, :cond_cb

    .line 179
    :try_start_b2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_b6

    .line 182
    goto :goto_cb

    .line 183
    :catch_b6
    sget-object v3, Lorg/jaudiotagger/audio/generic/AudioFileReader;->logger:Ljava/util/logging/Logger;

    .line 185
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 187
    sget-object v5, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_READ_FAILED_UNABLE_TO_CLOSE_RANDOM_ACCESS_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 189
    new-array v2, v2, [Ljava/lang/Object;

    .line 191
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 194
    move-result-object p1

    .line 195
    aput-object p1, v2, v1

    .line 197
    invoke-virtual {v5, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {v3, v4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 204
    :cond_cb
    :goto_cb
    throw v0

    .line 205
    :cond_cc
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 207
    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_READ_FAILED_FILE_TOO_SMALL:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 209
    new-array v2, v2, [Ljava/lang/Object;

    .line 211
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 214
    move-result-object p1

    .line 215
    aput-object p1, v2, v1

    .line 217
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    move-result-object p1

    .line 221
    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 224
    throw v0

    .line 225
    :cond_e0
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 227
    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_READ_FAILED_FILE_TOO_SMALL:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 229
    new-array v2, v2, [Ljava/lang/Object;

    .line 231
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 234
    move-result-object p1

    .line 235
    aput-object p1, v2, v1

    .line 237
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 240
    move-result-object p1

    .line 241
    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 244
    throw v0
.end method
