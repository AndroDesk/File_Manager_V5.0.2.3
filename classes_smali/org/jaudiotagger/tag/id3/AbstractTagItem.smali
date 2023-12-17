.class public abstract Lorg/jaudiotagger/tag/id3/AbstractTagItem;
.super Ljava/lang/Object;
.source "AbstractTagItem.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.tag.id3"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractTagItem;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    if-ne p0, p1, :cond_4

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_4
    instance-of p1, p1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;

    .line 7
    return p1
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public abstract getSize()I
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;

    .line 3
    return p1
.end method

.method public abstract read(Ljava/nio/ByteBuffer;)V
.end method
