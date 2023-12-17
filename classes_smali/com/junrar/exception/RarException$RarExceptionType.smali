.class public final enum Lcom/junrar/exception/RarException$RarExceptionType;
.super Ljava/lang/Enum;
.source "RarException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/junrar/exception/RarException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RarExceptionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/junrar/exception/RarException$RarExceptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/junrar/exception/RarException$RarExceptionType;

.field public static final enum badRarArchive:Lcom/junrar/exception/RarException$RarExceptionType;

.field public static final enum crcError:Lcom/junrar/exception/RarException$RarExceptionType;

.field public static final enum headerNotInArchive:Lcom/junrar/exception/RarException$RarExceptionType;

.field public static final enum ioError:Lcom/junrar/exception/RarException$RarExceptionType;

.field public static final enum notImplementedYet:Lcom/junrar/exception/RarException$RarExceptionType;

.field public static final enum notRarArchive:Lcom/junrar/exception/RarException$RarExceptionType;

.field public static final enum rarEncryptedException:Lcom/junrar/exception/RarException$RarExceptionType;

.field public static final enum unkownError:Lcom/junrar/exception/RarException$RarExceptionType;

.field public static final enum wrongHeaderType:Lcom/junrar/exception/RarException$RarExceptionType;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/junrar/exception/RarException$RarExceptionType;

    const-string v1, "notImplementedYet"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/junrar/exception/RarException$RarExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/junrar/exception/RarException$RarExceptionType;->notImplementedYet:Lcom/junrar/exception/RarException$RarExceptionType;

    new-instance v1, Lcom/junrar/exception/RarException$RarExceptionType;

    const-string v3, "crcError"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/junrar/exception/RarException$RarExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/junrar/exception/RarException$RarExceptionType;->crcError:Lcom/junrar/exception/RarException$RarExceptionType;

    new-instance v3, Lcom/junrar/exception/RarException$RarExceptionType;

    const-string v5, "notRarArchive"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/junrar/exception/RarException$RarExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/junrar/exception/RarException$RarExceptionType;->notRarArchive:Lcom/junrar/exception/RarException$RarExceptionType;

    new-instance v5, Lcom/junrar/exception/RarException$RarExceptionType;

    const-string v7, "badRarArchive"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/junrar/exception/RarException$RarExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/junrar/exception/RarException$RarExceptionType;->badRarArchive:Lcom/junrar/exception/RarException$RarExceptionType;

    new-instance v7, Lcom/junrar/exception/RarException$RarExceptionType;

    const-string v9, "unkownError"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/junrar/exception/RarException$RarExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/junrar/exception/RarException$RarExceptionType;->unkownError:Lcom/junrar/exception/RarException$RarExceptionType;

    new-instance v9, Lcom/junrar/exception/RarException$RarExceptionType;

    const-string v11, "headerNotInArchive"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/junrar/exception/RarException$RarExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/junrar/exception/RarException$RarExceptionType;->headerNotInArchive:Lcom/junrar/exception/RarException$RarExceptionType;

    new-instance v11, Lcom/junrar/exception/RarException$RarExceptionType;

    const-string v13, "wrongHeaderType"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/junrar/exception/RarException$RarExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/junrar/exception/RarException$RarExceptionType;->wrongHeaderType:Lcom/junrar/exception/RarException$RarExceptionType;

    new-instance v13, Lcom/junrar/exception/RarException$RarExceptionType;

    const-string v15, "ioError"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/junrar/exception/RarException$RarExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/junrar/exception/RarException$RarExceptionType;->ioError:Lcom/junrar/exception/RarException$RarExceptionType;

    new-instance v15, Lcom/junrar/exception/RarException$RarExceptionType;

    const-string v14, "rarEncryptedException"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/junrar/exception/RarException$RarExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/junrar/exception/RarException$RarExceptionType;->rarEncryptedException:Lcom/junrar/exception/RarException$RarExceptionType;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/junrar/exception/RarException$RarExceptionType;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/junrar/exception/RarException$RarExceptionType;->$VALUES:[Lcom/junrar/exception/RarException$RarExceptionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/junrar/exception/RarException$RarExceptionType;
    .registers 2

    const-class v0, Lcom/junrar/exception/RarException$RarExceptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/junrar/exception/RarException$RarExceptionType;

    return-object p0
.end method

.method public static values()[Lcom/junrar/exception/RarException$RarExceptionType;
    .registers 1

    sget-object v0, Lcom/junrar/exception/RarException$RarExceptionType;->$VALUES:[Lcom/junrar/exception/RarException$RarExceptionType;

    invoke-virtual {v0}, [Lcom/junrar/exception/RarException$RarExceptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/junrar/exception/RarException$RarExceptionType;

    return-object v0
.end method
