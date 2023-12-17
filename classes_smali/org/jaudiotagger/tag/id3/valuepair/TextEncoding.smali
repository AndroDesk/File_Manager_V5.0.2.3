.class public Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;
.super Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;
.source "TextEncoding.java"


# static fields
.field public static final CHARSET_ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"

.field public static final CHARSET_UTF_16:Ljava/lang/String; = "UTF-16"

.field public static final CHARSET_UTF_16BE:Ljava/lang/String; = "UTF-16BE"

.field public static final CHARSET_UTF_16_ENCODING_FORMAT:Ljava/lang/String; = "UTF-16LE"

.field public static final CHARSET_UTF_8:Ljava/lang/String; = "UTF-8"

.field public static final ISO_8859_1:B = 0x0t

.field public static final TEXT_ENCODING_FIELD_SIZE:I = 0x1

.field public static final UTF_16:B = 0x1t

.field public static final UTF_16BE:B = 0x2t

.field public static final UTF_8:B = 0x3t

.field private static textEncodings:Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;


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
    const-string v2, "ISO-8859-1"

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
    const-string v2, "UTF-16"

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
    const-string v2, "UTF-16BE"

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
    const-string v2, "UTF-8"

    .line 49
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;->createMaps()V

    .line 55
    return-void
.end method

.method public static getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;->textEncodings:Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;

    .line 7
    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;-><init>()V

    .line 10
    sput-object v0, Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;->textEncodings:Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;

    .line 12
    :cond_b
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;->textEncodings:Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;

    .line 14
    return-object v0
.end method
