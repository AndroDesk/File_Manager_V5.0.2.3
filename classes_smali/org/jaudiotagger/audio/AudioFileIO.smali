.class public Lorg/jaudiotagger/audio/AudioFileIO;
.super Ljava/lang/Object;
.source "AudioFileIO.java"


# static fields
.field private static defaultInstance:Lorg/jaudiotagger/audio/AudioFileIO;

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private final modificationHandler:Lorg/jaudiotagger/audio/generic/ModificationHandler;

.field private readers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/audio/generic/AudioFileReader;",
            ">;"
        }
    .end annotation
.end field

.field private writers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/audio/generic/AudioFileWriter;",
            ">;"
        }
    .end annotation
.end field


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
    sput-object v0, Lorg/jaudiotagger/audio/AudioFileIO;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    .line 18
    new-instance v0, Lorg/jaudiotagger/audio/generic/ModificationHandler;

    .line 20
    invoke-direct {v0}, Lorg/jaudiotagger/audio/generic/ModificationHandler;-><init>()V

    .line 23
    iput-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->modificationHandler:Lorg/jaudiotagger/audio/generic/ModificationHandler;

    .line 25
    invoke-direct {p0}, Lorg/jaudiotagger/audio/AudioFileIO;->prepareReadersAndWriters()V

    .line 28
    return-void
.end method

.method public static delete(Lorg/jaudiotagger/audio/AudioFile;)V
    .registers 2

    .line 1
    invoke-static {}, Lorg/jaudiotagger/audio/AudioFileIO;->getDefaultAudioFileIO()Lorg/jaudiotagger/audio/AudioFileIO;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/audio/AudioFileIO;->deleteTag(Lorg/jaudiotagger/audio/AudioFile;)V

    .line 8
    return-void
.end method

.method public static getDefaultAudioFileIO()Lorg/jaudiotagger/audio/AudioFileIO;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/AudioFileIO;->defaultInstance:Lorg/jaudiotagger/audio/AudioFileIO;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lorg/jaudiotagger/audio/AudioFileIO;

    .line 7
    invoke-direct {v0}, Lorg/jaudiotagger/audio/AudioFileIO;-><init>()V

    .line 10
    sput-object v0, Lorg/jaudiotagger/audio/AudioFileIO;->defaultInstance:Lorg/jaudiotagger/audio/AudioFileIO;

    .line 12
    :cond_b
    sget-object v0, Lorg/jaudiotagger/audio/AudioFileIO;->defaultInstance:Lorg/jaudiotagger/audio/AudioFileIO;

    .line 14
    return-object v0
.end method

