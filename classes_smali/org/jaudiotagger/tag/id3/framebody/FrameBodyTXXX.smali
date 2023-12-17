.class public Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;
.super Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;
.source "FrameBodyTXXX.java"

# interfaces
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v23FrameBody;


# static fields
.field public static final ALBUM_ARTIST:Ljava/lang/String; = "ALBUM ARTIST"

.field public static final AMAZON_ASIN:Ljava/lang/String; = "ASIN"

.field public static final BARCODE:Ljava/lang/String; = "BARCODE"

.field public static final CATALOG_NO:Ljava/lang/String; = "CATALOGNUMBER"

.field public static final FBPM:Ljava/lang/String; = "FBPM"

.field public static final MOOD:Ljava/lang/String; = "MOOD"

.field public static final MUSICBRAINZ_ALBUMID:Ljava/lang/String; = "MusicBrainz Album Id"

.field public static final MUSICBRAINZ_ALBUM_ARTISTID:Ljava/lang/String; = "MusicBrainz Album Artist Id"

.field public static final MUSICBRAINZ_ALBUM_COUNTRY:Ljava/lang/String; = "MusicBrainz Album Release Country"

.field public static final MUSICBRAINZ_ALBUM_STATUS:Ljava/lang/String; = "MusicBrainz Album Status"

.field public static final MUSICBRAINZ_ALBUM_TYPE:Ljava/lang/String; = "MusicBrainz Album Type"

.field public static final MUSICBRAINZ_ARTISTID:Ljava/lang/String; = "MusicBrainz Artist Id"

.field public static final MUSICBRAINZ_DISCID:Ljava/lang/String; = "MusicBrainz Disc Id"

.field public static final MUSICBRAINZ_RELEASE_GROUPID:Ljava/lang/String; = "MusicBrainz Release Group Id"

.field public static final MUSICBRAINZ_WORKID:Ljava/lang/String; = "MusicBrainz Work Id"

.field public static final MUSICIP_ID:Ljava/lang/String; = "MusicIP PUID"

.field public static final PERFORMER:Ljava/lang/String; = "PERFORMER"

.field public static final SCRIPT:Ljava/lang/String; = "SCRIPT"

.field public static final TAGS:Ljava/lang/String; = "TAGS"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "TextEncoding"

    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Description"

    const-string v1, ""

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Text"

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 11
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    .line 12
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "Description"

    .line 13
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "Text"

    .line 14
    invoke-virtual {p0, p1, p3}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .registers 3

    .line 15
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMOO;)V
    .registers 4

    .line 5
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    .line 6
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "TextEncoding"

    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Description"

    const-string v1, "MOOD"

    .line 8
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Text"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;)V
    .registers 2

    .line 10
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "Description"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 9
    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "TXXX"

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "Description"

    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public setupObjectList()V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 3
    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;

    .line 5
    const-string v2, "TextEncoding"

    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 16
    new-instance v1, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;

    .line 18
    const-string v2, "Description"

    .line 20
    invoke-direct {v1, v2, p0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 28
    new-instance v1, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    .line 30
    const-string v2, "Text"

    .line 32
    invoke-direct {v1, v2, p0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getHeader()Lorg/jaudiotagger/tag/id3/AbstractTagFrame;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Lorg/jaudiotagger/tag/id3/ID3TextEncodingConversion;->getTextEncoding(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;B)B

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    .line 16
    const-string v0, "Description"

    .line 18
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;

    .line 24
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractString;->canBeEncoded()Z

    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_28

    .line 30
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getHeader()Lorg/jaudiotagger/tag/id3/AbstractTagFrame;

    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3TextEncodingConversion;->getUnicodeTextEncoding(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)B

    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    .line 41
    :cond_28
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 44
    return-void
.end method
