.class public final enum Lcom/junrar/rarfile/SubBlockHeaderType;
.super Ljava/lang/Enum;
.source "SubBlockHeaderType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/junrar/rarfile/SubBlockHeaderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/junrar/rarfile/SubBlockHeaderType;

.field public static final enum BEEA_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

.field public static final enum EA_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

.field public static final enum MAC_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

.field public static final enum NTACL_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

.field public static final enum STREAM_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

.field public static final enum UO_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;


# instance fields
.field private subblocktype:S


# direct methods
.method public static constructor <clinit>()V
    .registers 14

    .line 1
    new-instance v0, Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 3
    const-string v1, "EA_HEAD"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x100

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/junrar/rarfile/SubBlockHeaderType;-><init>(Ljava/lang/String;IS)V

    .line 11
    sput-object v0, Lcom/junrar/rarfile/SubBlockHeaderType;->EA_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 13
    new-instance v1, Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 15
    const-string v3, "UO_HEAD"

    .line 17
    const/4 v4, 0x1

    .line 18
    const/16 v5, 0x101

    .line 20
    invoke-direct {v1, v3, v4, v5}, Lcom/junrar/rarfile/SubBlockHeaderType;-><init>(Ljava/lang/String;IS)V

    .line 23
    sput-object v1, Lcom/junrar/rarfile/SubBlockHeaderType;->UO_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 25
    new-instance v3, Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 27
    const-string v5, "MAC_HEAD"

    .line 29
    const/4 v6, 0x2

    .line 30
    const/16 v7, 0x102

    .line 32
    invoke-direct {v3, v5, v6, v7}, Lcom/junrar/rarfile/SubBlockHeaderType;-><init>(Ljava/lang/String;IS)V

    .line 35
    sput-object v3, Lcom/junrar/rarfile/SubBlockHeaderType;->MAC_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 37
    new-instance v5, Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 39
    const-string v7, "BEEA_HEAD"

    .line 41
    const/4 v8, 0x3

    .line 42
    const/16 v9, 0x103

    .line 44
    invoke-direct {v5, v7, v8, v9}, Lcom/junrar/rarfile/SubBlockHeaderType;-><init>(Ljava/lang/String;IS)V

    .line 47
    sput-object v5, Lcom/junrar/rarfile/SubBlockHeaderType;->BEEA_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 49
    new-instance v7, Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 51
    const-string v9, "NTACL_HEAD"

    .line 53
    const/4 v10, 0x4

    .line 54
    const/16 v11, 0x104

    .line 56
    invoke-direct {v7, v9, v10, v11}, Lcom/junrar/rarfile/SubBlockHeaderType;-><init>(Ljava/lang/String;IS)V

    .line 59
    sput-object v7, Lcom/junrar/rarfile/SubBlockHeaderType;->NTACL_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 61
    new-instance v9, Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 63
    const-string v11, "STREAM_HEAD"

    .line 65
    const/4 v12, 0x5

    .line 66
    const/16 v13, 0x105

    .line 68
    invoke-direct {v9, v11, v12, v13}, Lcom/junrar/rarfile/SubBlockHeaderType;-><init>(Ljava/lang/String;IS)V

    .line 71
    sput-object v9, Lcom/junrar/rarfile/SubBlockHeaderType;->STREAM_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 73
    const/4 v11, 0x6

    .line 74
    new-array v11, v11, [Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 76
    aput-object v0, v11, v2

    .line 78
    aput-object v1, v11, v4

    .line 80
    aput-object v3, v11, v6

    .line 82
    aput-object v5, v11, v8

    .line 84
    aput-object v7, v11, v10

    .line 86
    aput-object v9, v11, v12

    .line 88
    sput-object v11, Lcom/junrar/rarfile/SubBlockHeaderType;->$VALUES:[Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-short p3, p0, Lcom/junrar/rarfile/SubBlockHeaderType;->subblocktype:S

    .line 6
    return-void
.end method

.method private equals(S)Z
    .registers 3

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/SubBlockHeaderType;->subblocktype:S

    .line 3
    if-ne v0, p1, :cond_6

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    :goto_7
    return p1
.end method

.method public static findSubblockHeaderType(S)Lcom/junrar/rarfile/SubBlockHeaderType;
    .registers 3

    .line 1
    sget-object v0, Lcom/junrar/rarfile/SubBlockHeaderType;->EA_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 3
    invoke-direct {v0, p0}, Lcom/junrar/rarfile/SubBlockHeaderType;->equals(S)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 9
    return-object v0

    .line 10
    :cond_9
    sget-object v0, Lcom/junrar/rarfile/SubBlockHeaderType;->UO_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 12
    invoke-direct {v0, p0}, Lcom/junrar/rarfile/SubBlockHeaderType;->equals(S)Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_12

    .line 18
    return-object v0

    .line 19
    :cond_12
    sget-object v0, Lcom/junrar/rarfile/SubBlockHeaderType;->MAC_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 21
    invoke-direct {v0, p0}, Lcom/junrar/rarfile/SubBlockHeaderType;->equals(S)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1b

    .line 27
    return-object v0

    .line 28
    :cond_1b
    sget-object v0, Lcom/junrar/rarfile/SubBlockHeaderType;->BEEA_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 30
    invoke-direct {v0, p0}, Lcom/junrar/rarfile/SubBlockHeaderType;->equals(S)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_24

    .line 36
    return-object v0

    .line 37
    :cond_24
    sget-object v0, Lcom/junrar/rarfile/SubBlockHeaderType;->NTACL_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 39
    invoke-direct {v0, p0}, Lcom/junrar/rarfile/SubBlockHeaderType;->equals(S)Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2d

    .line 45
    return-object v0

    .line 46
    :cond_2d
    sget-object v0, Lcom/junrar/rarfile/SubBlockHeaderType;->STREAM_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 48
    invoke-direct {v0, p0}, Lcom/junrar/rarfile/SubBlockHeaderType;->equals(S)Z

    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_36

    .line 54
    return-object v0

    .line 55
    :cond_36
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/junrar/rarfile/SubBlockHeaderType;
    .registers 2

    .line 1
    const-class v0, Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/junrar/rarfile/SubBlockHeaderType;
    .registers 1

    .line 1
    sget-object v0, Lcom/junrar/rarfile/SubBlockHeaderType;->$VALUES:[Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 3
    invoke-virtual {v0}, [Lcom/junrar/rarfile/SubBlockHeaderType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getSubblocktype()S
    .registers 2

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/SubBlockHeaderType;->subblocktype:S

    .line 3
    return v0
.end method
