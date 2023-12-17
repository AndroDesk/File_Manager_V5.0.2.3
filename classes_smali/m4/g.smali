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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lm4/b;-><init>()V

    .line 4
    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 6
    iput-object v0, p0, Lm4/m;->a:Ljava/lang/Object;

    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_32

    .line 8
    const-class v2, Lm4/g;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_10

    .line 16
    goto :goto_32

    .line 17
    :cond_10
    invoke-super {p0, p1}, Lm4/b;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_17

    .line 23
    return v1

    .line 24
    :cond_17
    check-cast p1, Lm4/g;

    .line 26
    iget-object v2, p0, Lm4/b;->o:Lm4/l;

    .line 28
    if-eqz v2, :cond_20

    .line 30
    iget-wide v2, v2, Lm4/l;->d:J

    .line 32
    goto :goto_22

    .line 33
    :cond_20
    iget-wide v2, p0, Lm4/g;->w:J

    .line 35
    :goto_22
    iget-object v4, p1, Lm4/b;->o:Lm4/l;

    .line 37
    if-eqz v4, :cond_29

    .line 39
    iget-wide v4, v4, Lm4/l;->d:J

    .line 41
    goto :goto_2b

    .line 42
    :cond_29
    iget-wide v4, p1, Lm4/g;->w:J

    .line 44
    :goto_2b
    cmp-long p1, v2, v4

    .line 46
    if-nez p1, :cond_30

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move v0, v1

    .line 50
    :goto_31
    return v0

    .line 51
    :cond_32
    :goto_32
    return v1
.end method

.method public final hashCode()I
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lm4/b;->k:Ljava/lang/String;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Lm4/b;->o:Lm4/l;

    .line 12
    if-eqz v2, :cond_10

    .line 14
    iget-wide v2, v2, Lm4/l;->d:J

    .line 16
    goto :goto_12

    .line 17
    :cond_10
    iget-wide v2, p0, Lm4/g;->w:J

    .line 19
    :goto_12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    move-result-object v2

    .line 23
    aput-object v2, v0, v1

    .line 25
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 28
    move-result v0

    .line 29
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lm4/b;->k:Ljava/lang/String;

    .line 3
    return-object v0
.end method
