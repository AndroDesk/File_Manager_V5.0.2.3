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

    .line 1
    new-instance v0, Lcom/junrar/exception/RarException$RarExceptionType;

    .line 3
    const-string v1, "notImplementedYet"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/junrar/exception/RarException$RarExceptionType;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/junrar/exception/RarException$RarExceptionType;->notImplementedYet:Lcom/junrar/exception/RarException$RarExceptionType;

    .line 11
    new-instance v1, Lcom/junrar/exception/RarException$RarExceptionType;

    .line 13
    const-string v3, "crcError"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/junrar/exception/RarException$RarExceptionType;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/junrar/exception/RarException$RarExceptionType;->crcError:Lcom/junrar/exception/RarException$RarExceptionType;

    .line 21
    new-instance v3, Lcom/junrar/exception/RarException$RarExceptionType;

    .line 23
    const-string v5, "notRarArchive"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/junrar/exception/RarException$RarExceptionType;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/junrar/exception/RarException$RarExceptionType;->notRarArchive:Lcom/junrar/exception/RarException$RarExceptionType;

    .line 31
    new-instance v5, Lcom/junrar/exception/RarException$RarExceptionType;

    .line 33
    const-string v7, "badRarArchive"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/junrar/exception/RarException$RarExceptionType;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lcom/junrar/exception/RarException$RarExceptionType;->badRarArchive:Lcom/junrar/exception/RarException$RarExceptionType;

    .line 41
    new-instance v7, Lcom/junrar/exception/RarException$RarExceptionType;

    .line 43
    const-string v9, "unkownError"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/junrar/exception/RarException$RarExceptionType;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lcom/junrar/exception/RarException$RarExceptionType;->unkownError:Lcom/junrar/exception/RarException$RarExceptionType;

    .line 51
    new-instance v9, Lcom/junrar/exception/RarException$RarExceptionType;

    .line 53
    const-string v11, "headerNotInArchive"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lcom/junrar/exception/RarException$RarExceptionType;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lcom/junrar/exception/RarException$RarExceptionType;->headerNotInArchive:Lcom/junrar/exception/RarException$RarExceptionType;

    .line 61
    new-instance v11, Lcom/junrar/exception/RarException$RarExceptionType;

    .line 63
    const-string v13, "wrongHeaderType"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lcom/junrar/exception/RarException$RarExceptionType;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v11, Lcom/junrar/exception/RarException$RarExceptionType;->wrongHeaderType:Lcom/junrar/exception/RarException$RarExceptionType;

    .line 71
    new-instance v13, Lcom/junrar/exception/RarException$RarExceptionType;

    .line 73
    const-string v15, "ioError"

    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14}, Lcom/junrar/exception/RarException$RarExceptionType;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v13, Lcom/junrar/exception/RarException$RarExceptionType;->ioError:Lcom/junrar/exception/RarException$RarExceptionType;

    .line 81
    new-instance v15, Lcom/junrar/exception/RarException$RarExceptionType;

    .line 83
    const-string v14, "rarEncryptedException"

    .line 85
    const/16 v12, 0x8

    .line 87
    invoke-direct {v15, v14, v12}, Lcom/junrar/exception/RarException$RarExceptionType;-><init>(Ljava/lang/String;I)V

    .line 90
    sput-object v15, Lcom/junrar/exception/RarException$RarExceptionType;->rarEncryptedException:Lcom/junrar/exception/RarException$RarExceptionType;

    .line 92
    const/16 v14, 0x9

    .line 94
    new-array v14, v14, [Lcom/junrar/exception/RarException$RarExceptionType;

    .line 96
    aput-object v0, v14, v2

    .line 98
    aput-object v1, v14, v4

    .line 100
    aput-object v3, v14, v6

    .line 102
    aput-object v5, v14, v8

    .line 104
    aput-object v7, v14, v10

    .line 106
    const/4 v0, 0x5

    .line 107
    aput-object v9, v14, v0

    .line 109
    const/4 v0, 0x6

    .line 110
    aput-object v11, v14, v0

    .line 112
    const/4 v0, 0x7

    .line 113
    aput-object v13, v14, v0

    .line 115
    aput-object v15, v14, v12

    .line 117
    sput-object v14, Lcom/junrar/exception/RarException$RarExceptionType;->$VALUES:[Lcom/junrar/exception/RarException$RarExceptionType;

    .line 119
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lcom/junrar/exception/RarException$RarExceptionType;
    .registers 2

    .line 1
    const-class v0, Lcom/junrar/exception/RarException$RarExceptionType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/junrar/exception/RarException$RarExceptionType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/junrar/exception/RarException$RarExceptionType;
    .registers 1

    .line 1
    sget-object v0, Lcom/junrar/exception/RarException$RarExceptionType;->$VALUES:[Lcom/junrar/exception/RarException$RarExceptionType;

    .line 3
    invoke-virtual {v0}, [Lcom/junrar/exception/RarException$RarExceptionType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/junrar/exception/RarException$RarExceptionType;

    .line 9
    return-object v0
.end method
