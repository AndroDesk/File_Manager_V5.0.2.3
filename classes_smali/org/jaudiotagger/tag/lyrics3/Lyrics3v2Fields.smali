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

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    sput-object v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->crlfByte:[B

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    sput-object v1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->CRLF:Ljava/lang/String;

    return-void

    :array_10
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lorg/jaudiotagger/tag/datatype/AbstractStringStringValuePair;-><init>()V

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "IND"

    const-string v2, "Indications field"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "LYR"

    const-string v2, "Lyrics multi line text"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "INF"

    const-string v2, "Additional information multi line text"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "AUT"

    const-string v2, "Lyrics/Music Author name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "EAL"

    const-string v2, "Extended Album name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "EAR"

    const-string v2, "Extended Artist name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ETT"

    const-string v2, "Extended Track Title"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "IMG"

    const-string v2, "Link to an image files"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/AbstractStringStringValuePair;->createMaps()V

    return-void
.end method

.method public static getInstanceOf()Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;
    .registers 1

    sget-object v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->lyrics3Fields:Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;

    if-nez v0, :cond_b

    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;-><init>()V

    sput-object v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->lyrics3Fields:Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;

    :cond_b
    sget-object v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->lyrics3Fields:Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;

    return-object v0
.end method

.method public static isLyrics3v2FieldIdentifier(Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1b

    invoke-static {}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->getInstanceOf()Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method
