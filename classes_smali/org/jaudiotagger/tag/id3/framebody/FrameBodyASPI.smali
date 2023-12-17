.class public Lorg/jaudiotagger/tag/id3/framebody/FrameBodyASPI;
.super Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodyASPI.java"

# interfaces
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;


# static fields
.field private static final BITS_PER_INDEX_POINT:Ljava/lang/String; = "BitsPerIndexPoint"

.field private static final BITS_PER_INDEX_POINTS_FIELD_SIZE:I = 0x1

.field private static final DATA_LENGTH_FIELD_SIZE:I = 0x4

.field private static final DATA_START_FIELD_SIZE:I = 0x4

.field private static final FRACTION_AT_INDEX:Ljava/lang/String; = "FractionAtIndex"

.field private static final FRACTION_AT_INDEX_MINIMUM_FIELD_SIZE:I = 0x1

.field private static final INDEXED_DATA_LENGTH:Ljava/lang/String; = "IndexedDataLength"

.field private static final INDEXED_DATA_START:Ljava/lang/String; = "IndexedDataStart"

.field private static final NO_OF_INDEX_POINTS_FIELD_SIZE:I = 0x2

.field private static final NUMBER_OF_INDEX_POINTS:Ljava/lang/String; = "NumberOfIndexPoints"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyASPI;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "ASPI"

    return-object v0
.end method

.method public setupObjectList()V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 3
    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;

    .line 5
    const-string v2, "IndexedDataStart"

    .line 7
    const/4 v3, 0x4

    .line 8
    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 16
    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;

    .line 18
    const-string v2, "IndexedDataLength"

    .line 20
    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 28
    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;

    .line 30
    const-string v2, "NumberOfIndexPoints"

    .line 32
    const/4 v3, 0x2

    .line 33
    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 41
    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;

    .line 43
    const-string v2, "BitsPerIndexPoint"

    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 54
    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;

    .line 56
    const-string v2, "FractionAtIndex"

    .line 58
    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method
