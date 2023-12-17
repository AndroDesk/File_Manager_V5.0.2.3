.class public final enum Lnet/lingala/zip4j/model/enums/AesVersion;
.super Ljava/lang/Enum;
.source "AesVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/model/enums/AesVersion;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ONE:Lnet/lingala/zip4j/model/enums/AesVersion;

.field public static final enum TWO:Lnet/lingala/zip4j/model/enums/AesVersion;

.field public static final synthetic a:[Lnet/lingala/zip4j/model/enums/AesVersion;


# instance fields
.field private versionNumber:I


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 3
    const-string v1, "ONE"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lnet/lingala/zip4j/model/enums/AesVersion;-><init>(Ljava/lang/String;II)V

    .line 10
    sput-object v0, Lnet/lingala/zip4j/model/enums/AesVersion;->ONE:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 12
    new-instance v1, Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 14
    const-string v4, "TWO"

    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lnet/lingala/zip4j/model/enums/AesVersion;-><init>(Ljava/lang/String;II)V

    .line 20
    sput-object v1, Lnet/lingala/zip4j/model/enums/AesVersion;->TWO:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 22
    new-array v4, v5, [Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 24
    aput-object v0, v4, v2

    .line 26
    aput-object v1, v4, v3

    .line 28
    sput-object v4, Lnet/lingala/zip4j/model/enums/AesVersion;->a:[Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 30
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
    iput p3, p0, Lnet/lingala/zip4j/model/enums/AesVersion;->versionNumber:I

    .line 6
    return-void
.end method

.method public static getFromVersionNumber(I)Lnet/lingala/zip4j/model/enums/AesVersion;
    .registers 6

    .line 1
    invoke-static {}, Lnet/lingala/zip4j/model/enums/AesVersion;->values()[Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v1, :cond_12

    .line 9
    aget-object v3, v0, v2

    .line 11
    iget v4, v3, Lnet/lingala/zip4j/model/enums/AesVersion;->versionNumber:I

    .line 13
    if-ne v4, p0, :cond_f

    .line 15
    return-object v3

    .line 16
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_6

    .line 19
    :cond_12
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 21
    const-string v0, "Unsupported Aes version"

    .line 23
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/model/enums/AesVersion;
    .registers 2

    .line 1
    const-class v0, Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 9
    return-object p0
.end method

.method public static values()[Lnet/lingala/zip4j/model/enums/AesVersion;
    .registers 1

    .line 1
    sget-object v0, Lnet/lingala/zip4j/model/enums/AesVersion;->a:[Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 3
    invoke-virtual {v0}, [Lnet/lingala/zip4j/model/enums/AesVersion;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getVersionNumber()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/enums/AesVersion;->versionNumber:I

    .line 3
    return v0
.end method
