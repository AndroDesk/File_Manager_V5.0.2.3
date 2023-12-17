.class public final enum Lnet/lingala/zip4j/exception/ZipException$Type;
.super Ljava/lang/Enum;
.source "ZipException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/exception/ZipException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/exception/ZipException$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHECKSUM_MISMATCH:Lnet/lingala/zip4j/exception/ZipException$Type;

.field public static final enum FILE_NOT_FOUND:Lnet/lingala/zip4j/exception/ZipException$Type;

.field public static final enum TASK_CANCELLED_EXCEPTION:Lnet/lingala/zip4j/exception/ZipException$Type;

.field public static final enum UNKNOWN:Lnet/lingala/zip4j/exception/ZipException$Type;

.field public static final enum UNKNOWN_COMPRESSION_METHOD:Lnet/lingala/zip4j/exception/ZipException$Type;

.field public static final enum UNSUPPORTED_ENCRYPTION:Lnet/lingala/zip4j/exception/ZipException$Type;

.field public static final enum WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

.field public static final synthetic a:[Lnet/lingala/zip4j/exception/ZipException$Type;


# direct methods
.method public static constructor <clinit>()V
    .registers 15

    .line 1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 3
    const-string v1, "WRONG_PASSWORD"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/exception/ZipException$Type;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 11
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 13
    const-string v3, "TASK_CANCELLED_EXCEPTION"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lnet/lingala/zip4j/exception/ZipException$Type;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lnet/lingala/zip4j/exception/ZipException$Type;->TASK_CANCELLED_EXCEPTION:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 21
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 23
    const-string v5, "CHECKSUM_MISMATCH"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lnet/lingala/zip4j/exception/ZipException$Type;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lnet/lingala/zip4j/exception/ZipException$Type;->CHECKSUM_MISMATCH:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 31
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 33
    const-string v7, "UNKNOWN_COMPRESSION_METHOD"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lnet/lingala/zip4j/exception/ZipException$Type;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lnet/lingala/zip4j/exception/ZipException$Type;->UNKNOWN_COMPRESSION_METHOD:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 41
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 43
    const-string v9, "FILE_NOT_FOUND"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lnet/lingala/zip4j/exception/ZipException$Type;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lnet/lingala/zip4j/exception/ZipException$Type;->FILE_NOT_FOUND:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 51
    new-instance v9, Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 53
    const-string v11, "UNSUPPORTED_ENCRYPTION"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lnet/lingala/zip4j/exception/ZipException$Type;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lnet/lingala/zip4j/exception/ZipException$Type;->UNSUPPORTED_ENCRYPTION:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 61
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 63
    const-string v13, "UNKNOWN"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lnet/lingala/zip4j/exception/ZipException$Type;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v11, Lnet/lingala/zip4j/exception/ZipException$Type;->UNKNOWN:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 71
    const/4 v13, 0x7

    .line 72
    new-array v13, v13, [Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 74
    aput-object v0, v13, v2

    .line 76
    aput-object v1, v13, v4

    .line 78
    aput-object v3, v13, v6

    .line 80
    aput-object v5, v13, v8

    .line 82
    aput-object v7, v13, v10

    .line 84
    aput-object v9, v13, v12

    .line 86
    aput-object v11, v13, v14

    .line 88
    sput-object v13, Lnet/lingala/zip4j/exception/ZipException$Type;->a:[Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/exception/ZipException$Type;
    .registers 2

    .line 1
    const-class v0, Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 9
    return-object p0
.end method

.method public static values()[Lnet/lingala/zip4j/exception/ZipException$Type;
    .registers 1

    .line 1
    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->a:[Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 3
    invoke-virtual {v0}, [Lnet/lingala/zip4j/exception/ZipException$Type;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 9
    return-object v0
.end method
