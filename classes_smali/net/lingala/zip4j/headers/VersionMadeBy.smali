.class public final enum Lnet/lingala/zip4j/headers/VersionMadeBy;
.super Ljava/lang/Enum;
.source "VersionMadeBy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/headers/VersionMadeBy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum SPECIFICATION_VERSION:Lnet/lingala/zip4j/headers/VersionMadeBy;

.field public static final enum UNIX:Lnet/lingala/zip4j/headers/VersionMadeBy;

.field public static final enum WINDOWS:Lnet/lingala/zip4j/headers/VersionMadeBy;

.field public static final synthetic a:[Lnet/lingala/zip4j/headers/VersionMadeBy;


# instance fields
.field private final code:B


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v0, Lnet/lingala/zip4j/headers/VersionMadeBy;

    .line 3
    const-string v1, "SPECIFICATION_VERSION"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x33

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lnet/lingala/zip4j/headers/VersionMadeBy;-><init>(Ljava/lang/String;IB)V

    .line 11
    sput-object v0, Lnet/lingala/zip4j/headers/VersionMadeBy;->SPECIFICATION_VERSION:Lnet/lingala/zip4j/headers/VersionMadeBy;

    .line 13
    new-instance v1, Lnet/lingala/zip4j/headers/VersionMadeBy;

    .line 15
    const-string v3, "WINDOWS"

    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v1, v3, v4, v2}, Lnet/lingala/zip4j/headers/VersionMadeBy;-><init>(Ljava/lang/String;IB)V

    .line 21
    sput-object v1, Lnet/lingala/zip4j/headers/VersionMadeBy;->WINDOWS:Lnet/lingala/zip4j/headers/VersionMadeBy;

    .line 23
    new-instance v3, Lnet/lingala/zip4j/headers/VersionMadeBy;

    .line 25
    const-string v5, "UNIX"

    .line 27
    const/4 v6, 0x2

    .line 28
    const/4 v7, 0x3

    .line 29
    invoke-direct {v3, v5, v6, v7}, Lnet/lingala/zip4j/headers/VersionMadeBy;-><init>(Ljava/lang/String;IB)V

    .line 32
    sput-object v3, Lnet/lingala/zip4j/headers/VersionMadeBy;->UNIX:Lnet/lingala/zip4j/headers/VersionMadeBy;

    .line 34
    new-array v5, v7, [Lnet/lingala/zip4j/headers/VersionMadeBy;

    .line 36
    aput-object v0, v5, v2

    .line 38
    aput-object v1, v5, v4

    .line 40
    aput-object v3, v5, v6

    .line 42
    sput-object v5, Lnet/lingala/zip4j/headers/VersionMadeBy;->a:[Lnet/lingala/zip4j/headers/VersionMadeBy;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IB)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-byte p3, p0, Lnet/lingala/zip4j/headers/VersionMadeBy;->code:B

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/headers/VersionMadeBy;
    .registers 2

    .line 1
    const-class v0, Lnet/lingala/zip4j/headers/VersionMadeBy;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/lingala/zip4j/headers/VersionMadeBy;

    .line 9
    return-object p0
.end method

.method public static values()[Lnet/lingala/zip4j/headers/VersionMadeBy;
    .registers 1

    .line 1
    sget-object v0, Lnet/lingala/zip4j/headers/VersionMadeBy;->a:[Lnet/lingala/zip4j/headers/VersionMadeBy;

    .line 3
    invoke-virtual {v0}, [Lnet/lingala/zip4j/headers/VersionMadeBy;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/lingala/zip4j/headers/VersionMadeBy;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getCode()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lnet/lingala/zip4j/headers/VersionMadeBy;->code:B

    .line 3
    return v0
.end method
