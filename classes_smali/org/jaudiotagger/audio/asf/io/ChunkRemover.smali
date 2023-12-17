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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public varargs constructor <init>([Lorg/jaudiotagger/audio/asf/data/GUID;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/asf/io/ChunkRemover;->toRemove:Ljava/util/Set;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_18

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/jaudiotagger/audio/asf/io/ChunkRemover;->toRemove:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_18
    return-void
.end method


# virtual methods
.method public isApplicable(Lorg/jaudiotagger/audio/asf/data/GUID;)Z
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/ChunkRemover;->toRemove:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public modify(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/jaudiotagger/audio/asf/io/ModificationResult;
    .registers 9

    const/4 p3, 0x0

    if-nez p1, :cond_d

    new-instance p1, Lorg/jaudiotagger/audio/asf/io/ModificationResult;

    const-wide/16 v0, 0x0

    new-array p2, p3, [Lorg/jaudiotagger/audio/asf/data/GUID;

    invoke-direct {p1, p3, v0, v1, p2}, Lorg/jaudiotagger/audio/asf/io/ModificationResult;-><init>(IJ[Lorg/jaudiotagger/audio/asf/data/GUID;)V

    goto :goto_27

    :cond_d
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    move-result-wide v0

    const-wide/16 v2, 0x18

    sub-long v2, v0, v2

    invoke-virtual {p2, v2, v3}, Ljava/io/InputStream;->skip(J)J

    new-instance p2, Lorg/jaudiotagger/audio/asf/io/ModificationResult;

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    mul-long/2addr v0, v3

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/jaudiotagger/audio/asf/data/GUID;

    aput-object p1, v3, p3

    invoke-direct {p2, v2, v0, v1, v3}, Lorg/jaudiotagger/audio/asf/io/ModificationResult;-><init>(IJ[Lorg/jaudiotagger/audio/asf/data/GUID;)V

    move-object p1, p2

    :goto_27
    return-object p1
.end method
