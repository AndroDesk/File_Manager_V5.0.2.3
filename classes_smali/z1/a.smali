.class public final Lz1/a;
.super Ljava/lang/Object;
.source "WpsSnapshotV2Data.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field public volatile a:[B

.field public b:Ljava/lang/String;

.field public c:Landroid/net/Uri;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "1280X720"

    .line 6
    iput-object v0, p0, Lz1/a;->d:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lz1/a;->c:Landroid/net/Uri;

    .line 10
    if-nez p1, :cond_2c

    .line 12
    const-string p1, ""

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_24

    .line 20
    :try_start_13
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lz1/a;->c:Landroid/net/Uri;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_19} :catch_1c

    .line 26
    iput-object p1, p0, Lz1/a;->b:Ljava/lang/String;

    .line 28
    goto :goto_2c

    .line 29
    :catch_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    const-string p2, "UriStr is invalid!"

    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1

    .line 37
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    const-string p2, "UriStr must not be null!"

    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p1

    .line 45
    :cond_2c
    :goto_2c
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_34

    .line 51
    iput-object p3, p0, Lz1/a;->d:Ljava/lang/String;

    .line 53
    :cond_34
    iput-object p2, p0, Lz1/a;->e:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    if-ne p0, p1, :cond_4

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_4
    if-eqz p1, :cond_1c

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object v0

    .line 11
    const-class v1, Lz1/a;

    .line 13
    if-eq v1, v0, :cond_f

    .line 15
    goto :goto_1c

    .line 16
    :cond_f
    invoke-virtual {p0}, Lz1/a;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lz1/a;->toString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lz1/a;->b:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_12

    .line 9
    iget-object v0, p0, Lz1/a;->c:Landroid/net/Uri;

    .line 11
    if-eqz v0, :cond_12

    .line 13
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lz1/a;->b:Ljava/lang/String;

    .line 19
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    iget-object v1, p0, Lz1/a;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v1, p0, Lz1/a;->e:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v1, p0, Lz1/a;->d:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method

.method public final updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lz1/a;->a:[B

    .line 3
    if-nez v0, :cond_10

    .line 5
    invoke-virtual {p0}, Lz1/a;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/bumptech/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lz1/a;->a:[B

    .line 17
    :cond_10
    iget-object v0, p0, Lz1/a;->a:[B

    .line 19
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 22
    return-void
.end method
