.class public abstract Lorg/jaudiotagger/tag/datatype/AbstractValuePair;
.super Ljava/lang/Object;
.source "AbstractValuePair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final idToValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TI;TV;>;"
        }
    .end annotation
.end field

.field public iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TI;>;"
        }
    .end annotation
.end field

.field public value:Ljava/lang/String;

.field public final valueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final valueToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TV;TI;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->valueToId:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->valueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public getAlphabeticalValueList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->valueList:Ljava/util/List;

    return-object v0
.end method

.method public getIdToValueMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TI;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->valueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getValueToIdMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TV;TI;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->valueToId:Ljava/util/Map;

    return-object v0
.end method