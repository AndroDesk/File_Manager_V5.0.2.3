.class public Lcom/bumptech/glide/signature/MediaStoreSignature;
.super Ljava/lang/Object;
.source "MediaStoreSignature.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final dateModified:J

.field private final mimeType:Ljava/lang/String;

.field private final orientation:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-nez p1, :cond_7

    .line 6
    const-string p1, ""

    .line 8
    :cond_7
    iput-object p1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    .line 10
    iput-wide p2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    .line 12
    iput p4, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    .line 14
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
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
    if-eqz p1, :cond_30

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_12

    .line 18
    goto :goto_30

    .line 19
    :cond_12
    check-cast p1, Lcom/bumptech/glide/signature/MediaStoreSignature;

    .line 21
    iget-wide v2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    .line 23
    iget-wide v4, p1, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    .line 25
    cmp-long v2, v2, v4

    .line 27
    if-eqz v2, :cond_1d

    .line 29
    return v1

    .line 30
    :cond_1d
    iget v2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    .line 32
    iget v3, p1, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    .line 34
    if-eq v2, v3, :cond_24

    .line 36
    return v1

    .line 37
    :cond_24
    iget-object v2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    .line 39
    iget-object p1, p1, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_2f

    .line 47
    return v1

    .line 48
    :cond_2f
    return v0

    .line 49
    :cond_30
    :goto_30
    return v1
.end method

.method public hashCode()I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-wide v1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    .line 11
    const/16 v3, 0x20

    .line 13
    ushr-long v3, v1, v3

    .line 15
    xor-long/2addr v1, v3

    .line 16
    long-to-int v1, v1

    .line 17
    add-int/2addr v0, v1

    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 20
    iget v1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    .line 22
    add-int/2addr v0, v1

    .line 23
    return v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 5

    .line 1
    const/16 v0, 0xc

    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 12
    move-result-object v0

    .line 13
    iget v1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    .line 15
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 26
    iget-object v0, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    .line 28
    sget-object v1, Lcom/bumptech/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 37
    return-void
.end method
