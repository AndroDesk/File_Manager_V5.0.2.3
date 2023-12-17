.class public final Lm4/g;
.super Lm4/b;
.source "FileHeader.java"


# instance fields
.field public t:I

.field public u:I

.field public v:[B

.field public w:J

.field public x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lm4/b;-><init>()V

    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    iput-object v0, p0, Lm4/m;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    const-class v2, Lm4/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_32

    :cond_10
    invoke-super {p0, p1}, Lm4/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    return v1

    :cond_17
    check-cast p1, Lm4/g;

    iget-object v2, p0, Lm4/b;->o:Lm4/l;

    if-eqz v2, :cond_20

    iget-wide v2, v2, Lm4/l;->d:J

    goto :goto_22

    :cond_20
    iget-wide v2, p0, Lm4/g;->w:J

    :goto_22
    iget-object v4, p1, Lm4/b;->o:Lm4/l;

    if-eqz v4, :cond_29

    iget-wide v4, v4, Lm4/l;->d:J

    goto :goto_2b

    :cond_29
    iget-wide v4, p1, Lm4/g;->w:J

    :goto_2b
    cmp-long p1, v2, v4

    if-nez p1, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    :goto_31
    return v0

    :cond_32
    :goto_32
    return v1
.end method

.method public final hashCode()I
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lm4/b;->k:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lm4/b;->o:Lm4/l;

    if-eqz v2, :cond_10

    iget-wide v2, v2, Lm4/l;->d:J

    goto :goto_12

    :cond_10
    iget-wide v2, p0, Lm4/g;->w:J

    :goto_12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lm4/b;->k:Ljava/lang/String;

    return-object v0
.end method
