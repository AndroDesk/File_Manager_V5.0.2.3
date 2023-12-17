.class public Lorg/jaudiotagger/audio/AudioFile;
.super Ljava/lang/Object;
.source "AudioFile.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field public audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

.field public file:Ljava/io/File;

.field public tag:Lorg/jaudiotagger/tag/Tag;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.audio"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/jaudiotagger/audio/AudioHeader;Lorg/jaudiotagger/tag/Tag;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 4
    iput-object p2, p0, Lorg/jaudiotagger/audio/AudioFile;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    .line 5
    iput-object p3, p0, Lorg/jaudiotagger/audio/AudioFile;->tag:Lorg/jaudiotagger/tag/Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/audio/AudioHeader;Lorg/jaudiotagger/tag/Tag;)V
    .registers 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 8
    iput-object p2, p0, Lorg/jaudiotagger/audio/AudioFile;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    .line 9
    iput-object p3, p0, Lorg/jaudiotagger/audio/AudioFile;->tag:Lorg/jaudiotagger/tag/Tag;

    return-void
.end method

.method public static getBaseFilename(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "."

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_1a

    .line 17
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1a
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method


# virtual methods
.method public checkFileExists(Ljava/io/File;)V
    .registers 6

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "Reading file:path"

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v2, ":abs:"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_29

    .line 41
    return-void

    .line 42
    :cond_29
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 44
    const-string v1, "Unable to find:"

    .line 46
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 66
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->UNABLE_TO_FIND_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 68
    const/4 v2, 0x1

    .line 69
    new-array v2, v2, [Ljava/lang/Object;

    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    aput-object p1, v2, v3

    .line 78
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 85
    throw v0
.end method

.method public checkFilePermissions(Ljava/io/File;Z)Ljava/io/RandomAccessFile;
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/AudioFile;->checkFileExists(Ljava/io/File;)V

    .line 4
    if-eqz p2, :cond_d

    .line 6
    new-instance p2, Ljava/io/RandomAccessFile;

    .line 8
    const-string v0, "r"

    .line 10
    invoke-direct {p2, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    goto :goto_1a

    .line 14
    :cond_d
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_1b

    .line 20
    new-instance p2, Ljava/io/RandomAccessFile;

    .line 22
    const-string v0, "rws"

    .line 24
    invoke-direct {p2, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    :goto_1a
    return-object p2

    .line 28
    :cond_1b
    sget-object p2, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 30
    const-string v0, "Unable to write:"

    .line 32
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 50
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/ReadOnlyFileException;

    .line 52
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->NO_PERMISSIONS_TO_WRITE_TO_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 54
    const/4 v1, 0x1

    .line 55
    new-array v1, v1, [Ljava/lang/Object;

    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    aput-object p1, v1, v2

    .line 64
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p2, p1}, Lorg/jaudiotagger/audio/exceptions/ReadOnlyFileException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p2
.end method

.method public commit()V
    .registers 1

    .line 1
    invoke-static {p0}, Lorg/jaudiotagger/audio/AudioFileIO;->write(Lorg/jaudiotagger/audio/AudioFile;)V

    .line 4
    return-void
.end method

.method public createDefaultTag()Lorg/jaudiotagger/tag/Tag;
    .registers 5

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->FLAC:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 15
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    const/16 v3, 0x2e

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_31

    .line 35
    new-instance v0, Lorg/jaudiotagger/tag/flac/FlacTag;

    .line 37
    invoke-static {}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    .line 43
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/tag/flac/FlacTag;-><init>(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;Ljava/util/List;)V

    .line 49
    return-object v0

    .line 50
    :cond_31
    sget-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->OGG:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 52
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    iget-object v2, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 64
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 71
    move-result v2

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_56

    .line 82
    invoke-static {}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 85
    move-result-object v0

    .line 86
    return-object v0

    .line 87
    :cond_56
    sget-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->MP4:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 89
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    iget-object v1, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 95
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    iget-object v2, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 101
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 108
    move-result v2

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_7c

    .line 119
    new-instance v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;

    .line 121
    invoke-direct {v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;-><init>()V

    .line 124
    return-object v0

    .line 125
    :cond_7c
    sget-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->M4A:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 127
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 130
    move-result-object v0

    .line 131
    iget-object v1, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 133
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 136
    move-result-object v1

    .line 137
    iget-object v2, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 139
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 146
    move-result v2

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_a2

    .line 157
    new-instance v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;

    .line 159
    invoke-direct {v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;-><init>()V

    .line 162
    return-object v0

    .line 163
    :cond_a2
    sget-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->M4P:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 165
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    iget-object v1, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 171
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 174
    move-result-object v1

    .line 175
    iget-object v2, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 177
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 184
    move-result v2

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_c8

    .line 195
    new-instance v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;

    .line 197
    invoke-direct {v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;-><init>()V

    .line 200
    return-object v0

    .line 201
    :cond_c8
    sget-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->WMA:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 203
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 206
    move-result-object v0

    .line 207
    iget-object v1, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 209
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 212
    move-result-object v1

    .line 213
    iget-object v2, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 215
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 222
    move-result v2

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_ee

    .line 233
    new-instance v0, Lorg/jaudiotagger/tag/asf/AsfTag;

    .line 235
    invoke-direct {v0}, Lorg/jaudiotagger/tag/asf/AsfTag;-><init>()V

    .line 238
    return-object v0

    .line 239
    :cond_ee
    sget-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->WAV:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 241
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 244
    move-result-object v0

    .line 245
    iget-object v1, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 247
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 250
    move-result-object v1

    .line 251
    iget-object v2, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 253
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 260
    move-result v2

    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    move-result v0

    .line 269
    if-eqz v0, :cond_114

    .line 271
    new-instance v0, Lorg/jaudiotagger/audio/wav/WavTag;

    .line 273
    invoke-direct {v0}, Lorg/jaudiotagger/audio/wav/WavTag;-><init>()V

    .line 276
    return-object v0

    .line 277
    :cond_114
    sget-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->RA:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 279
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 282
    move-result-object v0

    .line 283
    iget-object v1, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 285
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 288
    move-result-object v1

    .line 289
    iget-object v2, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 291
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 298
    move-result v2

    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    move-result v0

    .line 307
    if-eqz v0, :cond_13a

    .line 309
    new-instance v0, Lorg/jaudiotagger/audio/real/RealTag;

    .line 311
    invoke-direct {v0}, Lorg/jaudiotagger/audio/real/RealTag;-><init>()V

    .line 314
    return-object v0

    .line 315
    :cond_13a
    sget-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->RM:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 317
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 320
    move-result-object v0

    .line 321
    iget-object v1, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 323
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 326
    move-result-object v1

    .line 327
    iget-object v2, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 329
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 332
    move-result-object v2

    .line 333
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 336
    move-result v2

    .line 337
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 340
    move-result-object v1

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    move-result v0

    .line 345
    if-eqz v0, :cond_160

    .line 347
    new-instance v0, Lorg/jaudiotagger/audio/real/RealTag;

    .line 349
    invoke-direct {v0}, Lorg/jaudiotagger/audio/real/RealTag;-><init>()V

    .line 352
    return-object v0

    .line 353
    :cond_160
    new-instance v0, Ljava/lang/RuntimeException;

    .line 355
    const-string v1, "Unable to create default tag for this file format"

    .line 357
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 360
    throw v0
.end method

.method public displayStructureAsPlainText()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public displayStructureAsXML()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getAudioHeader()Lorg/jaudiotagger/audio/AudioHeader;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFile;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    .line 3
    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 3
    return-object v0
.end method

.method public getTag()Lorg/jaudiotagger/tag/Tag;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFile;->tag:Lorg/jaudiotagger/tag/Tag;

    .line 3
    return-object v0
.end method

.method public getTagOrCreateAndSetDefault()Lorg/jaudiotagger/tag/Tag;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->getTag()Lorg/jaudiotagger/tag/Tag;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_d

    .line 7
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->createDefaultTag()Lorg/jaudiotagger/tag/Tag;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/AudioFile;->setTag(Lorg/jaudiotagger/tag/Tag;)V

    .line 14
    :cond_d
    return-object v0
.end method

.method public getTagOrCreateDefault()Lorg/jaudiotagger/tag/Tag;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->getTag()Lorg/jaudiotagger/tag/Tag;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_a

    .line 7
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->createDefaultTag()Lorg/jaudiotagger/tag/Tag;

    .line 10
    move-result-object v0

    .line 11
    :cond_a
    return-object v0
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 3
    return-void
.end method

.method public setTag(Lorg/jaudiotagger/tag/Tag;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/audio/AudioFile;->tag:Lorg/jaudiotagger/tag/Tag;

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "AudioFile "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, "  --------\n"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v1, p0, Lorg/jaudiotagger/audio/AudioFile;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, "\n"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Lorg/jaudiotagger/audio/AudioFile;->tag:Lorg/jaudiotagger/tag/Tag;

    .line 39
    if-nez v1, :cond_2b

    .line 41
    const-string v1, ""

    .line 43
    goto :goto_2f

    .line 44
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    :goto_2f
    const-string v2, "\n-------------------"

    .line 50
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method
