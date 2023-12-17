.class final Lorg/jaudiotagger/audio/asf/io/ModificationResult;
.super Ljava/lang/Object;
.source "ModificationResult.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private final byteDifference:J

.field private final chunkDifference:I

.field private final occuredGUIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jaudiotagger/audio/asf/data/GUID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJLjava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Set<",
            "Lorg/jaudiotagger/audio/asf/data/GUID;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->occuredGUIDs:Ljava/util/Set;

    .line 8
    iput p1, p0, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->chunkDifference:I

    .line 9
    iput-wide p2, p0, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->byteDifference:J

    .line 10
    invoke-interface {v0, p4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public varargs constructor <init>(IJ[Lorg/jaudiotagger/audio/asf/data/GUID;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->occuredGUIDs:Ljava/util/Set;

    .line 3
    iput p1, p0, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->chunkDifference:I

    .line 4
    iput-wide p2, p0, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->byteDifference:J

    .line 5
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getByteDifference()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->byteDifference:J

    .line 3
    return-wide v0
.end method

.method public getChunkCountDifference()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->chunkDifference:I

    .line 3
    return v0
.end method

.method public getOccuredGUIDs()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/jaudiotagger/audio/asf/data/GUID;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->occuredGUIDs:Ljava/util/Set;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    return-object v0
.end method
