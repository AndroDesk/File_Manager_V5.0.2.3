.class public Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;
.super Ljava/lang/Object;
.source "InstalledMasterKeyInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo$BadMasterKeyNameException;
    }
.end annotation


# static fields
.field private static final ENCODED_VERSION:B

.field private static final HEX_ARRAY:[C


# instance fields
.field public final hsid:S

.field public final huser:J

.field public final keyTag:S

.field public final keyVersion:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "0123456789ABCDEF"

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->HEX_ARRAY:[C

    .line 9
    return-void
.end method

.method public constructor <init>(SJJS)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-short p1, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->hsid:S

    .line 6
    iput-wide p2, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->huser:J

    .line 8
    iput-wide p4, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->keyVersion:J

    .line 10
    iput-short p6, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->keyTag:S

    .line 12
    return-void
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .registers 7

    .line 1
    array-length v0, p0

    .line 2
    mul-int/lit8 v0, v0, 0x2

    .line 4
    new-array v0, v0, [C

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    array-length v2, p0

    .line 8
    if-ge v1, v2, :cond_22

    .line 10
    aget-byte v2, p0, v1

    .line 12
    and-int/lit16 v2, v2, 0xff

    .line 14
    mul-int/lit8 v3, v1, 0x2

    .line 16
    sget-object v4, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->HEX_ARRAY:[C

    .line 18
    ushr-int/lit8 v5, v2, 0x4

    .line 20
    aget-char v5, v4, v5

    .line 22
    aput-char v5, v0, v3

    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 26
    and-int/lit8 v2, v2, 0xf

    .line 28
    aget-char v2, v4, v2

    .line 30
    aput-char v2, v0, v3

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_6

    .line 35
    :cond_22
    new-instance p0, Ljava/lang/String;

    .line 37
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    .line 40
    return-object p0
.end method

.method public static fromMasterKeyName(Ljava/lang/String;)Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->hexToBytes(Ljava/lang/String;)[B

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_13

    .line 15
    invoke-static {p0}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->fromMasterKeyNameV0(Ljava/nio/ByteBuffer;)Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_13
    new-instance p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo$BadMasterKeyNameException;

    .line 22
    const-string v1, "unknown encoded version: "

    .line 24
    invoke-static {v1, v0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p0, v0}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo$BadMasterKeyNameException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p0
.end method

.method private static fromMasterKeyNameV0(Ljava/nio/ByteBuffer;)Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;
    .registers 8

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 4
    move-result v1

    .line 5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 8
    move-result-wide v2

    .line 9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 12
    move-result-wide v4

    .line 13
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 16
    move-result v6

    .line 17
    new-instance p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    .line 19
    move-object v0, p0

    .line 20
    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;-><init>(SJJS)V

    .line 23
    return-object p0
.end method

.method private static hexToBytes(Ljava/lang/String;)[B
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    and-int/lit8 v0, v0, 0x1

    .line 7
    if-nez v0, :cond_48

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    move-result v0

    .line 13
    div-int/lit8 v0, v0, 0x2

    .line 15
    new-array v0, v0, [B

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 21
    move-result v2

    .line 22
    if-ge v1, v2, :cond_47

    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 27
    move-result v2

    .line 28
    const/16 v3, 0x10

    .line 30
    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    .line 33
    move-result v2

    .line 34
    add-int/lit8 v4, v1, 0x1

    .line 36
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 39
    move-result v4

    .line 40
    invoke-static {v4, v3}, Ljava/lang/Character;->digit(CI)I

    .line 43
    move-result v3

    .line 44
    const/4 v4, -0x1

    .line 45
    if-eq v2, v4, :cond_3b

    .line 47
    if-eq v3, v4, :cond_3b

    .line 49
    div-int/lit8 v4, v1, 0x2

    .line 51
    shl-int/lit8 v2, v2, 0x4

    .line 53
    add-int/2addr v2, v3

    .line 54
    int-to-byte v2, v2

    .line 55
    aput-byte v2, v0, v4

    .line 57
    add-int/lit8 v1, v1, 0x2

    .line 59
    goto :goto_11

    .line 60
    :cond_3b
    new-instance v0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo$BadMasterKeyNameException;

    .line 62
    const-string v1, "incorrect hex string format: "

    .line 64
    invoke-static {v1, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    invoke-direct {v0, p0}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo$BadMasterKeyNameException;-><init>(Ljava/lang/String;)V

    .line 71
    throw v0

    .line 72
    :cond_47
    return-object v0

    .line 73
    :cond_48
    new-instance v0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo$BadMasterKeyNameException;

    .line 75
    const-string v1, "hex length must be even, length: "

    .line 77
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 84
    move-result p0

    .line 85
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 92
    invoke-direct {v0, p0}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo$BadMasterKeyNameException;-><init>(Ljava/lang/String;)V

    .line 95
    throw v0
.end method


# virtual methods
.method public getMasterKeyName()Ljava/lang/String;
    .registers 4

    .line 1
    const/16 v0, 0x15

    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 11
    iget-short v1, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->hsid:S

    .line 13
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 16
    iget-wide v1, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->huser:J

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 21
    iget-wide v1, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->keyVersion:J

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 26
    iget-short v1, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->keyTag:S

    .line 28
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 31
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->bytesToHex([B)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method