.method private prepareReadersAndWriters()V
    .registers 13

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    .line 3
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->OGG:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 5
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Lorg/jaudiotagger/audio/ogg/OggFileReader;

    .line 11
    invoke-direct {v3}, Lorg/jaudiotagger/audio/ogg/OggFileReader;-><init>()V

    .line 14
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    .line 19
    sget-object v2, Lorg/jaudiotagger/audio/SupportedFileFormat;->FLAC:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 21
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    new-instance v4, Lorg/jaudiotagger/audio/flac/FlacFileReader;

    .line 27
    invoke-direct {v4}, Lorg/jaudiotagger/audio/flac/FlacFileReader;-><init>()V

    .line 30
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    .line 35
    sget-object v3, Lorg/jaudiotagger/audio/SupportedFileFormat;->MP3:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 37
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 40
    move-result-object v4

    .line 41
    new-instance v5, Lorg/jaudiotagger/audio/mp3/MP3FileReader;

    .line 43
    invoke-direct {v5}, Lorg/jaudiotagger/audio/mp3/MP3FileReader;-><init>()V

    .line 46
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    .line 51
    sget-object v4, Lorg/jaudiotagger/audio/SupportedFileFormat;->MP4:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 53
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 57
    new-instance v6, Lorg/jaudiotagger/audio/mp4/Mp4FileReader;

    .line 59
    invoke-direct {v6}, Lorg/jaudiotagger/audio/mp4/Mp4FileReader;-><init>()V

    .line 62
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    .line 67
    sget-object v5, Lorg/jaudiotagger/audio/SupportedFileFormat;->M4A:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 69
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 72
    move-result-object v6

    .line 73
    new-instance v7, Lorg/jaudiotagger/audio/mp4/Mp4FileReader;

    .line 75
    invoke-direct {v7}, Lorg/jaudiotagger/audio/mp4/Mp4FileReader;-><init>()V

    .line 78
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    .line 83
    sget-object v6, Lorg/jaudiotagger/audio/SupportedFileFormat;->M4P:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 85
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 88
    move-result-object v7

    .line 89
    new-instance v8, Lorg/jaudiotagger/audio/mp4/Mp4FileReader;

    .line 91
    invoke-direct {v8}, Lorg/jaudiotagger/audio/mp4/Mp4FileReader;-><init>()V

    .line 94
    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    .line 99
    sget-object v7, Lorg/jaudiotagger/audio/SupportedFileFormat;->M4B:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 101
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 104
    move-result-object v8

    .line 105
    new-instance v9, Lorg/jaudiotagger/audio/mp4/Mp4FileReader;

    .line 107
    invoke-direct {v9}, Lorg/jaudiotagger/audio/mp4/Mp4FileReader;-><init>()V

    .line 110
    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    .line 115
    sget-object v8, Lorg/jaudiotagger/audio/SupportedFileFormat;->WAV:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 117
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 120
    move-result-object v9

    .line 121
    new-instance v10, Lorg/jaudiotagger/audio/wav/WavFileReader;

    .line 123
    invoke-direct {v10}, Lorg/jaudiotagger/audio/wav/WavFileReader;-><init>()V

    .line 126
    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    .line 131
    sget-object v9, Lorg/jaudiotagger/audio/SupportedFileFormat;->WMA:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 133
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 136
    move-result-object v10

    .line 137
    new-instance v11, Lorg/jaudiotagger/audio/asf/AsfFileReader;

    .line 139
    invoke-direct {v11}, Lorg/jaudiotagger/audio/asf/AsfFileReader;-><init>()V

    .line 142
    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v0, Lorg/jaudiotagger/audio/real/RealFileReader;

    .line 147
    invoke-direct {v0}, Lorg/jaudiotagger/audio/real/RealFileReader;-><init>()V

    .line 150
    iget-object v10, p0, Lorg/jaudiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    .line 152
    sget-object v11, Lorg/jaudiotagger/audio/SupportedFileFormat;->RA:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 154
    invoke-virtual {v11}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 157
    move-result-object v11

    .line 158
    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v10, p0, Lorg/jaudiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    .line 163
    sget-object v11, Lorg/jaudiotagger/audio/SupportedFileFormat;->RM:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 165
    invoke-virtual {v11}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 168
    move-result-object v11

    .line 169
    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    .line 174
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 177
    move-result-object v1

    .line 178
    new-instance v10, Lorg/jaudiotagger/audio/ogg/OggFileWriter;

    .line 180
    invoke-direct {v10}, Lorg/jaudiotagger/audio/ogg/OggFileWriter;-><init>()V

    .line 183
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    .line 188
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 191
    move-result-object v1

    .line 192
    new-instance v2, Lorg/jaudiotagger/audio/flac/FlacFileWriter;

    .line 194
    invoke-direct {v2}, Lorg/jaudiotagger/audio/flac/FlacFileWriter;-><init>()V

    .line 197
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    .line 202
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 205
    move-result-object v1

    .line 206
    new-instance v2, Lorg/jaudiotagger/audio/mp3/MP3FileWriter;

    .line 208
    invoke-direct {v2}, Lorg/jaudiotagger/audio/mp3/MP3FileWriter;-><init>()V

    .line 211
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    .line 216
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 219
    move-result-object v1

    .line 220
    new-instance v2, Lorg/jaudiotagger/audio/mp4/Mp4FileWriter;

    .line 222
    invoke-direct {v2}, Lorg/jaudiotagger/audio/mp4/Mp4FileWriter;-><init>()V

    .line 225
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    .line 230
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 233
    move-result-object v1

    .line 234
    new-instance v2, Lorg/jaudiotagger/audio/mp4/Mp4FileWriter;

    .line 236
    invoke-direct {v2}, Lorg/jaudiotagger/audio/mp4/Mp4FileWriter;-><init>()V

    .line 239
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    .line 244
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 247
    move-result-object v1

    .line 248
    new-instance v2, Lorg/jaudiotagger/audio/mp4/Mp4FileWriter;

    .line 250
    invoke-direct {v2}, Lorg/jaudiotagger/audio/mp4/Mp4FileWriter;-><init>()V

    .line 253
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    .line 258
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 261
    move-result-object v1

    .line 262
    new-instance v2, Lorg/jaudiotagger/audio/mp4/Mp4FileWriter;

    .line 264
    invoke-direct {v2}, Lorg/jaudiotagger/audio/mp4/Mp4FileWriter;-><init>()V

    .line 267
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    .line 272
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 275
    move-result-object v1

    .line 276
    new-instance v2, Lorg/jaudiotagger/audio/wav/WavFileWriter;

    .line 278
    invoke-direct {v2}, Lorg/jaudiotagger/audio/wav/WavFileWriter;-><init>()V

    .line 281
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    .line 286
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    .line 289
    move-result-object v1

    .line 290
    new-instance v2, Lorg/jaudiotagger/audio/asf/AsfFileWriter;

    .line 292
    invoke-direct {v2}, Lorg/jaudiotagger/audio/asf/AsfFileWriter;-><init>()V

    .line 295
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    .line 300
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 303
    move-result-object v0

    .line 304
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 307
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    .line 309
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 312
    move-result-object v0

    .line 313
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 316
    move-result-object v0

    .line 317
    :goto_13c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 320
    move-result v1

    .line 321
    if-eqz v1, :cond_14e

    .line 323
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 326
    move-result-object v1

    .line 327
    check-cast v1, Lorg/jaudiotagger/audio/generic/AudioFileWriter;

    .line 329
    iget-object v2, p0, Lorg/jaudiotagger/audio/AudioFileIO;->modificationHandler:Lorg/jaudiotagger/audio/generic/ModificationHandler;

    .line 331
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->setAudioFileModificationListener(Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;)V

    .line 334
    goto :goto_13c

    .line 335
    :cond_14e
    return-void
