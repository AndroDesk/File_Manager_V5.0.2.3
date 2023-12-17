.class public final enum Lnet/lingala/zip4j/model/enums/AesKeyStrength;
.super Ljava/lang/Enum;
.source "AesKeyStrength.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/model/enums/AesKeyStrength;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum KEY_STRENGTH_128:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

.field public static final enum KEY_STRENGTH_192:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

.field public static final enum KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

.field public static final synthetic a:[Lnet/lingala/zip4j/model/enums/AesKeyStrength;


# instance fields
.field private keyLength:I

.field private macLength:I

.field private rawCode:I

.field private saltLength:I


# direct methods
.method public static constructor <clinit>()V
    .registers 22

    .line 1
    new-instance v7, Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "KEY_STRENGTH_128"

    .line 6
    const/4 v3, 0x1

    .line 7
    const/16 v4, 0x8

    .line 9
    const/16 v5, 0x10

    .line 11
    const/16 v6, 0x10

    .line 13
    move-object v0, v7

    .line 14
    invoke-direct/range {v0 .. v6}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;-><init>(ILjava/lang/String;IIII)V

    .line 17
    sput-object v7, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_128:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 19
    new-instance v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 21
    const/4 v9, 0x1

    .line 22
    const-string v10, "KEY_STRENGTH_192"

    .line 24
    const/4 v11, 0x2

    .line 25
    const/16 v12, 0xc

    .line 27
    const/16 v13, 0x18

    .line 29
    const/16 v14, 0x18

    .line 31
    move-object v8, v0

    .line 32
    invoke-direct/range {v8 .. v14}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;-><init>(ILjava/lang/String;IIII)V

    .line 35
    sput-object v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_192:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 37
    new-instance v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 39
    const/16 v16, 0x2

    .line 41
    const-string v17, "KEY_STRENGTH_256"

    .line 43
    const/16 v18, 0x3

    .line 45
    const/16 v19, 0x10

    .line 47
    const/16 v20, 0x20

    .line 49
    const/16 v21, 0x20

    .line 51
    move-object v15, v1

    .line 52
    invoke-direct/range {v15 .. v21}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;-><init>(ILjava/lang/String;IIII)V

    .line 55
    sput-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 57
    const/4 v2, 0x3

    .line 58
    new-array v2, v2, [Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 60
    const/4 v3, 0x0

    .line 61
    aput-object v7, v2, v3

    .line 63
    const/4 v3, 0x1

    .line 64
    aput-object v0, v2, v3

    .line 66
    const/4 v0, 0x2

    .line 67
    aput-object v1, v2, v0

    .line 69
    sput-object v2, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->a:[Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 71
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIII)V
    .registers 7

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->rawCode:I

    .line 6
    iput p4, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->saltLength:I

    .line 8
    iput p5, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->macLength:I

    .line 10
    iput p6, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->keyLength:I

    .line 12
    return-void
.end method

.method public static getAesKeyStrengthFromRawCode(I)Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .registers 6

    .line 1
    invoke-static {}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->values()[Lnet/lingala/zip4j/model/enums/AesKeyStrength;

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
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getRawCode()I

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
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .registers 2

    .line 1
    const-class v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 9
    return-object p0
.end method

.method public static values()[Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .registers 1

    .line 1
    sget-object v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->a:[Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 3
    invoke-virtual {v0}, [Lnet/lingala/zip4j/model/enums/AesKeyStrength;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getKeyLength()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->keyLength:I

    .line 3
    return v0
.end method

.method public getMacLength()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->macLength:I

    .line 3
    return v0
.end method

.method public getRawCode()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->rawCode:I

    .line 3
    return v0
.end method

.method public getSaltLength()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->saltLength:I

    .line 3
    return v0
.end method
