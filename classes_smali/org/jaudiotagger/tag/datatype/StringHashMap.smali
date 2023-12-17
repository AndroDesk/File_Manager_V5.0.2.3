.class public Lorg/jaudiotagger/tag/datatype/StringHashMap;
.super Lorg/jaudiotagger/tag/datatype/StringFixedLength;
.source "StringHashMap.java"

# interfaces
.implements Lorg/jaudiotagger/tag/datatype/HashMapInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jaudiotagger/tag/datatype/StringFixedLength;",
        "Lorg/jaudiotagger/tag/datatype/HashMapInterface<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public hasEmptyValue:Z

.field public keyToValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public valueToKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/tag/datatype/StringFixedLength;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->hasEmptyValue:Z

    const-string p2, "Language"

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_28

    .line 6
    invoke-static {}, Lorg/jaudiotagger/tag/reference/Languages;->getInstanceOf()Lorg/jaudiotagger/tag/reference/Languages;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getValueToIdMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    .line 7
    invoke-static {}, Lorg/jaudiotagger/tag/reference/Languages;->getInstanceOf()Lorg/jaudiotagger/tag/reference/Languages;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    return-void

    .line 8
    :cond_28
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Hashmap identifier not defined in this class: "

    .line 9
    invoke-static {p3, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/StringHashMap;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/StringFixedLength;-><init>(Lorg/jaudiotagger/tag/datatype/StringFixedLength;)V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    .line 18
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->hasEmptyValue:Z

    .line 20
    iget-boolean v0, p1, Lorg/jaudiotagger/tag/datatype/StringHashMap;->hasEmptyValue:Z

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->hasEmptyValue:Z

    .line 21
    iget-object v0, p1, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    .line 22
    iget-object p1, p1, Lorg/jaudiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/datatype/StringHashMap;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    move-object v0, p1

    .line 8
    check-cast v0, Lorg/jaudiotagger/tag/datatype/StringHashMap;

    .line 10
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->hasEmptyValue:Z

    .line 12
    iget-boolean v3, v0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->hasEmptyValue:Z

    .line 14
    if-eq v2, v3, :cond_10

    .line 16
    return v1

    .line 17
    :cond_10
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    .line 19
    if-nez v2, :cond_19

    .line 21
    iget-object v2, v0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    .line 23
    if-eqz v2, :cond_22

    .line 25
    return v1

    .line 26
    :cond_19
    iget-object v3, v0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_22

    .line 34
    return v1

    .line 35
    :cond_22
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    .line 37
    if-nez v2, :cond_2b

    .line 39
    iget-object v0, v0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    .line 41
    if-eqz v0, :cond_36

    .line 43
    return v1

    .line 44
    :cond_2b
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    .line 46
    iget-object v0, v0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_36

    .line 54
    return v1

    .line 55
    :cond_36
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result p1

    .line 59
    return p1
.end method

.method public getKeyToValue()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    .line 3
    return-object v0
.end method

.method public getTextEncodingCharSet()Ljava/lang/String;
    .registers 2

    const-string v0, "ISO-8859-1"

    return-object v0
.end method

.method public getValueToKey()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

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
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

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
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    .line 11
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 18
    iget-boolean v1, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->hasEmptyValue:Z

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

.method public setValue(Ljava/lang/Object;)V
    .registers 3

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_1c

    .line 5
    const-string v0, "XXX"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_13

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 19
    goto :goto_1e

    .line 20
    :cond_13
    check-cast p1, Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 28
    goto :goto_1e

    .line 29
    :cond_1c
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 31
    :goto_1e
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
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

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
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

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
