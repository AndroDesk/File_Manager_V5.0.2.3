.class public abstract Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;
.super Lorg/jaudiotagger/tag/id3/AbstractID3Tag;
.source "AbstractID3v1Tag.java"


# static fields
.field public static final END_OF_FIELD:B = 0x0t

.field public static final FIELD_ALBUM_LENGTH:I = 0x1e

.field public static final FIELD_ALBUM_POS:I = 0x3f

.field public static final FIELD_ARTIST_LENGTH:I = 0x1e

.field public static final FIELD_ARTIST_POS:I = 0x21

.field public static final FIELD_GENRE_LENGTH:I = 0x1

.field public static final FIELD_GENRE_POS:I = 0x7f

.field public static final FIELD_TAGID_LENGTH:I = 0x3

.field public static final FIELD_TAGID_POS:I = 0x0

.field public static final FIELD_TITLE_LENGTH:I = 0x1e

.field public static final FIELD_TITLE_POS:I = 0x3

.field public static final FIELD_YEAR_LENGTH:I = 0x4

.field public static final FIELD_YEAR_POS:I = 0x5d

.field public static final TAG_DATA_LENGTH:I = 0x7d

.field public static final TAG_ID:[B

.field public static final TAG_LENGTH:I = 0x80

.field public static final TYPE_ALBUM:Ljava/lang/String; = "album"

.field public static final TYPE_ARTIST:Ljava/lang/String; = "artist"

.field public static final TYPE_GENRE:Ljava/lang/String; = "genre"

.field public static final TYPE_TITLE:Ljava/lang/String; = "title"

.field public static final TYPE_YEAR:Ljava/lang/String; = "year"

.field public static endofStringPattern:Ljava/util/regex/Pattern;

.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "org.jaudiotagger.tag.id3"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    const-string v0, "\\x00"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->TAG_ID:[B

    return-void

    nop

    :array_1a
    .array-data 1
        0x54t
        0x41t
        0x47t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3Tag;)V

    return-void
.end method

.method public static seekForV1OrV11Tag(Ljava/nio/ByteBuffer;)Z
    .registers 4

    const/4 v0, 0x3

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sget-object p0, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->TAG_ID:[B

    invoke-static {v1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;)V
    .registers 7

    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Deleting ID3v1 from file if exists"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x80

    cmp-long v1, v1, v3

    if-ltz v1, :cond_47

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->seekForV1OrV11Tag(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_3f

    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Deleted ID3v1 tag"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    sub-long/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    goto :goto_46

    :cond_3f
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    const-string v0, "Unable to find ID3v1 tag to deleteField"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :goto_46
    return-void

    :cond_47
    new-instance p1, Ljava/io/IOException;

    const-string v0, "File not not appear large enough to contain a tag"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSize()I
    .registers 2

    const/16 v0, 0x80

    return v0
.end method
