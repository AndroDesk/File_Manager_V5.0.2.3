.class Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;
.super Ljava/lang/Object;
.source "AbstractID3v2Tag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrameAndSubId"
.end annotation


# instance fields
.field private frameId:Ljava/lang/String;

.field private subId:Ljava/lang/String;

.field public final synthetic this$0:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->this$0:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->frameId:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->subId:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getFrameId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->frameId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSubId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->subId:Ljava/lang/String;

    .line 3
    return-object v0
.end method
