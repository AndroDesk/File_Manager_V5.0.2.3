.class public Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;
.super Lorg/jaudiotagger/tag/datatype/AbstractValuePair;
.source "AbstractIntStringValuePair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jaudiotagger/tag/datatype/AbstractValuePair<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public key:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;->key:Ljava/lang/Integer;

    .line 7
    return-void
.end method


# virtual methods
.method public createMaps()V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_24

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 23
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->valueToId:Ljava/util/Map;

    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    goto :goto_a

    .line 37
    :cond_24
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->valueList:Ljava/util/List;

    .line 39
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 41
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->valueList:Ljava/util/List;

    .line 50
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 53
    return-void
.end method

.method public getIdForValue(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->valueToId:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 9
    return-object p1
.end method

.method public getValueForId(I)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 13
    return-object p1
.end method
