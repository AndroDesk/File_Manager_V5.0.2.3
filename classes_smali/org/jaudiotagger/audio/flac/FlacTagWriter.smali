.class public Lorg/jaudiotagger/audio/flac/FlacTagWriter;
.super Ljava/lang/Object;
.source "FlacTagWriter.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private metadataBlockApplication:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;",
            ">;"
        }
    .end annotation
.end field

.field private metadataBlockCueSheet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;",
            ">;"
        }
    .end annotation
.end field

.field private metadataBlockPadding:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;",
            ">;"
        }
    .end annotation
.end field

.field private metadataBlockSeekTable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;",
            ">;"
        }
    .end annotation
.end field

.field private reader:Lorg/jaudiotagger/audio/flac/FlacTagReader;

.field private streamInfoBlock:Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

.field private tc:Lorg/jaudiotagger/audio/flac/FlacTagCreator;


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
    sput-object v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockPadding:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockApplication:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/List;

    .line 33
    new-instance v0, Lorg/jaudiotagger/audio/flac/FlacTagCreator;

    .line 35
    invoke-direct {v0}, Lorg/jaudiotagger/audio/flac/FlacTagCreator;-><init>()V

    .line 38
    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->tc:Lorg/jaudiotagger/audio/flac/FlacTagCreator;

    .line 40
    new-instance v0, Lorg/jaudiotagger/audio/flac/FlacTagReader;

    .line 42
    invoke-direct {v0}, Lorg/jaudiotagger/audio/flac/FlacTagReader;-><init>()V

    .line 45
    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->reader:Lorg/jaudiotagger/audio/flac/FlacTagReader;

    .line 47
    return-void
.end method

.method private computeAvailableRoom()I
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockApplication:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_19

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 20
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    .line 23
    move-result v2

    .line 24
    add-int/2addr v1, v2

    .line 25
    goto :goto_7

    .line 26
    :cond_19
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/List;

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v0

    .line 32
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_31

    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 44
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    .line 47
    move-result v2

    .line 48
    add-int/2addr v1, v2

    .line 49
    goto :goto_1f

    .line 50
    :cond_31
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/List;

    .line 52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v0

    .line 56
    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_49

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 68
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    .line 71
    move-result v2

    .line 72
    add-int/2addr v1, v2

    .line 73
    goto :goto_37

    .line 74
    :cond_49
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockPadding:Ljava/util/List;

    .line 76
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object v0

    .line 80
    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_61

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 92
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    .line 95
    move-result v2

    .line 96
    add-int/2addr v1, v2

    .line 97
    goto :goto_4f

    .line 98
    :cond_61
    return v1
.end method

