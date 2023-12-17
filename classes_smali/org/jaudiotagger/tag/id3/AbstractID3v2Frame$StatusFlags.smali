.class public Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;
.super Ljava/lang/Object;
.source "AbstractID3v2Frame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusFlags"
.end annotation


# static fields
.field public static final TYPE_FLAGS:Ljava/lang/String; = "statusFlags"


# instance fields
.field public originalFlags:B

.field public final synthetic this$0:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

.field public writeFlags:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .registers 2

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->this$0:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createStructure()V
    .registers 1

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getOriginalFlags()B

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getOriginalFlags()B

    move-result v1

    int-to-long v5, v1

    invoke-static {v3, v4, v5, v6}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(JJ)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getWriteFlags()B

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getWriteFlags()B

    move-result p1

    int-to-long v5, p1

    invoke-static {v3, v4, v5, v6}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(JJ)Z

    move-result p1

    if-eqz p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v2

    :goto_2e
    return v0
.end method

.method public getOriginalFlags()B
    .registers 2

    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->originalFlags:B

    return v0
.end method

.method public getWriteFlags()B
    .registers 2

    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->writeFlags:B

    return v0
.end method
