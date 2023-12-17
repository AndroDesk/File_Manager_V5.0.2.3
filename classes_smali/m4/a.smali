.class public final Lm4/a;
.super Lm4/m;
.source "AESExtraDataRecord.java"


# instance fields
.field public b:I

.field public c:Lnet/lingala/zip4j/model/enums/AesVersion;

.field public d:Ljava/lang/String;

.field public e:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

.field public f:Lnet/lingala/zip4j/model/enums/CompressionMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lm4/m;-><init>()V

    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    iput-object v0, p0, Lm4/m;->a:Ljava/lang/Object;

    const/4 v0, 0x7

    iput v0, p0, Lm4/a;->b:I

    sget-object v0, Lnet/lingala/zip4j/model/enums/AesVersion;->TWO:Lnet/lingala/zip4j/model/enums/AesVersion;

    iput-object v0, p0, Lm4/a;->c:Lnet/lingala/zip4j/model/enums/AesVersion;

    const-string v0, "AE"

    iput-object v0, p0, Lm4/a;->d:Ljava/lang/String;

    sget-object v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    iput-object v0, p0, Lm4/a;->e:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v0, p0, Lm4/a;->f:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    return-void
.end method