.method private computeNeededRoom()I
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockApplication:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_19

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 20
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    .line 23
    move-result v2

    .line 24
    add-int/2addr v1, v2

    .line 25
    goto :goto_7

    .line 26
    :cond_19
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/List;

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v0

    .line 32
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_31

    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 44
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    .line 47
    move-result v2

    .line 48
    add-int/2addr v1, v2

    .line 49
    goto :goto_1f

    .line 50
    :cond_31
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/List;

    .line 52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v0

    .line 56
    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_49

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 68
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    .line 71
    move-result v2

    .line 72
    add-int/2addr v1, v2

    .line 73
    goto :goto_37

    .line 74
    :cond_49
    return v1
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 6

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/flac/FlacTag;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v2, v1}, Lorg/jaudiotagger/tag/flac/FlacTag;-><init>(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;Ljava/util/List;)V

    .line 12
    const-wide/16 v1, 0x0

    .line 14
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 17
    invoke-virtual {p2, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 20
    invoke-virtual {p0, v0, p1, p2}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->write(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 23
    return-void
.end method

.method public write(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 14

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "Writing tag"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->streamInfoBlock:Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 11
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockPadding:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockApplication:Ljava/util/List;

    .line 18
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 21
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/List;

    .line 23
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/List;

    .line 28
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    new-instance v0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;

    .line 33
    invoke-direct {v0, p2}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 36
    :try_start_23
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->findStream()V
    :try_end_26
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_23 .. :try_end_26} :catch_269

    .line 39
    const/4 v1, 0x0

    .line 40
    :goto_27
    if-nez v1, :cond_ad

    .line 42
    invoke-static {p2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->readHeader(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    .line 45
    move-result-object v1

    .line 46
    sget-object v2, Lorg/jaudiotagger/audio/flac/FlacTagWriter$1;->$SwitchMap$org$jaudiotagger$audio$flac$metadatablock$BlockType:[I

    .line 48
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 55
    move-result v3

    .line 56
    aget v2, v2, v3

    .line 58
    packed-switch v2, :pswitch_data_274

    .line 61
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 64
    move-result-wide v2

    .line 65
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    .line 68
    move-result v4

    .line 69
    int-to-long v4, v4

    .line 70
    add-long/2addr v2, v4

    .line 71
    invoke-virtual {p2, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 74
    goto :goto_a7

    .line 75
    :pswitch_4a  #0x7
    new-instance v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataCueSheet;

    .line 77
    invoke-direct {v2, v1, p2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataCueSheet;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    .line 80
    iget-object v3, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/List;

    .line 82
    new-instance v4, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 84
    invoke-direct {v4, v1, v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    .line 87
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    goto :goto_a7

    .line 91
    :pswitch_5a  #0x6
    new-instance v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataSeekTable;

    .line 93
    invoke-direct {v2, v1, p2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataSeekTable;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    .line 96
    iget-object v3, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/List;

    .line 98
    new-instance v4, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 100
    invoke-direct {v4, v1, v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    .line 103
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    goto :goto_a7

    .line 107
    :pswitch_6a  #0x5
    new-instance v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;

    .line 109
    invoke-direct {v2, v1, p2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    .line 112
    iget-object v3, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockApplication:Ljava/util/List;

    .line 114
    new-instance v4, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 116
    invoke-direct {v4, v1, v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    .line 119
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    goto :goto_a7

    .line 123
    :pswitch_7a  #0x2, 0x3, 0x4
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 126
    move-result-wide v2

    .line 127
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    .line 130
    move-result v4

    .line 131
    int-to-long v4, v4

    .line 132
    add-long/2addr v2, v4

    .line 133
    invoke-virtual {p2, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 136
    new-instance v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;

    .line 138
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    .line 141
    move-result v3

    .line 142
    invoke-direct {v2, v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;-><init>(I)V

    .line 145
    iget-object v3, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockPadding:Ljava/util/List;

    .line 147
    new-instance v4, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 149
    invoke-direct {v4, v1, v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    .line 152
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    goto :goto_a7

    .line 156
    :pswitch_9b  #0x1
    new-instance v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 158
    new-instance v3, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;

    .line 160
    invoke-direct {v3, v1, p2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    .line 163
    invoke-direct {v2, v1, v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    .line 166
    iput-object v2, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->streamInfoBlock:Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 168
    :goto_a7
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock()Z

    .line 171
    move-result v1

    .line 172
    goto/16 :goto_27

    .line 174
    :cond_ad
    invoke-direct {p0}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->computeAvailableRoom()I

    .line 177
    move-result v1

    .line 178
    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->tc:Lorg/jaudiotagger/audio/flac/FlacTagCreator;

    .line 180
    invoke-virtual {v2, p1}, Lorg/jaudiotagger/audio/generic/AbstractTagCreator;->convert(Lorg/jaudiotagger/tag/Tag;)Ljava/nio/ByteBuffer;

    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 187
    move-result v2

    .line 188
    invoke-direct {p0}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->computeNeededRoom()I

    .line 191
    move-result v3

    .line 192
    add-int/2addr v2, v3

    .line 193
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    .line 196
    move-result v3

    .line 197
    int-to-long v3, v3

    .line 198
    invoke-virtual {p2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 201
    sget-object v3, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    .line 205
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    const-string v5, "Writing tag available bytes:"

    .line 210
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    const-string v5, ":needed bytes:"

    .line 218
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object v4

    .line 228
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 231
    if-eq v1, v2, :cond_1bb

    .line 233
    add-int/lit8 v3, v2, 0x4

    .line 235
    if-le v1, v3, :cond_ee

    .line 237
    goto/16 :goto_1bb

    .line 239
    :cond_ee
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    .line 242
    move-result v0

    .line 243
    add-int/lit8 v0, v0, 0x4

    .line 245
    add-int/lit8 v0, v0, 0x4

    .line 247
    add-int/lit8 v0, v0, 0x22

    .line 249
    const-wide/16 v2, 0x0

    .line 251
    invoke-virtual {p2, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 254
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 257
    move-result-object v4

    .line 258
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 261
    move-result-object v5

    .line 262
    const-wide/16 v6, 0x0

    .line 264
    int-to-long v2, v0

    .line 265
    move-wide v8, v2

    .line 266
    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 269
    invoke-virtual {p3, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 272
    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockApplication:Ljava/util/List;

    .line 274
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 277
    move-result-object v2

    .line 278
    :goto_115
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    move-result v3

    .line 282
    if-eqz v3, :cond_138

    .line 284
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    move-result-object v3

    .line 288
    check-cast v3, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 290
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    .line 293
    move-result-object v4

    .line 294
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    .line 297
    move-result-object v4

    .line 298
    invoke-virtual {p3, v4}, Ljava/io/RandomAccessFile;->write([B)V

    .line 301
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    .line 304
    move-result-object v3

    .line 305
    invoke-interface {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()[B

    .line 308
    move-result-object v3

    .line 309
    invoke-virtual {p3, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 312
    goto :goto_115

    .line 313
    :cond_138
    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/List;

    .line 315
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 318
    move-result-object v2

    .line 319
    :goto_13e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 322
    move-result v3

    .line 323
    if-eqz v3, :cond_161

    .line 325
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 328
    move-result-object v3

    .line 329
    check-cast v3, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 331
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    .line 334
    move-result-object v4

    .line 335
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    .line 338
    move-result-object v4

    .line 339
    invoke-virtual {p3, v4}, Ljava/io/RandomAccessFile;->write([B)V

    .line 342
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    .line 345
    move-result-object v3

    .line 346
    invoke-interface {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()[B

    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {p3, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 353
    goto :goto_13e

    .line 354
    :cond_161
    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/List;

    .line 356
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 359
    move-result-object v2

    .line 360
    :goto_167
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 363
    move-result v3

    .line 364
    if-eqz v3, :cond_18a

    .line 366
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 369
    move-result-object v3

    .line 370
    check-cast v3, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 372
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    .line 375
    move-result-object v4

    .line 376
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    .line 379
    move-result-object v4

    .line 380
    invoke-virtual {p3, v4}, Ljava/io/RandomAccessFile;->write([B)V

    .line 383
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    .line 386
    move-result-object v3

    .line 387
    invoke-interface {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()[B

    .line 390
    move-result-object v3

    .line 391
    invoke-virtual {p3, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 394
    goto :goto_167

    .line 395
    :cond_18a
    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->tc:Lorg/jaudiotagger/audio/flac/FlacTagCreator;

    .line 397
    const/16 v3, 0xfa0

    .line 399
    invoke-virtual {v2, p1, v3}, Lorg/jaudiotagger/audio/flac/FlacTagCreator;->convert(Lorg/jaudiotagger/tag/Tag;I)Ljava/nio/ByteBuffer;

    .line 402
    move-result-object p1

    .line 403
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 406
    move-result-object p1

    .line 407
    invoke-virtual {p3, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 410
    add-int/2addr v0, v1

    .line 411
    int-to-long v0, v0

    .line 412
    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 415
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 418
    move-result-object v2

    .line 419
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 422
    move-result-object v3

    .line 423
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 426
    move-result-object p1

    .line 427
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    .line 430
    move-result-wide v4

    .line 431
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 434
    move-result-object p1

    .line 435
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    .line 438
    move-result-wide v6

    .line 439
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 442
    goto/16 :goto_268

    .line 444
    :cond_1bb
    :goto_1bb
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    .line 447
    move-result p3

    .line 448
    add-int/lit8 p3, p3, 0x4

    .line 450
    int-to-long v3, p3

    .line 451
    invoke-virtual {p2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 454
    iget-object p3, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->streamInfoBlock:Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 456
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    .line 459
    move-result-object p3

    .line 460
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    .line 463
    move-result-object p3

    .line 464
    invoke-virtual {p2, p3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 467
    iget-object p3, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->streamInfoBlock:Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 469
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    .line 472
    move-result-object p3

    .line 473
    invoke-interface {p3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()[B

    .line 476
    move-result-object p3

    .line 477
    invoke-virtual {p2, p3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 480
    iget-object p3, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockApplication:Ljava/util/List;

    .line 482
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 485
    move-result-object p3

    .line 486
    :goto_1e5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 489
    move-result v0

    .line 490
    if-eqz v0, :cond_208

    .line 492
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 495
    move-result-object v0

    .line 496
    check-cast v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 498
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    .line 501
    move-result-object v3

    .line 502
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    .line 505
    move-result-object v3

    .line 506
    invoke-virtual {p2, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 509
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    .line 512
    move-result-object v0

    .line 513
    invoke-interface {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()[B

    .line 516
    move-result-object v0

    .line 517
    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 520
    goto :goto_1e5

    .line 521
    :cond_208
    iget-object p3, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/List;

    .line 523
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 526
    move-result-object p3

    .line 527
    :goto_20e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 530
    move-result v0

    .line 531
    if-eqz v0, :cond_231

    .line 533
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 536
    move-result-object v0

    .line 537
    check-cast v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 539
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    .line 542
    move-result-object v3

    .line 543
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    .line 546
    move-result-object v3

    .line 547
    invoke-virtual {p2, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 550
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    .line 553
    move-result-object v0

    .line 554
    invoke-interface {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()[B

    .line 557
    move-result-object v0

    .line 558
    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 561
    goto :goto_20e

    .line 562
    :cond_231
    iget-object p3, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/List;

    .line 564
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 567
    move-result-object p3

    .line 568
    :goto_237
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 571
    move-result v0

    .line 572
    if-eqz v0, :cond_25a

    .line 574
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 577
    move-result-object v0

    .line 578
    check-cast v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 580
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    .line 583
    move-result-object v3

    .line 584
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    .line 587
    move-result-object v3

    .line 588
    invoke-virtual {p2, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 591
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    .line 594
    move-result-object v0

    .line 595
    invoke-interface {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()[B

    .line 598
    move-result-object v0

    .line 599
    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 602
    goto :goto_237

    .line 603
    :cond_25a
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 606
    move-result-object p2

    .line 607
    iget-object p3, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->tc:Lorg/jaudiotagger/audio/flac/FlacTagCreator;

    .line 609
    sub-int/2addr v1, v2

    .line 610
    invoke-virtual {p3, p1, v1}, Lorg/jaudiotagger/audio/flac/FlacTagCreator;->convert(Lorg/jaudiotagger/tag/Tag;I)Ljava/nio/ByteBuffer;

    .line 613
    move-result-object p1

    .line 614
    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 617
    :goto_268
    return-void

    .line 618
    :catch_269
    move-exception p1

    .line 619
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 621
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 624
    move-result-object p1

    .line 625
    invoke-direct {p2, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    .line 628
    throw p2

    .line 629
    :pswitch_data_274
    .packed-switch 0x1
        :pswitch_9b  #00000001
        :pswitch_7a  #00000002
        :pswitch_7a  #00000003
        :pswitch_7a  #00000004
        :pswitch_6a  #00000005
        :pswitch_5a  #00000006
        :pswitch_4a  #00000007
    .end packed-switch
.end method
