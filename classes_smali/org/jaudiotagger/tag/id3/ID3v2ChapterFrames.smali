.class public Lorg/jaudiotagger/tag/id3/ID3v2ChapterFrames;
.super Lorg/jaudiotagger/tag/id3/ID3Frames;
.source "ID3v2ChapterFrames.java"


# static fields
.field public static final FRAME_ID_CHAPTER:Ljava/lang/String; = "CHAP"

.field public static final FRAME_ID_TABLE_OF_CONTENT:Ljava/lang/String; = "CTOC"

.field private static id3v2ChapterFrames:Lorg/jaudiotagger/tag/id3/ID3v2ChapterFrames;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/ID3Frames;-><init>()V

    .line 4
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 6
    const-string v1, "CHAP"

    .line 8
    const-string v2, "Chapter"

    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 15
    const-string v1, "CTOC"

    .line 17
    const-string v2, "Table of content"

    .line 19
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/AbstractStringStringValuePair;->createMaps()V

    .line 25
    new-instance v0, Ljava/util/TreeSet;

    .line 27
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 30
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3Frames;->multipleFrames:Ljava/util/TreeSet;

    .line 32
    new-instance v0, Ljava/util/TreeSet;

    .line 34
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 37
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3Frames;->discardIfFileAlteredFrames:Ljava/util/TreeSet;

    .line 39
    return-void
.end method

.method public static getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v2ChapterFrames;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v2ChapterFrames;->id3v2ChapterFrames:Lorg/jaudiotagger/tag/id3/ID3v2ChapterFrames;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v2ChapterFrames;

    .line 7
    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v2ChapterFrames;-><init>()V

    .line 10
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3v2ChapterFrames;->id3v2ChapterFrames:Lorg/jaudiotagger/tag/id3/ID3v2ChapterFrames;

    .line 12
    :cond_b
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v2ChapterFrames;->id3v2ChapterFrames:Lorg/jaudiotagger/tag/id3/ID3v2ChapterFrames;

    .line 14
    return-object v0
.end method
