.class public Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;
.super Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;
.source "InterpolationTypes.java"


# static fields
.field private static interpolationTypes:Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;-><init>()V

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Band"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Linear"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;->createMaps()V

    return-void
.end method

.method public static getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;
    .registers 1

    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;->interpolationTypes:Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;

    if-nez v0, :cond_b

    new-instance v0, Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;-><init>()V

    sput-object v0, Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;->interpolationTypes:Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;

    :cond_b
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;->interpolationTypes:Lorg/jaudiotagger/tag/id3/valuepair/InterpolationTypes;

    return-object v0
.end method
