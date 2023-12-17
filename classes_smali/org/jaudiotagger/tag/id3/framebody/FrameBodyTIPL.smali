.class public Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;
.super Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodyTIPL.java"

# interfaces
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;


# static fields
.field public static final ARRANGER:Ljava/lang/String; = "arranger"

.field public static final DJMIXER:Ljava/lang/String; = "DJ-mix"

.field public static final ENGINEER:Ljava/lang/String; = "engineer"

.field public static final MIXER:Ljava/lang/String; = "mix"

.field public static final PRODUCER:Ljava/lang/String; = "producer"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "TextEncoding"

    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .registers 4

    .line 3
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .registers 3

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;)V
    .registers 4

    .line 7
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 8
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "TextEncoding"

    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object p1

    const-string v0, "Text"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addPair(Ljava/lang/String;)V
    .registers 4

    const-string v0, "Text"

    .line 1
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->getValue()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    .line 2
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "\u0000"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_24

    .line 4
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public addPair(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "Text"

    .line 5
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->getValue()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "TIPL"

    return-object v0
.end method

.method public getKeyAtIndex(I)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "Text"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    .line 9
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->getValue()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 23
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public getNumberOfPairs()I
    .registers 2

    .line 1
    const-string v0, "Text"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    .line 9
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->getValue()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getNumberOfPairs()I

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;
    .registers 2

    .line 1
    const-string v0, "Text"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    .line 13
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 7

    .line 1
    const-string v0, "Text"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->getValue()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 26
    const/4 v2, 0x1

    .line 27
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_50

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/Pair;->getValue()Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;->getNumberOfPairs()I

    .line 72
    move-result v3

    .line 73
    if-eq v2, v3, :cond_4d

    .line 75
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    .line 80
    goto :goto_1a

    .line 81
    :cond_50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method

.method public getUserFriendlyValue()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;->getText()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getValueAtIndex(I)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "Text"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    .line 9
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->getValue()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 23
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/Pair;->getValue()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public resetPairs()V
    .registers 2

    .line 1
    const-string v0, "Text"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    .line 9
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->getValue()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 20
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;-><init>()V

    .line 6
    new-instance v1, Ljava/util/StringTokenizer;

    .line 8
    const-string v2, "\u0000"

    .line 10
    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_c
    :goto_c
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_24

    .line 19
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_c

    .line 29
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, p1, v2}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    goto :goto_c

    .line 37
    :cond_24
    const-string p1, "Text"

    .line 39
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public setupObjectList()V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 3
    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;

    .line 5
    const-string v2, "TextEncoding"

    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 16
    new-instance v1, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    .line 18
    const-string v2, "Text"

    .line 20
    invoke-direct {v1, v2, p0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .registers 3

    .line 1
    const-string v0, "Text"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    .line 9
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->canBeEncoded()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_12

    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    .line 19
    :cond_12
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 22
    return-void
.end method
