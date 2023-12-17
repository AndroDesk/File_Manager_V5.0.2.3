.class public final Lr1/h;
.super Ljava/lang/Object;
.source "UploadChunkInfo.java"

# interfaces
.implements Lp1/f;


# static fields
.field public static final h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public g:Lr1/g;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 11
    sput-object v1, Lr1/h;->h:Ljava/util/HashSet;

    .line 13
    new-instance v2, Ljava/util/HashSet;

    .line 15
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 18
    sput-object v2, Lr1/h;->i:Ljava/util/HashSet;

    .line 20
    const-string v3, "ERR_INVALID_FILE_META"

    .line 22
    const-string v4, "ERR_INVALID_BLOCK_META"

    .line 24
    const-string v5, "ERR_INVALID_UPLOAD_ID"

    .line 26
    const-string v6, "ERR_INVALID_CHUNK_POS"

    .line 28
    invoke-static {v0, v3, v4, v5, v6}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v6, "ERR_INVALID_CHUNK_SIZE"

    .line 33
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v6, "ERR_CHUNK_OUT_OF_RANGE"

    .line 38
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v0, "ERR_CHUNK_CORRUPTED"

    .line 43
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v0, "ERR_SERVER_EXCEPTION"

    .line 48
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v0, "ERR_STORAGE_REQUEST_ERROR"

    .line 53
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v0, "ERR_STORAGE_REQUEST_FAILED"

    .line 58
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CONTINUE_UPLOAD"

    .line 2
    iput-object v0, p0, Lr1/h;->b:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lr1/h;->c:J

    .line 4
    iput-wide p4, p0, Lr1/h;->d:J

    .line 5
    iput-object p1, p0, Lr1/h;->e:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lr1/h;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "stat"

    .line 8
    invoke-static {p1, v0}, Ls1/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr1/h;->b:Ljava/lang/String;

    const-string v0, "next_pos"

    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/a;->a(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lr1/h;->c:J

    const-string v0, "left_bytes"

    .line 10
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/a;->a(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lr1/h;->d:J

    const-string v0, "upload_id"

    .line 11
    invoke-static {p1, v0}, Ls1/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr1/h;->e:Ljava/lang/String;

    const-string v0, "commit_meta"

    .line 12
    invoke-static {p1, v0}, Ls1/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lr1/h;->f:Ljava/lang/String;

    return-void
.end method
