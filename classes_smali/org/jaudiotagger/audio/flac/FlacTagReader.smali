.class public Lorg/jaudiotagger/audio/flac/FlacTagReader;
.super Ljava/lang/Object;
.source "FlacTagReader.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private vorbisCommentReader:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.audio.flac"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;

    .line 6
    invoke-direct {v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagReader;->vorbisCommentReader:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;

    .line 11
    return-void
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/flac/FlacTag;
    .registers 10

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;

    .line 3
    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 6
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->findStream()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v1

    .line 17
    :goto_10
    if-nez v3, :cond_f0

    .line 19
    sget-object v3, Lorg/jaudiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    .line 21
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 23
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_32

    .line 29
    sget-object v3, Lorg/jaudiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    .line 31
    const-string v4, "Looking for MetaBlockHeader at:"

    .line 33
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 40
    move-result-wide v5

    .line 41
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 51
    :cond_32
    invoke-static {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->readHeader(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    .line 54
    move-result-object v3

    .line 55
    sget-object v4, Lorg/jaudiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    .line 57
    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 59
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_62

    .line 65
    sget-object v4, Lorg/jaudiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    .line 67
    const-string v5, "Reading MetadataBlockHeader:"

    .line 69
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->toString()Ljava/lang/String;

    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v6, " ending at "

    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 88
    move-result-wide v6

    .line 89
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 99
    :cond_62
    sget-object v4, Lorg/jaudiotagger/audio/flac/FlacTagReader$1;->$SwitchMap$org$jaudiotagger$audio$flac$metadatablock$BlockType:[I

    .line 101
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 108
    move-result v5

    .line 109
    aget v4, v4, v5

    .line 111
    const/4 v5, 0x1

    .line 112
    if-eq v4, v5, :cond_db

    .line 114
    const/4 v5, 0x2

    .line 115
    if-eq v4, v5, :cond_a2

    .line 117
    sget-object v4, Lorg/jaudiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    .line 119
    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 121
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_94

    .line 127
    sget-object v4, Lorg/jaudiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    .line 129
    const-string v5, "Ignoring MetadataBlock:"

    .line 131
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 138
    move-result-object v6

    .line 139
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 149
    :cond_94
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 152
    move-result-wide v4

    .line 153
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    .line 156
    move-result v6

    .line 157
    int-to-long v6, v6

    .line 158
    add-long/2addr v4, v6

    .line 159
    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 162
    goto :goto_ea

    .line 163
    :cond_a2
    :try_start_a2
    new-instance v4, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    .line 165
    invoke-direct {v4, v3, p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    .line 168
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_aa} :catch_c3
    .catch Lorg/jaudiotagger/tag/InvalidFrameException; {:try_start_a2 .. :try_end_aa} :catch_ab

    .line 171
    goto :goto_ea

    .line 172
    :catch_ab
    move-exception v4

    .line 173
    sget-object v5, Lorg/jaudiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    .line 175
    const-string v6, "Unable to read picture metablock, ignoring"

    .line 177
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    move-result-object v6

    .line 181
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 184
    move-result-object v4

    .line 185
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object v4

    .line 192
    invoke-virtual {v5, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 195
    goto :goto_ea

    .line 196
    :catch_c3
    move-exception v4

    .line 197
    sget-object v5, Lorg/jaudiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    .line 199
    const-string v6, "Unable to read picture metablock, ignoring:"

    .line 201
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    move-result-object v6

    .line 205
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 208
    move-result-object v4

    .line 209
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object v4

    .line 216
    invoke-virtual {v5, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 219
    goto :goto_ea

    .line 220
    :cond_db
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    .line 223
    move-result v2

    .line 224
    new-array v2, v2, [B

    .line 226
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 229
    iget-object v4, p0, Lorg/jaudiotagger/audio/flac/FlacTagReader;->vorbisCommentReader:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;

    .line 231
    invoke-virtual {v4, v2, v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;->read([BZ)Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 234
    move-result-object v2

    .line 235
    :goto_ea
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock()Z

    .line 238
    move-result v3

    .line 239
    goto/16 :goto_10

    .line 241
    :cond_f0
    if-nez v2, :cond_f6

    .line 243
    invoke-static {}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 246
    move-result-object v2

    .line 247
    :cond_f6
    new-instance p1, Lorg/jaudiotagger/tag/flac/FlacTag;

    .line 249
    invoke-direct {p1, v2, v0}, Lorg/jaudiotagger/tag/flac/FlacTag;-><init>(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;Ljava/util/List;)V

    .line 252
    return-object p1
.end method
