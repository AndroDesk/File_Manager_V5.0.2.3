.class public Lorg/jaudiotagger/tag/id3/valuepair/SynchronisedLyricsContentType;
.super Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;
.source "SynchronisedLyricsContentType.java"


# static fields
.field public static final CONTENT_KEY_FIELD_SIZE:I = 0x1

.field private static eventTimingTypes:Lorg/jaudiotagger/tag/id3/valuepair/SynchronisedLyricsContentType;


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
    const-string v2, "other"

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
    const-string v2, "lyrics"

    .line 25
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 30
    const/4 v1, 0x2

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v1

    .line 35
    const-string v2, "text transcription"

    .line 37
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 42
    const/4 v1, 0x3

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v1

    .line 47
    const-string v2, "movement/part name"

    .line 49
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 54
    const/4 v1, 0x4

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v1

    .line 59
    const-string v2, "events"

    .line 61
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 66
    const/4 v1, 0x5

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v1

    .line 71
    const-string v2, "chord"

    .line 73
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 78
    const/4 v1, 0x6

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v1

    .line 83
    const-string v2, "trivia"

    .line 85
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 90
    const/4 v1, 0x7

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v1

    .line 95
    const-string v2, "URLs to webpages"

    .line 97
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 102
    const/16 v1, 0x8

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    move-result-object v1

    .line 108
    const-string v2, "URLs to images"

    .line 110
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;->createMaps()V

    .line 116
    return-void
.end method

.method public static getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/SynchronisedLyricsContentType;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/SynchronisedLyricsContentType;->eventTimingTypes:Lorg/jaudiotagger/tag/id3/valuepair/SynchronisedLyricsContentType;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lorg/jaudiotagger/tag/id3/valuepair/SynchronisedLyricsContentType;

    .line 7
    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/valuepair/SynchronisedLyricsContentType;-><init>()V

    .line 10
    sput-object v0, Lorg/jaudiotagger/tag/id3/valuepair/SynchronisedLyricsContentType;->eventTimingTypes:Lorg/jaudiotagger/tag/id3/valuepair/SynchronisedLyricsContentType;

    .line 12
    :cond_b
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/SynchronisedLyricsContentType;->eventTimingTypes:Lorg/jaudiotagger/tag/id3/valuepair/SynchronisedLyricsContentType;

    .line 14
    return-object v0
.end method
