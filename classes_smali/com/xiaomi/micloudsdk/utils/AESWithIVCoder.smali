.class public Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;
.super Ljava/lang/Object;
.source "AESWithIVCoder.java"

# interfaces
.implements Lcom/xiaomi/micloudsdk/utils/CryptCoder;


# static fields
.field private static final IV_BASE64_FLAG:I = 0xb

.field private static final TAG:Ljava/lang/String; = "AESWithIVCoder"

.field private static final version:Ljava/lang/String; = "1"


# instance fields
.field private final IV_LENGTH:I

.field public aesKey:Ljava/lang/String;

.field private coder:Lcom/xiaomi/micloudsdk/utils/AESCoder;

.field private ivRaw:[B

.field private threadId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x10

    .line 6
    iput v0, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->IV_LENGTH:I

    .line 8
    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->threadId:J

    .line 12
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->aesKey:Ljava/lang/String;

    .line 14
    new-instance v0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder$1;

    .line 16
    invoke-direct {v0, p0, p1}, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder$1;-><init>(Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;Ljava/lang/String;)V

    .line 19
    iput-object v0, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->coder:Lcom/xiaomi/micloudsdk/utils/AESCoder;

    .line 21
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->initThreadInfo()V

    .line 24
    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;)[B
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->ivRaw:[B

    .line 3
    return-object p0
.end method

.method private initThreadInfo()V
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->threadId:J

    .line 11
    return-void
.end method


# virtual methods
.method public checkThreadIdThrow()V
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->threadId:J

    .line 11
    cmp-long v0, v0, v2

    .line 13
    if-nez v0, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    new-instance v0, Ljava/lang/IllegalAccessError;

    .line 18
    const-string v1, "this method can not call concurrently"

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0
.end method

.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->checkThreadIdThrow()V

    .line 4
    :try_start_3
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->getInstance(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/AESStringDef;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->getVersion()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const-string v2, "1"

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2a

    .line 20
    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->getIV()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    const/16 v1, 0xb

    .line 26
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->ivRaw:[B

    .line 32
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->coder:Lcom/xiaomi/micloudsdk/utils/AESCoder;

    .line 34
    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->getData()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Lcom/xiaomi/micloudsdk/utils/AESCoder;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_2a
    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CipherException;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    const-string v2, "aes encrypt format version is wrong"

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v0, p1}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/String;)V

    .line 65
    throw v0
    :try_end_41
    .catch Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException; {:try_start_3 .. :try_end_41} :catch_41

    .line 66
    :catch_41
    move-exception p1

    .line 67
    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CipherException;

    .line 69
    invoke-direct {v0, p1}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/Throwable;)V

    .line 72
    throw v0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->checkThreadIdThrow()V

    .line 4
    const/16 v0, 0x10

    .line 6
    :try_start_5
    new-array v0, v0, [B

    .line 8
    iput-object v0, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->ivRaw:[B

    .line 10
    new-instance v0, Ljava/security/SecureRandom;

    .line 12
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 15
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->ivRaw:[B

    .line 17
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 20
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->coder:Lcom/xiaomi/micloudsdk/utils/AESCoder;

    .line 22
    invoke-virtual {v0, p1}, Lcom/xiaomi/micloudsdk/utils/AESCoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const-string v0, "1"

    .line 28
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->ivRaw:[B

    .line 30
    const/16 v2, 0xb

    .line 32
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1, p1}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/AESStringDef;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1
    :try_end_2b
    .catch Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException; {:try_start_5 .. :try_end_2b} :catch_2c

    .line 44
    return-object p1

    .line 45
    :catch_2c
    move-exception p1

    .line 46
    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CipherException;

    .line 48
    invoke-direct {v0, p1}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/Throwable;)V

    .line 51
    throw v0
.end method
