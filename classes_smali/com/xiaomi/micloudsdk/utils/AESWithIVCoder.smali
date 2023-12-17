.class public Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;
.super Ljava/lang/Object;
.source "AESWithIVCoder.java"

# interfaces
.implements Lcom/xiaomi/micloudsdk/utils/CryptCoder;


# static fields
.field private static final IV_BASE64_FLAG:I

.field private static final TAG:Ljava/lang/String; = "AESWithIVCoder"

.field private static final version:Ljava/lang/String; = "1"


# instance fields
.field private final IV_LENGTH:I

.field public aesKey:Ljava/lang/String;

.field private coder:Lcom/xiaomi/micloudsdk/utils/AESCoder;

.field private ivRaw:[B

.field private threadId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->IV_BASE64_FLAG:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->IV_LENGTH:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->threadId:J

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->aesKey:Ljava/lang/String;

    new-instance v0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder$1;-><init>(Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->coder:Lcom/xiaomi/micloudsdk/utils/AESCoder;

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->initThreadInfo()V

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;)[B
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->ivRaw:[B

    return-object p0
.end method

.method private initThreadInfo()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->threadId:J

    return-void
.end method


# virtual methods
.method public checkThreadIdThrow()V
    .registers 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->threadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "this method can not call concurrently"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->checkThreadIdThrow()V

    :try_start_3
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->getInstance(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/AESStringDef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->getIV()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xb

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->ivRaw:[B

    iget-object p1, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->coder:Lcom/xiaomi/micloudsdk/utils/AESCoder;

    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/micloudsdk/utils/AESCoder;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2a
    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CipherException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aes encrypt format version is wrong"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_41
    .catch Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException; {:try_start_3 .. :try_end_41} :catch_41

    :catch_41
    move-exception p1

    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CipherException;

    invoke-direct {v0, p1}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->checkThreadIdThrow()V

    const/16 v0, 0x10

    :try_start_5
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->ivRaw:[B

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->ivRaw:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->coder:Lcom/xiaomi/micloudsdk/utils/AESCoder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/micloudsdk/utils/AESCoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->ivRaw:[B

    const/16 v2, 0xb

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/AESStringDef;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2b
    .catch Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException; {:try_start_5 .. :try_end_2b} :catch_2c

    return-object p1

    :catch_2c
    move-exception p1

    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CipherException;

    invoke-direct {v0, p1}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