.end method

.method public static read(Ljava/io/File;)Lorg/jaudiotagger/audio/AudioFile;
    .registers 2

    .line 1
    invoke-static {}, Lorg/jaudiotagger/audio/AudioFileIO;->getDefaultAudioFileIO()Lorg/jaudiotagger/audio/AudioFileIO;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/audio/AudioFileIO;->readFile(Ljava/io/File;)Lorg/jaudiotagger/audio/AudioFile;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static write(Lorg/jaudiotagger/audio/AudioFile;)V
    .registers 2

    .line 1
    invoke-static {}, Lorg/jaudiotagger/audio/AudioFileIO;->getDefaultAudioFileIO()Lorg/jaudiotagger/audio/AudioFileIO;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/audio/AudioFileIO;->writeFile(Lorg/jaudiotagger/audio/AudioFile;)V

    .line 8
    return-void
.end method


# virtual methods
.method public addAudioFileModificationListener(Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->modificationHandler:Lorg/jaudiotagger/audio/generic/ModificationHandler;

    .line 3
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/ModificationHandler;->addAudioFileModificationListener(Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;)V

    .line 6
    return-void
.end method

.method public checkFileExists(Ljava/io/File;)V
    .registers 6

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/AudioFileIO;->logger:Ljava/util/logging/Logger;

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
    sget-object v0, Lorg/jaudiotagger/audio/AudioFileIO;->logger:Ljava/util/logging/Logger;

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

.method public deleteTag(Lorg/jaudiotagger/audio/AudioFile;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->getExtension(Ljava/io/File;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lorg/jaudiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    .line 11
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_16

    .line 17
    check-cast v1, Lorg/jaudiotagger/audio/generic/AudioFileWriter;

    .line 19
    invoke-virtual {v1, p1}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->delete(Lorg/jaudiotagger/audio/AudioFile;)V

    .line 22
    return-void

    .line 23
    :cond_16
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 25
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->NO_DELETER_FOR_THIS_FORMAT:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 27
    const/4 v2, 0x1

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    .line 30
    const/4 v3, 0x0

    .line 31
    aput-object v0, v2, v3

    .line 33
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p1
.end method

.method public readFile(Ljava/io/File;)Lorg/jaudiotagger/audio/AudioFile;
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/AudioFileIO;->checkFileExists(Ljava/io/File;)V

    .line 4
    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->getExtension(Ljava/io/File;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lorg/jaudiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    .line 10
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lorg/jaudiotagger/audio/generic/AudioFileReader;

    .line 16
    if-eqz v1, :cond_16

    .line 18
    invoke-virtual {v1, p1}, Lorg/jaudiotagger/audio/generic/AudioFileReader;->read(Ljava/io/File;)Lorg/jaudiotagger/audio/AudioFile;

    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_16
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 25
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->NO_READER_FOR_THIS_FORMAT:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 27
    const/4 v2, 0x1

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    .line 30
    const/4 v3, 0x0

    .line 31
    aput-object v0, v2, v3

    .line 33
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p1
.end method

.method public removeAudioFileModificationListener(Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFileIO;->modificationHandler:Lorg/jaudiotagger/audio/generic/ModificationHandler;

    .line 3
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/ModificationHandler;->removeAudioFileModificationListener(Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;)V

    .line 6
    return-void
.end method

.method public writeFile(Lorg/jaudiotagger/audio/AudioFile;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->getExtension(Ljava/io/File;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lorg/jaudiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    .line 11
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lorg/jaudiotagger/audio/generic/AudioFileWriter;

    .line 17
    if-eqz v1, :cond_16

    .line 19
    invoke-virtual {v1, p1}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->write(Lorg/jaudiotagger/audio/AudioFile;)V

    .line 22
    return-void

    .line 23
    :cond_16
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 25
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->NO_WRITER_FOR_THIS_FORMAT:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 27
    const/4 v2, 0x1

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    .line 30
    const/4 v3, 0x0

    .line 31
    aput-object v0, v2, v3

    .line 33
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p1
.end method
