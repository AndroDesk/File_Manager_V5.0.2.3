.class public Lorg/jaudiotagger/tag/datatype/NumberHashMap;
.super Lorg/jaudiotagger/tag/datatype/NumberFixedLength;
.source "NumberHashMap.java"

# interfaces
.implements Lorg/jaudiotagger/tag/datatype/HashMapInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jaudiotagger/tag/datatype/NumberFixedLength;",
        "Lorg/jaudiotagger/tag/datatype/HashMapInterface<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private hasEmptyValue:Z

.field private keyToValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private valueToKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    const-string p2, "Genre"

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_2c

    .line 6
    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/GenreTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getValueToIdMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 7
    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/GenreTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    .line 8
    iput-boolean p3, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    goto/16 :goto_119

    :cond_2c
    const-string p2, "TextEncoding"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4a

    .line 10
    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getValueToIdMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 11
    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    goto/16 :goto_119

    :cond_4a
    const-string p2, "InterpolationMethod"

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_68

    .line 13
    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getValueToIdMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 14
    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    goto/16 :goto_119

    :cond_68
    const-string p2, "PictureType"

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_88

    .line 16
    invoke-static {}, Lorg/jaudiotagger/tag/reference/PictureTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/PictureTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getValueToIdMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 17
    invoke-static {}, Lorg/jaudiotagger/tag/reference/PictureTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/PictureTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    .line 18
    iput-boolean p3, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    goto/16 :goto_119

    :cond_88
    const-string p2, "TypeOfEvent"

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a6

    .line 20
    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTypes;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getValueToIdMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 21
    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTypes;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    goto/16 :goto_119

    :cond_a6
    const-string p2, "TimeStampFormat"

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c3

    .line 23
    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTimestampTypes;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTimestampTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getValueToIdMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 24
    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTimestampTypes;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTimestampTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    goto :goto_119

    :cond_c3
    const-string p2, "TypeOfChannel"

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e0

    .line 26
    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/ChannelTypes;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/ChannelTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getValueToIdMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 27
    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/ChannelTypes;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/ChannelTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    goto :goto_119

    :cond_e0
    const-string p2, "RecievedAs"

    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_fd

    .line 29
    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/ReceivedAsTypes;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/ReceivedAsTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getValueToIdMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 30
    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/ReceivedAsTypes;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/ReceivedAsTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    goto :goto_119

    :cond_fd
    const-string p2, "contentType"

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11a

    .line 32
    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/SynchronisedLyricsContentType;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/SynchronisedLyricsContentType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getValueToIdMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 33
    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/SynchronisedLyricsContentType;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/SynchronisedLyricsContentType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    :goto_119
    return-void

    .line 34
    :cond_11a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Hashmap identifier not defined in this class: "

    .line 35
    invoke-static {p3, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/NumberHashMap;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;-><init>(Lorg/jaudiotagger/tag/datatype/NumberFixedLength;)V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    .line 44
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    .line 46
    iget-boolean v0, p1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    .line 47
    iget-object v0, p1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    .line 48
    iget-object p1, p1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;

    .line 13
    iget-boolean v1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    .line 15
    iget-boolean v3, p1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    .line 17
    invoke-static {v1, v3}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(ZZ)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_31

    .line 23
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    .line 25
    iget-object v3, p1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    .line 27
    invoke-static {v1, v3}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_31

    .line 33
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 35
    iget-object v3, p1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 37
    invoke-static {v1, v3}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_31

    .line 43
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_31

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v0, v2

    .line 51
    :goto_32
    return v0
.end method

.method public getKeyToValue()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    .line 3
    return-object v0
.end method

.method public getValueToKey()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 3
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    new-instance v0, Ljava/util/TreeSet;

    .line 9
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    .line 11
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 18
    iget-boolean v1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    .line 20
    if-eqz v1, :cond_1a

    .line 22
    const-string v1, ""

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_1a
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public readByteArray([BI)V
    .registers 8

    .line 1
    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->readByteArray([BI)V

    .line 4
    iget-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 6
    check-cast p1, Ljava/lang/Long;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 11
    move-result p1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    .line 18
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 21
    move-result p2

    .line 22
    if-nez p2, :cond_4e

    .line 24
    iget-boolean p2, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    .line 26
    const/4 v0, 0x1

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz p2, :cond_39

    .line 30
    iget-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 32
    const-string p2, "PictureType"

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_4e

    .line 40
    sget-object p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 42
    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_PICTURE_TYPE_INVALID:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 44
    new-array v0, v0, [Ljava/lang/Object;

    .line 46
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 48
    aput-object v2, v0, v1

    .line 50
    invoke-virtual {p2, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 57
    goto :goto_4e

    .line 58
    :cond_39
    new-instance p2, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    .line 60
    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_REFERENCE_KEY_INVALID:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 62
    const/4 v3, 0x2

    .line 63
    new-array v3, v3, [Ljava/lang/Object;

    .line 65
    iget-object v4, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 67
    aput-object v4, v3, v1

    .line 69
    aput-object p1, v3, v0

    .line 71
    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    .line 78
    throw p2

    .line 79
    :cond_4e
    :goto_4e
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 4

    .line 1
    instance-of v0, p1, Ljava/lang/Byte;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    check-cast p1, Ljava/lang/Byte;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 10
    move-result p1

    .line 11
    int-to-long v0, p1

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 18
    goto :goto_38

    .line 19
    :cond_12
    instance-of v0, p1, Ljava/lang/Short;

    .line 21
    if-eqz v0, :cond_24

    .line 23
    check-cast p1, Ljava/lang/Short;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    .line 28
    move-result p1

    .line 29
    int-to-long v0, p1

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 36
    goto :goto_38

    .line 37
    :cond_24
    instance-of v0, p1, Ljava/lang/Integer;

    .line 39
    if-eqz v0, :cond_36

    .line 41
    check-cast p1, Ljava/lang/Integer;

    .line 43
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result p1

    .line 47
    int-to-long v0, p1

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 54
    goto :goto_38

    .line 55
    :cond_36
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 57
    :goto_38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 3
    const-string v1, ""

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-object v1

    .line 8
    :cond_7
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    .line 10
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_10

    .line 16
    return-object v1

    .line 17
    :cond_10
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    .line 19
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 21
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 27
    return-object v0
.end method
