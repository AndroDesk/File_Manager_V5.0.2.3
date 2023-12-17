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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lm4/m;-><init>()V

    .line 4
    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 6
    iput-object v0, p0, Lm4/m;->a:Ljava/lang/Object;

    .line 8
    const/4 v0, 0x7

    .line 9
    iput v0, p0, Lm4/a;->b:I

    .line 11
    sget-object v0, Lnet/lingala/zip4j/model/enums/AesVersion;->TWO:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 13
    iput-object v0, p0, Lm4/a;->c:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 15
    const-string v0, "AE"

    .line 17
    iput-object v0, p0, Lm4/a;->d:Ljava/lang/String;

    .line 19
    sget-object v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 21
    iput-object v0, p0, Lm4/a;->e:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 23
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 25
    iput-object v0, p0, Lm4/a;->f:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 27
    return-void
.end method
