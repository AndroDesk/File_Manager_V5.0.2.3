.class public Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTimestampTypes;
.super Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;
.source "EventTimingTimestampTypes.java"


# static fields
.field public static final TIMESTAMP_KEY_FIELD_SIZE:I = 0x1

.field private static eventTimingTimestampTypes:Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTimestampTypes;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;-><init>()V

    .line 4
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, "Absolute time using MPEG [MPEG] frames as unit"

    .line 13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v1

    .line 23
    const-string v2, "Absolute time using milliseconds as unit"

    .line 25
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;->createMaps()V

    .line 31
    return-void
.end method

.method public static getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTimestampTypes;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTimestampTypes;->eventTimingTimestampTypes:Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTimestampTypes;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTimestampTypes;

    .line 7
    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTimestampTypes;-><init>()V

    .line 10
    sput-object v0, Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTimestampTypes;->eventTimingTimestampTypes:Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTimestampTypes;

    .line 12
    :cond_b
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTimestampTypes;->eventTimingTimestampTypes:Lorg/jaudiotagger/tag/id3/valuepair/EventTimingTimestampTypes;

    .line 14
    return-object v0
.end method
