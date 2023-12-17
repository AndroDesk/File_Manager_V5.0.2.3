.class public abstract Lm4/b;
.super Lm4/m;
.source "AbstractFileHeader.java"


# instance fields
.field public b:I

.field public c:[B

.field public d:Lnet/lingala/zip4j/model/enums/CompressionMethod;

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

.field public n:Z

.field public o:Lm4/l;

.field public p:Lm4/a;

.field public q:Z

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm4/f;",
            ">;"
        }
    .end annotation
.end field

.field public s:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lm4/m;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lm4/b;->f:J

    iput-wide v0, p0, Lm4/b;->g:J

    iput-wide v0, p0, Lm4/b;->h:J

    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object v0, p0, Lm4/b;->m:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lm4/b;

    if-nez v1, :cond_9

    return v0

    :cond_9
    iget-object v0, p0, Lm4/b;->k:Ljava/lang/String;

    check-cast p1, Lm4/b;

    iget-object p1, p1, Lm4/b;->k:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
