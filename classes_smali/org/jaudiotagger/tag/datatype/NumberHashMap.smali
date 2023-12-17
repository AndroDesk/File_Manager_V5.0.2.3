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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    iput-object p2, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    const-string p2, "Genre"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_2c

    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/GenreTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getValueToIdMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/GenreTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    iput-boolean p3, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    goto/16 :goto_119

    :cond_2c
    const-string p2, "TextEncoding"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4a

    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getValueToIdMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    goto/16 :goto_119

    :cond_4a
    const-string p2, "InterpolationMethod"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_68

    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getValueToIdMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    goto/16 :goto_119

    :cond_68
    const-string p2, "PictureType"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_88

    invoke-static {}, Lorg/jaudiotagger/tag/reference/PictureTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/PictureTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getValueToIdMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    invoke-static {}, Lorg/jaudiotagger/tag/reference/PictureTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/PictureTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    iput-boolean p3, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    goto/16 :goto_119

    :cond_88
    const-string p2, "TypeOfEvent"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a6

    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTypes;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getValueToIdMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTypes;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    goto/16 :goto_119

    :cond_a6
    const-string p2, "TimeStampFormat"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c3

    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTimestampTypes;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTimestampTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getValueToIdMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTimestampTypes;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTimestampTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    goto :goto_119

    :cond_c3
    const-string p2, "TypeOfChannel"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e0

    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/ChannelTypes;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/ChannelTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getValueToIdMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/ChannelTypes;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/ChannelTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    goto :goto_119

    :cond_e0
    const-string p2, "RecievedAs"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_fd

    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/ReceivedAsTypes;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/ReceivedAsTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getValueToIdMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/ReceivedAsTypes;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/ReceivedAsTypes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    goto :goto_119

    :cond_fd
    const-string p2, "contentType"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11a

    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/SynchronisedLyricsContentType;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/SynchronisedLyricsContentType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getValueToIdMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/SynchronisedLyricsContentType;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/SynchronisedLyricsContentType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    :goto_119
    return-void

    :cond_11a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Hashmap identifier not defined in this class: "

    invoke-static {p3, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/NumberHashMap;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;-><init>(Lorg/jaudiotagger/tag/datatype/NumberFixedLength;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    iget-boolean v0, p1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    iget-object v0, p1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    iget-object p1, p1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;

    iget-boolean v1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    iget-boolean v3, p1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    invoke-static {v1, v3}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(ZZ)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    iget-object v3, p1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    invoke-static {v1, v3}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    iget-object v3, p1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    invoke-static {v1, v3}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    goto :goto_32

    :cond_31
    move v0, v2

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

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

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

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

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

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iget-boolean v1, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    if-eqz v1, :cond_1a

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_1a
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public readByteArray([BI)V
    .registers 8

    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->readByteArray([BI)V

    iget-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4e

    iget-boolean p2, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_39

    iget-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    const-string p2, "PictureType"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    sget-object p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_PICTURE_TYPE_INVALID:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_4e

    :cond_39
    new-instance p2, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_REFERENCE_KEY_INVALID:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    aput-object v4, v3, v1

    aput-object p1, v3, v0

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4e
    :goto_4e
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 4

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_12

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_38

    :cond_12
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_24

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_38

    :cond_24
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_36

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_38

    :cond_36
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    :goto_38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    const-string v1, ""

    if-nez v0, :cond_7

    return-object v1

    :cond_7
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    return-object v1

    :cond_10
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
