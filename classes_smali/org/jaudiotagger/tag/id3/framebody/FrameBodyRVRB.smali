.class public Lorg/jaudiotagger/tag/id3/framebody/FrameBodyRVRB;
.super Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodyRVRB.java"

# interfaces
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v23FrameBody;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .registers 3

    .line 14
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyRVRB;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    return-void
.end method

.method public constructor <init>(SSBBBBBBBB)V
    .registers 12

    .line 3
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    const-string v0, "ReverbLeft"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    const-string p2, "ReverbRight"

    invoke-virtual {p0, p2, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string p2, "ReverbBounceLeft"

    invoke-virtual {p0, p2, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string p2, "ReverbBounceRight"

    invoke-virtual {p0, p2, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-static {p5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string p2, "ReverbFeedbackLeftToLeft"

    invoke-virtual {p0, p2, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-static {p6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string p2, "ReverbFeedbackLeftToRight"

    invoke-virtual {p0, p2, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-static {p7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string p2, "ReverbFeedbackRightToRight"

    invoke-virtual {p0, p2, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-static {p8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string p2, "ReverbFeedbackRightToLeft"

    invoke-virtual {p0, p2, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-static {p9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string p2, "PremixLeftToRight"

    invoke-virtual {p0, p2, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-static {p10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string p2, "PremixRightToLeft"

    invoke-virtual {p0, p2, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "RVRB"

    return-object v0
.end method

.method public setupObjectList()V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 3
    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;

    .line 5
    const-string v2, "ReverbLeft"

    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 16
    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;

    .line 18
    const-string v2, "ReverbRight"

    .line 20
    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 28
    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;

    .line 30
    const-string v2, "ReverbBounceLeft"

    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 41
    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;

    .line 43
    const-string v2, "ReverbBounceRight"

    .line 45
    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 53
    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;

    .line 55
    const-string v2, "ReverbFeedbackLeftToLeft"

    .line 57
    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 65
    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;

    .line 67
    const-string v2, "ReverbFeedbackLeftToRight"

    .line 69
    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 77
    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;

    .line 79
    const-string v2, "ReverbFeedbackRightToRight"

    .line 81
    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 89
    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;

    .line 91
    const-string v2, "ReverbFeedbackRightToLeft"

    .line 93
    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    .line 96
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 101
    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;

    .line 103
    const-string v2, "PremixLeftToRight"

    .line 105
    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 113
    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;

    .line 115
    const-string v2, "PremixRightToLeft"

    .line 117
    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    .line 120
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method
