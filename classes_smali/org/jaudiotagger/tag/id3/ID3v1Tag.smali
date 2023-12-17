.class public Lorg/jaudiotagger/tag/id3/ID3v1Tag;
.super Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;
.source "ID3v1Tag.java"

# interfaces
.implements Lorg/jaudiotagger/tag/Tag;


# static fields
.field public static final BYTE_TO_UNSIGNED:I = 0xff

.field public static final FIELD_COMMENT_LENGTH:I = 0x1e

.field public static final FIELD_COMMENT_POS:I = 0x61

.field public static final GENRE_UNDEFINED:I = 0xff

.field private static final MAJOR_VERSION:B = 0x0t

.field private static final RELEASE:B = 0x1t

.field private static final REVISION:B = 0x0t

.field public static final TYPE_COMMENT:Ljava/lang/String; = "comment"

.field public static tagFieldToID3v1Field:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lorg/jaudiotagger/tag/FieldKey;",
            "Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public comment:Ljava/lang/String;

.field public genre:B

.field public title:Ljava/lang/String;

.field public year:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    .line 3
    const-class v1, Lorg/jaudiotagger/tag/FieldKey;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 8
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    .line 10
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    .line 12
    sget-object v2, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->ARTIST:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    .line 19
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    .line 21
    sget-object v2, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->ALBUM:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    .line 28
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TITLE:Lorg/jaudiotagger/tag/FieldKey;

    .line 30
    sget-object v2, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->TITLE:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    .line 37
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    .line 39
    sget-object v2, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->TRACK:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    .line 46
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    .line 48
    sget-object v2, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->YEAR:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    .line 55
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    .line 57
    sget-object v2, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->GENRE:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    .line 64
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COMMENT:Lorg/jaudiotagger/tag/FieldKey;

    .line 66
    sget-object v2, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->COMMENT:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .registers 3

    const-string v0, ""

    .line 53
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;-><init>(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    .registers 7

    .line 39
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;-><init>()V

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    const/4 v0, -0x1

    .line 45
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    .line 46
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    .line 48
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x80

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/16 p1, 0x80

    .line 49
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 50
    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 52
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;-><init>()V

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    const/4 v0, -0x1

    .line 27
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    if-eqz p1, :cond_46

    .line 28
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    if-nez v0, :cond_3e

    .line 29
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    if-eqz v0, :cond_1f

    .line 30
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    goto :goto_25

    .line 31
    :cond_1f
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    move-object p1, v0

    .line 32
    :goto_25
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 37
    iget-byte p1, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    goto :goto_46

    .line 38
    :cond_3e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_46
    :goto_46
    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v1Tag;)V
    .registers 3

    .line 8
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;)V

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    const/4 v0, -0x1

    .line 14
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    .line 15
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 19
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 20
    iget-byte p1, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    return-void
.end method


# virtual methods
.method public addField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->setField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)V

    return-void
.end method

.method public addField(Lorg/jaudiotagger/tag/TagField;)V
    .registers 2

    return-void
.end method

