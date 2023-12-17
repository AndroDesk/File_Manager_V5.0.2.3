.class public final enum Lnet/lingala/zip4j/model/enums/CompressionMethod;
.super Ljava/lang/Enum;
.source "CompressionMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/model/enums/CompressionMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AES_INTERNAL_ONLY:Lnet/lingala/zip4j/model/enums/CompressionMethod;

.field public static final enum DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

.field public static final enum STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

.field public static final synthetic a:[Lnet/lingala/zip4j/model/enums/CompressionMethod;


# instance fields
.field private code:I


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 3
    const-string v1, "STORE"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lnet/lingala/zip4j/model/enums/CompressionMethod;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 11
    new-instance v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 13
    const-string v3, "DEFLATE"

    .line 15
    const/4 v4, 0x1

    .line 16
    const/16 v5, 0x8

    .line 18
    invoke-direct {v1, v3, v4, v5}, Lnet/lingala/zip4j/model/enums/CompressionMethod;-><init>(Ljava/lang/String;II)V

    .line 21
    sput-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 23
    new-instance v3, Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 25
    const-string v5, "AES_INTERNAL_ONLY"

    .line 27
    const/4 v6, 0x2

    .line 28
    const/16 v7, 0x63

    .line 30
    invoke-direct {v3, v5, v6, v7}, Lnet/lingala/zip4j/model/enums/CompressionMethod;-><init>(Ljava/lang/String;II)V

    .line 33
    sput-object v3, Lnet/lingala/zip4j/model/enums/CompressionMethod;->AES_INTERNAL_ONLY:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 35
    const/4 v5, 0x3

    .line 36
    new-array v5, v5, [Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 38
    aput-object v0, v5, v2

    .line 40
    aput-object v1, v5, v4

    .line 42
    aput-object v3, v5, v6

    .line 44
    sput-object v5, Lnet/lingala/zip4j/model/enums/CompressionMethod;->a:[Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->code:I

    .line 6
    return-void
.end method

.method public static getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .registers 6

    .line 1
    invoke-static {}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->values()[Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v1, :cond_14

    .line 9
    aget-object v3, v0, v2

    .line 11
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    .line 14
    move-result v4

    .line 15
    if-ne v4, p0, :cond_11

    .line 17
    return-object v3

    .line 18
    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 20
    goto :goto_6

    .line 21
    :cond_14
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 23
    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->UNKNOWN_COMPRESSION_METHOD:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 25
    const-string v1, "Unknown compression method"

    .line 27
    invoke-direct {p0, v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    .line 30
    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .registers 2

    .line 1
    const-class v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 9
    return-object p0
.end method

.method public static values()[Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .registers 1

    .line 1
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->a:[Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 3
    invoke-virtual {v0}, [Lnet/lingala/zip4j/model/enums/CompressionMethod;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->code:I

    .line 3
    return v0
.end method
