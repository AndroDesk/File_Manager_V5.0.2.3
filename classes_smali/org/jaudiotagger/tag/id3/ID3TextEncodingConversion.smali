.class public Lorg/jaudiotagger/tag/id3/ID3TextEncodingConversion;
.super Ljava/lang/Object;
.source "ID3TextEncodingConversion.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "org.jaudiotagger.tag.id3"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3TextEncodingConversion;->logger:Ljava/util/logging/Logger;

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

    if-nez p0, :cond_21

    sget-object p0, Lorg/jaudiotagger/tag/id3/ID3TextEncodingConversion;->logger:Ljava/util/logging/Logger;

    const-string v0, "Header has not yet been set for this framebody"

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isResetTextEncodingForExistingFrames()Z

    move-result p0

    if-eqz p0, :cond_1c

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getId3v23DefaultTextEncoding()B

    move-result p0

    return p0

    :cond_1c
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3TextEncodingConversion;->convertV24textEncodingToV23textEncoding(B)B

    move-result p0

    return p0

    :cond_21
    instance-of p0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    if-eqz p0, :cond_39

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isResetTextEncodingForExistingFrames()Z

    move-result p0

    if-eqz p0, :cond_38

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getId3v24DefaultTextEncoding()B

    move-result p0

    return p0

    :cond_38
    return p1

    :cond_39
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isResetTextEncodingForExistingFrames()Z

    move-result p0

    if-eqz p0, :cond_4c

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getId3v23DefaultTextEncoding()B

    move-result p0

    return p0

    :cond_4c
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3TextEncodingConversion;->convertV24textEncodingToV23textEncoding(B)B

    move-result p0

    return p0
.end method

.method public static getUnicodeTextEncoding(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)B
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_b

    sget-object p0, Lorg/jaudiotagger/tag/id3/ID3TextEncodingConversion;->logger:Ljava/util/logging/Logger;

    const-string v1, "Header has not yet been set for this framebody"

    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return v0

    :cond_b
    instance-of p0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    if-eqz p0, :cond_18

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getId3v24UnicodeTextEncoding()B

    move-result p0

    return p0

    :cond_18
    return v0
.end method
