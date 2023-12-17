.class public Lorg/jaudiotagger/audio/asf/io/ChunkRemover;
.super Ljava/lang/Object;
.source "ChunkRemover.java"

# interfaces
.implements Lorg/jaudiotagger/audio/asf/io/ChunkModifier;


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private final toRemove:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jaudiotagger/audio/asf/data/GUID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lorg/jaudiotagger/audio/asf/data/GUID;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/audio/asf/io/ChunkRemover;->toRemove:Ljava/util/Set;

    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_c
    if-ge v1, v0, :cond_18

    .line 15
    aget-object v2, p1, v1

    .line 17
    iget-object v3, p0, Lorg/jaudiotagger/audio/asf/io/ChunkRemover;->toRemove:Ljava/util/Set;

    .line 19
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_c

    .line 25
    :cond_18
    return-void
.end method


# virtual methods
.method public isApplicable(Lorg/jaudiotagger/audio/asf/data/GUID;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/ChunkRemover;->toRemove:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public modify(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/jaudiotagger/audio/asf/io/ModificationResult;
    .registers 9

    .line 1
    const/4 p3, 0x0

    .line 2
    if-nez p1, :cond_d

    .line 4
    new-instance p1, Lorg/jaudiotagger/audio/asf/io/ModificationResult;

    .line 6
    const-wide/16 v0, 0x0

    .line 8
    new-array p2, p3, [Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 10
    invoke-direct {p1, p3, v0, v1, p2}, Lorg/jaudiotagger/audio/asf/io/ModificationResult;-><init>(IJ[Lorg/jaudiotagger/audio/asf/data/GUID;)V

    .line 13
    goto :goto_27

    .line 14
    :cond_d
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    .line 17
    move-result-wide v0

    .line 18
    const-wide/16 v2, 0x18

    .line 20
    sub-long v2, v0, v2

    .line 22
    invoke-virtual {p2, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 25
    new-instance p2, Lorg/jaudiotagger/audio/asf/io/ModificationResult;

    .line 27
    const/4 v2, -0x1

    .line 28
    const-wide/16 v3, -0x1

    .line 30
    mul-long/2addr v0, v3

    .line 31
    const/4 v3, 0x1

    .line 32
    new-array v3, v3, [Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 34
    aput-object p1, v3, p3

    .line 36
    invoke-direct {p2, v2, v0, v1, v3}, Lorg/jaudiotagger/audio/asf/io/ModificationResult;-><init>(IJ[Lorg/jaudiotagger/audio/asf/data/GUID;)V

    .line 39
    move-object p1, p2

    .line 40
    :goto_27
    return-object p1
.end method
