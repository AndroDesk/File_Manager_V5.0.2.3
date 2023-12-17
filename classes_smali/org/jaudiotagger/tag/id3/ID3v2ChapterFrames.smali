.class public Lorg/jaudiotagger/tag/id3/ID3v2ChapterFrames;
.super Lorg/jaudiotagger/tag/id3/ID3Frames;
.source "ID3v2ChapterFrames.java"


# static fields
.field public static final FRAME_ID_CHAPTER:Ljava/lang/String; = "CHAP"

.field public static final FRAME_ID_TABLE_OF_CONTENT:Ljava/lang/String; = "CTOC"

.field private static id3v2ChapterFrames:Lorg/jaudiotagger/tag/id3/ID3v2ChapterFrames;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/ID3Frames;-><init>()V

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "CHAP"

    const-string v2, "Chapter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "CTOC"

    const-string v2, "Table of content"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/AbstractStringStringValuePair;->createMaps()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3Frames;->multipleFrames:Ljava/util/TreeSet;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3Frames;->discardIfFileAlteredFrames:Ljava/util/TreeSet;

    return-void
.end method

.method public static getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v2ChapterFrames;
    .registers 1

    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v2ChapterFrames;->id3v2ChapterFrames:Lorg/jaudiotagger/tag/id3/ID3v2ChapterFrames;

    if-nez v0, :cond_b

    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v2ChapterFrames;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v2ChapterFrames;-><init>()V

    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3v2ChapterFrames;->id3v2ChapterFrames:Lorg/jaudiotagger/tag/id3/ID3v2ChapterFrames;

    :cond_b
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v2ChapterFrames;->id3v2ChapterFrames:Lorg/jaudiotagger/tag/id3/ID3v2ChapterFrames;

    return-object v0
.end method
