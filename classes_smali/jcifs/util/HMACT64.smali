.class public Ljcifs/util/HMACT64;
.super Ljava/security/MessageDigest;
.source "HMACT64.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BLOCK_LENGTH:I

.field private static final IPAD:B = 0x36t

.field private static final OPAD:B = 0x5ct


# instance fields
.field private ipad:[B

.field private md5:Ljava/security/MessageDigest;

.field private opad:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92dd6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/util/HMACT64;->BLOCK_LENGTH:I

    return-void
.end method

.method private constructor <init>(Ljcifs/util/HMACT64;)V
    .registers 4

    const-string v0, "HMACT64"

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x40

    new-array v1, v0, [B

    iput-object v1, p0, Ljcifs/util/HMACT64;->ipad:[B

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/util/HMACT64;->opad:[B

    iget-object v0, p1, Ljcifs/util/HMACT64;->ipad:[B

    iput-object v0, p0, Ljcifs/util/HMACT64;->ipad:[B

    iget-object v0, p1, Ljcifs/util/HMACT64;->opad:[B

    iput-object v0, p0, Ljcifs/util/HMACT64;->opad:[B

    iget-object p1, p1, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/MessageDigest;

    iput-object p1, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 9

    const-string v0, "HMACT64"

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x40

    new-array v1, v0, [B

    iput-object v1, p0, Ljcifs/util/HMACT64;->ipad:[B

    new-array v1, v0, [B

    iput-object v1, p0, Ljcifs/util/HMACT64;->opad:[B

    array-length v1, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_15
    const/16 v3, 0x5c

    const/16 v4, 0x36

    if-lt v2, v1, :cond_3f

    :goto_1b
    if-lt v1, v0, :cond_34

    :try_start_1d
    const-string p1, "MD5"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_29

    invoke-virtual {p0}, Ljcifs/util/HMACT64;->engineReset()V

    return-void

    :catch_29
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    iget-object p1, p0, Ljcifs/util/HMACT64;->ipad:[B

    aput-byte v4, p1, v1

    iget-object p1, p0, Ljcifs/util/HMACT64;->opad:[B

    aput-byte v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_3f
    iget-object v5, p0, Ljcifs/util/HMACT64;->ipad:[B

    aget-byte v6, p1, v2

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v5, v2

    iget-object v4, p0, Ljcifs/util/HMACT64;->opad:[B

    aget-byte v5, p1, v2

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_15
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    :try_start_0
    new-instance v0, Ljcifs/util/HMACT64;

    invoke-direct {v0, p0}, Ljcifs/util/HMACT64;-><init>(Ljcifs/util/HMACT64;)V
    :try_end_5
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineDigest([BII)I
    .registers 7

    iget-object v0, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget-object v1, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    iget-object v2, p0, Ljcifs/util/HMACT64;->opad:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    :try_start_12
    iget-object v0, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->digest([BII)I

    move-result p1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_19

    return p1

    :catch_19
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public engineDigest()[B
    .registers 4

    iget-object v0, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget-object v1, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    iget-object v2, p0, Ljcifs/util/HMACT64;->opad:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public engineGetDigestLength()I
    .registers 2

    iget-object v0, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    return v0
.end method

.method public engineReset()V
    .registers 3

    iget-object v0, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    iget-object v0, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    iget-object v1, p0, Ljcifs/util/HMACT64;->ipad:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public engineUpdate(B)V
    .registers 3

    iget-object v0, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .registers 5

    iget-object v0, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
