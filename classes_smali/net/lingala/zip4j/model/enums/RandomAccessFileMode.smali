.class public final enum Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;
.super Ljava/lang/Enum;
.source "RandomAccessFileMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

.field public static final enum WRITE:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

.field public static final synthetic a:[Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    .line 3
    const-string v1, "READ"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "r"

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    sput-object v0, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    .line 13
    new-instance v1, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    .line 15
    const-string v3, "WRITE"

    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "rw"

    .line 20
    invoke-direct {v1, v3, v4, v5}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    sput-object v1, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->WRITE:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    .line 25
    const/4 v3, 0x2

    .line 26
    new-array v3, v3, [Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    .line 28
    aput-object v0, v3, v2

    .line 30
    aput-object v1, v3, v4

    .line 32
    sput-object v3, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->a:[Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->value:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;
    .registers 2

    .line 1
    const-class v0, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    .line 9
    return-object p0
.end method

.method public static values()[Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;
    .registers 1

    .line 1
    sget-object v0, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->a:[Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    .line 3
    invoke-virtual {v0}, [Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->value:Ljava/lang/String;

    .line 3
    return-object v0
.end method
