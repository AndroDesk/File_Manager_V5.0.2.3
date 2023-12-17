.class public final enum Lnet/lingala/zip4j/headers/VersionNeededToExtract;
.super Ljava/lang/Enum;
.source "VersionNeededToExtract.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/headers/VersionNeededToExtract;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AES_ENCRYPTED:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

.field public static final enum DEFAULT:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

.field public static final enum DEFLATE_COMPRESSED:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

.field public static final enum ZIP_64_FORMAT:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

.field public static final synthetic a:[Lnet/lingala/zip4j/headers/VersionNeededToExtract;


# instance fields
.field private final code:I


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v0, Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    .line 3
    const-string v1, "DEFAULT"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0xa

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lnet/lingala/zip4j/headers/VersionNeededToExtract;-><init>(Ljava/lang/String;II)V

    .line 11
    sput-object v0, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->DEFAULT:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    .line 13
    new-instance v1, Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    .line 15
    const-string v3, "DEFLATE_COMPRESSED"

    .line 17
    const/4 v4, 0x1

    .line 18
    const/16 v5, 0x14

    .line 20
    invoke-direct {v1, v3, v4, v5}, Lnet/lingala/zip4j/headers/VersionNeededToExtract;-><init>(Ljava/lang/String;II)V

    .line 23
    sput-object v1, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->DEFLATE_COMPRESSED:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    .line 25
    new-instance v3, Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    .line 27
    const-string v5, "ZIP_64_FORMAT"

    .line 29
    const/4 v6, 0x2

    .line 30
    const/16 v7, 0x2d

    .line 32
    invoke-direct {v3, v5, v6, v7}, Lnet/lingala/zip4j/headers/VersionNeededToExtract;-><init>(Ljava/lang/String;II)V

    .line 35
    sput-object v3, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->ZIP_64_FORMAT:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    .line 37
    new-instance v5, Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    .line 39
    const-string v7, "AES_ENCRYPTED"

    .line 41
    const/4 v8, 0x3

    .line 42
    const/16 v9, 0x33

    .line 44
    invoke-direct {v5, v7, v8, v9}, Lnet/lingala/zip4j/headers/VersionNeededToExtract;-><init>(Ljava/lang/String;II)V

    .line 47
    sput-object v5, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->AES_ENCRYPTED:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    .line 49
    const/4 v7, 0x4

    .line 50
    new-array v7, v7, [Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    .line 52
    aput-object v0, v7, v2

    .line 54
    aput-object v1, v7, v4

    .line 56
    aput-object v3, v7, v6

    .line 58
    aput-object v5, v7, v8

    .line 60
    sput-object v7, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->a:[Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    .line 62
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
    iput p3, p0, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->code:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/headers/VersionNeededToExtract;
    .registers 2

    .line 1
    const-class v0, Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    .line 9
    return-object p0
.end method

.method public static values()[Lnet/lingala/zip4j/headers/VersionNeededToExtract;
    .registers 1

    .line 1
    sget-object v0, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->a:[Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    .line 3
    invoke-virtual {v0}, [Lnet/lingala/zip4j/headers/VersionNeededToExtract;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->code:I

    .line 3
    return v0
.end method
