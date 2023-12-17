.class public Lorg/jaudiotagger/tag/id3/ID3TextEncodingConversion;
.super Ljava/lang/Object;
.source "ID3TextEncodingConversion.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.tag.id3"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3TextEncodingConversion;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertV24textEncodingToV23textEncoding(B)B
    .registers 2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return p0
.end method

.method public static getTextEncoding(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;B)B
    .registers 3

    .line 1
    if-nez p0, :cond_21

    .line 3
    sget-object p0, Lorg/jaudiotagger/tag/id3/ID3TextEncodingConversion;->logger:Ljava/util/logging/Logger;

    .line 5
    const-string v0, "Header has not yet been set for this framebody"

    .line 7
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isResetTextEncodingForExistingFrames()Z

    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_1c

    .line 20
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getId3v23DefaultTextEncoding()B

    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_1c
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3TextEncodingConversion;->convertV24textEncodingToV23textEncoding(B)B

    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    :cond_21
    instance-of p0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 36
    if-eqz p0, :cond_39

    .line 38
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isResetTextEncodingForExistingFrames()Z

    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_38

    .line 48
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getId3v24DefaultTextEncoding()B

    .line 55
    move-result p0

    .line 56
    return p0

    .line 57
    :cond_38
    return p1

    .line 58
    :cond_39
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isResetTextEncodingForExistingFrames()Z

    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_4c

    .line 68
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getId3v23DefaultTextEncoding()B

    .line 75
    move-result p0

    .line 76
    return p0

    .line 77
    :cond_4c
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3TextEncodingConversion;->convertV24textEncodingToV23textEncoding(B)B

    .line 80
    move-result p0

    .line 81
    return p0
.end method

.method public static getUnicodeTextEncoding(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)B
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_b

    .line 4
    sget-object p0, Lorg/jaudiotagger/tag/id3/ID3TextEncodingConversion;->logger:Ljava/util/logging/Logger;

    .line 6
    const-string v1, "Header has not yet been set for this framebody"

    .line 8
    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 11
    return v0

    .line 12
    :cond_b
    instance-of p0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 14
    if-eqz p0, :cond_18

    .line 16
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getId3v24UnicodeTextEncoding()B

    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_18
    return v0
.end method
