.class public Lorg/jaudiotagger/tag/datatype/AbstractStringStringValuePair;
.super Lorg/jaudiotagger/tag/datatype/AbstractValuePair;
.source "AbstractStringStringValuePair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jaudiotagger/tag/datatype/AbstractValuePair<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public lkey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractStringStringValuePair;->lkey:Ljava/lang/String;

    .line 7
    return-void
.end method


# virtual methods
.method public createMaps()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->iterator:Ljava/util/Iterator;

    .line 13
    :goto_c
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->iterator:Ljava/util/Iterator;

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_30

    .line 21
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->iterator:Ljava/util/Iterator;

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractStringStringValuePair;->lkey:Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 33
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->value:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->valueToId:Ljava/util/Map;

    .line 43
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/AbstractStringStringValuePair;->lkey:Ljava/lang/String;

    .line 45
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    goto :goto_c

    .line 49
    :cond_30
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 51
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->iterator:Ljava/util/Iterator;

    .line 61
    :goto_3c
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->iterator:Ljava/util/Iterator;

    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_56

    .line 69
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->valueList:Ljava/util/List;

    .line 71
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 73
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->iterator:Ljava/util/Iterator;

    .line 75
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object v1

    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    goto :goto_3c

    .line 87
    :cond_56
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->valueList:Ljava/util/List;

    .line 89
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 92
    return-void
.end method

.method public getIdForValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->valueToId:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 9
    return-object p1
.end method

.method public getValueForId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 9
    return-object p1
.end method
