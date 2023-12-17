.class public Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;
.super Lorg/jaudiotagger/tag/datatype/AbstractStringStringValuePair;
.source "Lyrics3v2Fields.java"


# static fields
.field public static final CRLF:Ljava/lang/String;

.field public static final FIELD_V2_ADDITIONAL_MULTI_LINE_TEXT:Ljava/lang/String; = "INF"

.field public static final FIELD_V2_ALBUM:Ljava/lang/String; = "EAL"

.field public static final FIELD_V2_ARTIST:Ljava/lang/String; = "EAR"

.field public static final FIELD_V2_AUTHOR:Ljava/lang/String; = "AUT"

.field public static final FIELD_V2_IMAGE:Ljava/lang/String; = "IMG"

.field public static final FIELD_V2_INDICATIONS:Ljava/lang/String; = "IND"

.field public static final FIELD_V2_LYRICS_MULTI_LINE_TEXT:Ljava/lang/String; = "LYR"

.field public static final FIELD_V2_TRACK:Ljava/lang/String; = "ETT"

.field private static final crlfByte:[B

.field private static lyrics3Fields:Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_10

    .line 7
    sput-object v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->crlfByte:[B

    .line 9
    new-instance v1, Ljava/lang/String;

    .line 11
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 14
    sput-object v1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->CRLF:Ljava/lang/String;

    .line 16
    return-void

    .line 17
    :array_10
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/datatype/AbstractStringStringValuePair;-><init>()V

    .line 4
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 6
    const-string v1, "IND"

    .line 8
    const-string v2, "Indications field"

    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 15
    const-string v1, "LYR"

    .line 17
    const-string v2, "Lyrics multi line text"

    .line 19
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 24
    const-string v1, "INF"

    .line 26
    const-string v2, "Additional information multi line text"

    .line 28
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 33
    const-string v1, "AUT"

    .line 35
    const-string v2, "Lyrics/Music Author name"

    .line 37
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 42
    const-string v1, "EAL"

    .line 44
    const-string v2, "Extended Album name"

    .line 46
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 51
    const-string v1, "EAR"

    .line 53
    const-string v2, "Extended Artist name"

    .line 55
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 60
    const-string v1, "ETT"

    .line 62
    const-string v2, "Extended Track Title"

    .line 64
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 69
    const-string v1, "IMG"

    .line 71
    const-string v2, "Link to an image files"

    .line 73
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/AbstractStringStringValuePair;->createMaps()V

    .line 79
    return-void
.end method

.method public static getInstanceOf()Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->lyrics3Fields:Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;

    .line 7
    invoke-direct {v0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;-><init>()V

    .line 10
    sput-object v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->lyrics3Fields:Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;

    .line 12
    :cond_b
    sget-object v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->lyrics3Fields:Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;

    .line 14
    return-object v0
.end method

.method public static isLyrics3v2FieldIdentifier(Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x3

    .line 7
    if-lt v0, v2, :cond_1b

    .line 9
    invoke-static {}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->getInstanceOf()Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1b

    .line 27
    const/4 v1, 0x1

    .line 28
    :cond_1b
    return v1
.end method
