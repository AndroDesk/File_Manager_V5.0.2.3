.class public abstract Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;
.super Lorg/jaudiotagger/tag/id3/AbstractTag;
.source "AbstractLyrics3.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractTag;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    return-void
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;)V
    .registers 2

    new-instance p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;-><init>()V

    return-void
.end method