.method public addField(Lorg/jaudiotagger/tag/datatype/Artwork;)V
    .registers 3

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 5

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;

    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/jaudiotagger/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createField(Lorg/jaudiotagger/tag/datatype/Artwork;)Lorg/jaudiotagger/tag/TagField;
    .registers 3

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createStructure()V
    .registers 5

    .line 1
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getIdentifier()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "tag"

    .line 11
    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 20
    const-string v3, "title"

    .line 22
    invoke-virtual {v0, v3, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 31
    const-string v3, "artist"

    .line 33
    invoke-virtual {v0, v3, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 42
    const-string v3, "album"

    .line 44
    invoke-virtual {v0, v3, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 53
    const-string v3, "year"

    .line 55
    invoke-virtual {v0, v3, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 64
    const-string v3, "comment"

    .line 66
    invoke-virtual {v0, v3, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 72
    move-result-object v0

    .line 73
    iget-byte v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    .line 75
    const-string v3, "genre"

    .line 77
    invoke-virtual {v0, v3, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 80
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public deleteArtworkField()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 5
    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 12
    throw v0
.end method

.method public deleteField(Ljava/lang/String;)V
    .registers 2

    .line 8
    invoke-static {p1}, Lorg/jaudiotagger/tag/FieldKey;->valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/FieldKey;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 9
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->deleteField(Lorg/jaudiotagger/tag/FieldKey;)V

    :cond_9
    return-void
.end method

.method public deleteField(Lorg/jaudiotagger/tag/FieldKey;)V
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag$1;->$SwitchMap$org$jaudiotagger$tag$FieldKey:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, ""

    packed-switch p1, :pswitch_data_26

    goto :goto_25

    .line 2
    :pswitch_e  #0x6
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->setComment(Ljava/lang/String;)V

    goto :goto_25

    .line 3
    :pswitch_12  #0x5
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->setYear(Ljava/lang/String;)V

    goto :goto_25

    .line 4
    :pswitch_16  #0x4
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->setGenre(Ljava/lang/String;)V

    goto :goto_25

    .line 5
    :pswitch_1a  #0x3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->setTitle(Ljava/lang/String;)V

    goto :goto_25

    .line 6
    :pswitch_1e  #0x2
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->setAlbum(Ljava/lang/String;)V

    goto :goto_25

    .line 7
    :pswitch_22  #0x1
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->setArtist(Ljava/lang/String;)V

    :goto_25
    return-void

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_22  #00000001
        :pswitch_1e  #00000002
        :pswitch_1a  #00000003
        :pswitch_16  #00000004
        :pswitch_12  #00000005
        :pswitch_e  #00000006
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    move-object v0, p1

    .line 8
    check-cast v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 10
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 12
    iget-object v3, v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_14

    .line 20
    return v1

    .line 21
    :cond_14
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 23
    iget-object v3, v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1f

    .line 31
    return v1

    .line 32
    :cond_1f
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 34
    iget-object v3, v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_2a

    .line 42
    return v1

    .line 43
    :cond_2a
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    .line 45
    iget-byte v3, v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    .line 47
    if-eq v2, v3, :cond_31

    .line 49
    return v1

    .line 50
    :cond_31
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 52
    iget-object v3, v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_3c

    .line 60
    return v1

    .line 61
    :cond_3c
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 63
    iget-object v0, v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4d

    .line 71
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTag;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_4d

    .line 77
    const/4 v1, 0x1

    .line 78
    :cond_4d
    return v1
.end method

.method public getAlbum()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirstAlbum()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_1e

    .line 11
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;

    .line 13
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->ALBUM:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirstAlbum()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->returnFieldToList(Lorg/jaudiotagger/tag/id3/ID3v1TagField;)Ljava/util/List;

    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    return-object v0
.end method

.method public getArtist()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirstArtist()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_1e

    .line 11
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;

    .line 13
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->ARTIST:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirstArtist()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->returnFieldToList(Lorg/jaudiotagger/tag/id3/ID3v1TagField;)Ljava/util/List;

    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    return-object v0
.end method

.method public getArtworkList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/datatype/Artwork;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getComment()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirstComment()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_1e

    .line 11
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;

    .line 13
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->COMMENT:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirstComment()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->returnFieldToList(Lorg/jaudiotagger/tag/id3/ID3v1TagField;)Ljava/util/List;

    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    const-string v0, "ISO-8859-1"

    return-object v0
.end method

.method public getFieldCount()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public getFieldCountIncludingSubValues()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFieldCount()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getFields()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TODO:Not done yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFields(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getArtist()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :cond_11
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 4
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getAlbum()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 5
    :cond_22
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TITLE:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 6
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getTitle()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 7
    :cond_33
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 8
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getGenre()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 9
    :cond_44
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 10
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getYear()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 11
    :cond_55
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COMMENT:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 12
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getComment()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 13
    :cond_66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 15
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag$1;->$SwitchMap$org$jaudiotagger$tag$FieldKey:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_30

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 17
    :pswitch_11  #0x6
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getComment()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_16  #0x5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getYear()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_1b  #0x4
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getGenre()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_20  #0x3
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getTitle()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_25  #0x2
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getAlbum()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_2a  #0x1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getArtist()Ljava/util/List;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2a  #00000001
        :pswitch_25  #00000002
        :pswitch_20  #00000003
        :pswitch_1b  #00000004
        :pswitch_16  #00000005
        :pswitch_11  #00000006
    .end packed-switch
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p1}, Lorg/jaudiotagger/tag/FieldKey;->valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/FieldKey;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 2
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    const-string p1, ""

    return-object p1
.end method

.method public getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;
    .registers 3

    .line 3
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag$1;->$SwitchMap$org$jaudiotagger$tag$FieldKey:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_2c

    const-string p1, ""

    return-object p1

    .line 4
    :pswitch_e  #0x6
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirstComment()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_13  #0x5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirstYear()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_18  #0x4
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirstGenre()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_1d  #0x3
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirstTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_22  #0x2
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_27  #0x1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirstArtist()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_27  #00000001
        :pswitch_22  #00000002
        :pswitch_1d  #00000003
        :pswitch_18  #00000004
        :pswitch_13  #00000005
        :pswitch_e  #00000006
    .end packed-switch
.end method

.method public getFirstAlbum()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFirstArtist()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFirstArtwork()Lorg/jaudiotagger/tag/datatype/Artwork;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstComment()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 4

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getArtist()Ljava/util/List;

    move-result-object p1

    goto :goto_68

    .line 3
    :cond_12
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getAlbum()Ljava/util/List;

    move-result-object p1

    goto :goto_68

    .line 5
    :cond_23
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TITLE:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 6
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getTitle()Ljava/util/List;

    move-result-object p1

    goto :goto_68

    .line 7
    :cond_34
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 8
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getGenre()Ljava/util/List;

    move-result-object p1

    goto :goto_68

    .line 9
    :cond_45
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 10
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getYear()Ljava/util/List;

    move-result-object p1

    goto :goto_68

    .line 11
    :cond_56
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COMMENT:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 12
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getComment()Ljava/util/List;

    move-result-object p1

    goto :goto_68

    :cond_67
    move-object p1, v1

    :goto_68
    if-eqz p1, :cond_78

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_78

    const/4 v0, 0x0

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/TagField;

    return-object p1

    :cond_78
    return-object v1
.end method

.method public getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;
    .registers 3

    .line 15
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/TagField;

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return-object p1
.end method

.method public getFirstGenre()Ljava/lang/String;
    .registers 3

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/GenreTypes;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result v0

    .line 17
    invoke-virtual {v1, v0}, Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;->getValueForId(I)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_18

    .line 23
    const-string v0, ""

    .line 25
    :cond_18
    return-object v0
.end method

.method public getFirstTitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFirstTrack()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v1, "ID3v10 cannot store track numbers"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public getFirstYear()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getGenre()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_20

    .line 13
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v1TagField;

    .line 15
    sget-object v2, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->GENRE:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-direct {v1, v2, v0}, Lorg/jaudiotagger/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->returnFieldToList(Lorg/jaudiotagger/tag/id3/ID3v1TagField;)Ljava/util/List;

    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    return-object v0
.end method

.method public getMajorVersion()B
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getRelease()B
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getRevision()B
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getSubValue(Lorg/jaudiotagger/tag/FieldKey;II)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getTitle()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TITLE:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_20

    .line 13
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v1TagField;

    .line 15
    sget-object v2, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->TITLE:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-direct {v1, v2, v0}, Lorg/jaudiotagger/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->returnFieldToList(Lorg/jaudiotagger/tag/id3/ID3v1TagField;)Ljava/util/List;

    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    return-object v0
.end method

.method public getTrack()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v1, "ID3v10 cannot store track numbers"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getYear()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_20

    .line 13
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v1TagField;

    .line 15
    sget-object v2, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->YEAR:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-direct {v1, v2, v0}, Lorg/jaudiotagger/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->returnFieldToList(Lorg/jaudiotagger/tag/id3/ID3v1TagField;)Ljava/util/List;

    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    return-object v0
.end method

.method public hasCommonFields()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "TODO:Not done yet"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TITLE:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    move-result v0

    .line 11
    if-gtz v0, :cond_44

    .line 13
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirstArtist()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 20
    move-result v0

    .line 21
    if-gtz v0, :cond_44

    .line 23
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirstAlbum()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 30
    move-result v0

    .line 31
    if-gtz v0, :cond_44

    .line 33
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    .line 35
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 42
    move-result v0

    .line 43
    if-gtz v0, :cond_44

    .line 45
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    .line 47
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 54
    move-result v0

    .line 55
    if-gtz v0, :cond_44

    .line 57
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirstComment()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 64
    move-result v0

    .line 65
    if-gtz v0, :cond_44

    .line 67
    const/4 v0, 0x1

    .line 68
    goto :goto_45

    .line 69
    :cond_44
    const/4 v0, 0x0

    .line 70
    :goto_45
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;

    .line 3
    invoke-direct {v0, p0}, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;-><init>(Lorg/jaudiotagger/tag/id3/ID3v1Tag;)V

    .line 6
    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .registers 10

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->seek(Ljava/nio/ByteBuffer;)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, ":"

    .line 7
    if-eqz v0, :cond_183

    .line 9
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, "Reading v1 tag"

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 38
    const/16 v0, 0x80

    .line 40
    new-array v2, v0, [B

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 46
    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 49
    const/4 p1, 0x3

    .line 50
    const/16 v0, 0x1e

    .line 52
    const-string v4, "ISO-8859-1"

    .line 54
    invoke-static {v2, p1, v0, v4}, Lorg/jaudiotagger/audio/generic/Utils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 64
    sget-object v5, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    .line 66
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_57

    .line 76
    iget-object v5, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    .line 81
    move-result p1

    .line 82
    invoke-virtual {v5, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 88
    :cond_57
    const/16 p1, 0x21

    .line 90
    invoke-static {v2, p1, v0, v4}, Lorg/jaudiotagger/audio/generic/Utils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 100
    sget-object v5, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    .line 102
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_7b

    .line 112
    iget-object v5, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    .line 117
    move-result p1

    .line 118
    invoke-virtual {v5, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 124
    :cond_7b
    const/16 p1, 0x3f

    .line 126
    invoke-static {v2, p1, v0, v4}, Lorg/jaudiotagger/audio/generic/Utils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 134
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 136
    sget-object v5, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    .line 138
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 141
    move-result-object p1

    .line 142
    sget-object v5, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 152
    move-result-object v7

    .line 153
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v7, "Orig Album is:"

    .line 161
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v7, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 166
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v6

    .line 176
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 182
    move-result v5

    .line 183
    if-eqz v5, :cond_e9

    .line 185
    iget-object v5, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    .line 190
    move-result p1

    .line 191
    invoke-virtual {v5, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 194
    move-result-object p1

    .line 195
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 197
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    .line 201
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 207
    move-result-object v6

    .line 208
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v6, "Album is:"

    .line 216
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v6, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 221
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object v5

    .line 231
    invoke-virtual {p1, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 234
    :cond_e9
    const/16 p1, 0x5d

    .line 236
    const/4 v5, 0x4

    .line 237
    invoke-static {v2, p1, v5, v4}, Lorg/jaudiotagger/audio/generic/Utils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 244
    move-result-object p1

    .line 245
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 247
    sget-object v5, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    .line 249
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 252
    move-result-object p1

    .line 253
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 256
    move-result v5

    .line 257
    if-eqz v5, :cond_10e

    .line 259
    iget-object v5, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    .line 264
    move-result p1

    .line 265
    invoke-virtual {v5, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 268
    move-result-object p1

    .line 269
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 271
    :cond_10e
    const/16 p1, 0x61

    .line 273
    invoke-static {v2, p1, v0, v4}, Lorg/jaudiotagger/audio/generic/Utils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 280
    move-result-object p1

    .line 281
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 283
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    .line 285
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 288
    move-result-object p1

    .line 289
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    .line 293
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 299
    move-result-object v5

    .line 300
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v5, "Orig Comment is:"

    .line 308
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    iget-object v5, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 313
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    move-result-object v4

    .line 323
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 329
    move-result v0

    .line 330
    if-eqz v0, :cond_17c

    .line 332
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 334
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    .line 337
    move-result p1

    .line 338
    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 341
    move-result-object p1

    .line 342
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 344
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    .line 348
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 354
    move-result-object v3

    .line 355
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v3, "Comment is:"

    .line 363
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 368
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 381
    :cond_17c
    const/16 p1, 0x7f

    .line 383
    aget-byte p1, v2, p1

    .line 385
    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    .line 387
    return-void

    .line 388
    :cond_183
    new-instance p1, Lorg/jaudiotagger/tag/TagNotFoundException;

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    .line 392
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 398
    move-result-object v2

    .line 399
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v1, "ID3v1 tag not found"

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    move-result-object v0

    .line 414
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    .line 417
    throw p1
.end method

.method public returnFieldToList(Lorg/jaudiotagger/tag/id3/ID3v1TagField;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/id3/ID3v1TagField;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    return-object v0
.end method

.method public seek(Ljava/nio/ByteBuffer;)Z
    .registers 5

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [B

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 8
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->TAG_ID:[B

    .line 10
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public setAlbum(Ljava/lang/String;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_b

    .line 3
    const/16 v0, 0x1e

    .line 5
    invoke-static {p1, v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 11
    return-void

    .line 12
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 16
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1
.end method

.method public setArtist(Ljava/lang/String;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_b

    .line 3
    const/16 v0, 0x1e

    .line 5
    invoke-static {p1, v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 11
    return-void

    .line 12
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 16
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_b

    .line 3
    const/16 v0, 0x1e

    .line 5
    invoke-static {p1, v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 11
    return-void

    .line 12
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 16
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1
.end method

.method public setEncoding(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public setField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->createField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public setField(Lorg/jaudiotagger/tag/TagField;)V
    .registers 4

    .line 3
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/tag/FieldKey;->valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/FieldKey;

    move-result-object v0

    .line 4
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag$1;->$SwitchMap$org$jaudiotagger$tag$FieldKey:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_44

    goto :goto_43

    .line 5
    :pswitch_14  #0x6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->setComment(Ljava/lang/String;)V

    goto :goto_43

    .line 6
    :pswitch_1c  #0x5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->setYear(Ljava/lang/String;)V

    goto :goto_43

    .line 7
    :pswitch_24  #0x4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->setGenre(Ljava/lang/String;)V

    goto :goto_43

    .line 8
    :pswitch_2c  #0x3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->setTitle(Ljava/lang/String;)V

    goto :goto_43

    .line 9
    :pswitch_34  #0x2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->setAlbum(Ljava/lang/String;)V

    goto :goto_43

    .line 10
    :pswitch_3c  #0x1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->setArtist(Ljava/lang/String;)V

    :goto_43
    return-void

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_3c  #00000001
        :pswitch_34  #00000002
        :pswitch_2c  #00000003
        :pswitch_24  #00000004
        :pswitch_1c  #00000005
        :pswitch_14  #00000006
    .end packed-switch
.end method

.method public setField(Lorg/jaudiotagger/tag/datatype/Artwork;)V
    .registers 3

    .line 11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGenre(Ljava/lang/String;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_17

    .line 3
    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/GenreTypes;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;->getIdForValue(Ljava/lang/String;)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_13

    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->byteValue()B

    .line 16
    move-result p1

    .line 17
    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    .line 19
    goto :goto_16

    .line 20
    :cond_13
    const/4 p1, -0x1

    .line 21
    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    .line 23
    :goto_16
    return-void

    .line 24
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 28
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p1
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_b

    .line 3
    const/16 v0, 0x1e

    .line 5
    invoke-static {p1, v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 11
    return-void

    .line 12
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 16
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1
.end method

.method public setYear(Ljava/lang/String;)V
    .registers 3

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p1, v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    .line 5
    move-result-object p1

    .line 6
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .registers 9

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "Saving ID3v1 tag to file"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 8
    const/16 v0, 0x80

    .line 10
    new-array v0, v0, [B

    .line 12
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->delete(Ljava/io/RandomAccessFile;)V

    .line 15
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    .line 18
    move-result-wide v1

    .line 19
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 22
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->TAG_ID:[B

    .line 24
    array-length v2, v1

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v1SaveTitle()Z

    .line 36
    move-result v1

    .line 37
    const/16 v2, 0x1e

    .line 39
    if-eqz v1, :cond_41

    .line 41
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 43
    invoke-static {v1, v2}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    move v4, v3

    .line 48
    :goto_2f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 51
    move-result v5

    .line 52
    if-ge v4, v5, :cond_41

    .line 54
    add-int/lit8 v5, v4, 0x3

    .line 56
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 59
    move-result v6

    .line 60
    int-to-byte v6, v6

    .line 61
    aput-byte v6, v0, v5

    .line 63
    add-int/lit8 v4, v4, 0x1

    .line 65
    goto :goto_2f

    .line 66
    :cond_41
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v1SaveArtist()Z

    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_64

    .line 76
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 78
    invoke-static {v1, v2}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    move v4, v3

    .line 83
    :goto_52
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 86
    move-result v5

    .line 87
    if-ge v4, v5, :cond_64

    .line 89
    add-int/lit8 v5, v4, 0x21

    .line 91
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 94
    move-result v6

    .line 95
    int-to-byte v6, v6

    .line 96
    aput-byte v6, v0, v5

    .line 98
    add-int/lit8 v4, v4, 0x1

    .line 100
    goto :goto_52

    .line 101
    :cond_64
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v1SaveAlbum()Z

    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_87

    .line 111
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 113
    invoke-static {v1, v2}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 117
    move v4, v3

    .line 118
    :goto_75
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 121
    move-result v5

    .line 122
    if-ge v4, v5, :cond_87

    .line 124
    add-int/lit8 v5, v4, 0x3f

    .line 126
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 129
    move-result v6

    .line 130
    int-to-byte v6, v6

    .line 131
    aput-byte v6, v0, v5

    .line 133
    add-int/lit8 v4, v4, 0x1

    .line 135
    goto :goto_75

    .line 136
    :cond_87
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v1SaveYear()Z

    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_ab

    .line 146
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 148
    const/4 v4, 0x4

    .line 149
    invoke-static {v1, v4}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    .line 152
    move-result-object v1

    .line 153
    move v4, v3

    .line 154
    :goto_99
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 157
    move-result v5

    .line 158
    if-ge v4, v5, :cond_ab

    .line 160
    add-int/lit8 v5, v4, 0x5d

    .line 162
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 165
    move-result v6

    .line 166
    int-to-byte v6, v6

    .line 167
    aput-byte v6, v0, v5

    .line 169
    add-int/lit8 v4, v4, 0x1

    .line 171
    goto :goto_99

    .line 172
    :cond_ab
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v1SaveComment()Z

    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_cd

    .line 182
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 184
    invoke-static {v1, v2}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    .line 187
    move-result-object v1

    .line 188
    :goto_bb
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 191
    move-result v2

    .line 192
    if-ge v3, v2, :cond_cd

    .line 194
    add-int/lit8 v2, v3, 0x61

    .line 196
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 199
    move-result v4

    .line 200
    int-to-byte v4, v4

    .line 201
    aput-byte v4, v0, v2

    .line 203
    add-int/lit8 v3, v3, 0x1

    .line 205
    goto :goto_bb

    .line 206
    :cond_cd
    const/16 v1, 0x7f

    .line 208
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 211
    move-result-object v2

    .line 212
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v1SaveGenre()Z

    .line 215
    move-result v2

    .line 216
    if-eqz v2, :cond_dd

    .line 218
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    .line 220
    aput-byte v2, v0, v1

    .line 222
    :cond_dd
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 225
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    .line 227
    const-string v0, "Saved ID3v1 tag to file"

    .line 229
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 232
    return-void
.end method
