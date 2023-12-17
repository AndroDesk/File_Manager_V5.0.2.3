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

    new-instance v7, Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    const/4 v1, 0x0

    const-string v2, "KEY_STRENGTH_128"

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/16 v6, 0x10

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;-><init>(ILjava/lang/String;IIII)V

    sput-object v7, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_128:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    new-instance v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    const/4 v9, 0x1

    const-string v10, "KEY_STRENGTH_192"

    const/4 v11, 0x2

    const/16 v12, 0xc

    const/16 v13, 0x18

    const/16 v14, 0x18

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;-><init>(ILjava/lang/String;IIII)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_192:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    new-instance v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    const/16 v16, 0x2

    const-string v17, "KEY_STRENGTH_256"

    const/16 v18, 0x3

    const/16 v19, 0x10

    const/16 v20, 0x20

    const/16 v21, 0x20

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;-><init>(ILjava/lang/String;IIII)V

    sput-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    const/4 v2, 0x3

    new-array v2, v2, [Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v2, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->a:[Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIII)V
    .registers 7

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->rawCode:I

    iput p4, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->saltLength:I

    iput p5, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->macLength:I

    iput p6, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->keyLength:I

    return-void
.end method

.method public static getAesKeyStrengthFromRawCode(I)Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .registers 6

    invoke-static {}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->values()[Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getRawCode()I

    move-result v4

    if-ne v4, p0, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .registers 2

    const-class v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    return-object p0
.end method

.method public static values()[Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .registers 1

    sget-object v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->a:[Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    invoke-virtual {v0}, [Lnet/lingala/zip4j/model/enums/AesKeyStrength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    return-object v0
.end method


# virtual methods
.method public getKeyLength()I
    .registers 2

    iget v0, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->keyLength:I

    return v0
.end method

.method public getMacLength()I
    .registers 2

    iget v0, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->macLength:I

    return v0
.end method

.method public getRawCode()I
    .registers 2

    iget v0, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->rawCode:I

    return v0
.end method

.method public getSaltLength()I
    .registers 2

    iget v0, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->saltLength:I

    return v0
.end method
