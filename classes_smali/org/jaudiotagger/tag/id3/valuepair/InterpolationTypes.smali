.class public Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;
.super Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;
.source "InterpolationTypes.java"


# static fields
.field private static interpolationTypes:Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;-><init>()V

    .line 4
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, "Band"

    .line 13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v1

    .line 23
    const-string v2, "Linear"

    .line 25
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;->createMaps()V

    .line 31
    return-void
.end method

.method public static getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;->interpolationTypes:Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;

    .line 7
    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;-><init>()V

    .line 10
    sput-object v0, Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;->interpolationTypes:Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;

    .line 12
    :cond_b
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;->interpolationTypes:Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;

    .line 14
    return-object v0
.end method
