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

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->HEX_ARRAY:[C

    return-void
.end method

.method public constructor <init>(SJJS)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->hsid:S

    iput-wide p2, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->huser:J

    iput-wide p4, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->keyVersion:J

    iput-short p6, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->keyTag:S

    return-void
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .registers 7

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_22

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->HEX_ARRAY:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_22
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static fromMasterKeyName(Ljava/lang/String;)Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;
    .registers 3

    invoke-static {p0}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p0}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->fromMasterKeyNameV0(Ljava/nio/ByteBuffer;)Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    move-result-object p0

    return-object p0

    :cond_13
    new-instance p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo$BadMasterKeyNameException;

    const-string v1, "unknown encoded version: "

    invoke-static {v1, v0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo$BadMasterKeyNameException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static fromMasterKeyNameV0(Ljava/nio/ByteBuffer;)Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;
    .registers 8

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    new-instance p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;-><init>(SJJS)V

    return-object p0
.end method

.method private static hexToBytes(Ljava/lang/String;)[B
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_48

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_47

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3b

    if-eq v3, v4, :cond_3b

    div-int/lit8 v4, v1, 0x2

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    add-int/lit8 v1, v1, 0x2

    goto :goto_11

    :cond_3b
    new-instance v0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo$BadMasterKeyNameException;

    const-string v1, "incorrect hex string format: "

    invoke-static {v1, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo$BadMasterKeyNameException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    return-object v0

    :cond_48
    new-instance v0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo$BadMasterKeyNameException;

    const-string v1, "hex length must be even, length: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo$BadMasterKeyNameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMasterKeyName()Ljava/lang/String;
    .registers 4

    const/16 v0, 0x15

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->hsid:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->huser:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->keyVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->keyTag:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
