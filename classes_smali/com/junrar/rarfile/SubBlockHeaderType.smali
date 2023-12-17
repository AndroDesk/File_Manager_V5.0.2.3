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

    new-instance v0, Lcom/junrar/rarfile/SubBlockHeaderType;

    const-string v1, "EA_HEAD"

    const/4 v2, 0x0

    const/16 v3, 0x100

    invoke-direct {v0, v1, v2, v3}, Lcom/junrar/rarfile/SubBlockHeaderType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/junrar/rarfile/SubBlockHeaderType;->EA_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    new-instance v1, Lcom/junrar/rarfile/SubBlockHeaderType;

    const-string v3, "UO_HEAD"

    const/4 v4, 0x1

    const/16 v5, 0x101

    invoke-direct {v1, v3, v4, v5}, Lcom/junrar/rarfile/SubBlockHeaderType;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lcom/junrar/rarfile/SubBlockHeaderType;->UO_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    new-instance v3, Lcom/junrar/rarfile/SubBlockHeaderType;

    const-string v5, "MAC_HEAD"

    const/4 v6, 0x2

    const/16 v7, 0x102

    invoke-direct {v3, v5, v6, v7}, Lcom/junrar/rarfile/SubBlockHeaderType;-><init>(Ljava/lang/String;IS)V

    sput-object v3, Lcom/junrar/rarfile/SubBlockHeaderType;->MAC_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    new-instance v5, Lcom/junrar/rarfile/SubBlockHeaderType;

    const-string v7, "BEEA_HEAD"

    const/4 v8, 0x3

    const/16 v9, 0x103

    invoke-direct {v5, v7, v8, v9}, Lcom/junrar/rarfile/SubBlockHeaderType;-><init>(Ljava/lang/String;IS)V

    sput-object v5, Lcom/junrar/rarfile/SubBlockHeaderType;->BEEA_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    new-instance v7, Lcom/junrar/rarfile/SubBlockHeaderType;

    const-string v9, "NTACL_HEAD"

    const/4 v10, 0x4

    const/16 v11, 0x104

    invoke-direct {v7, v9, v10, v11}, Lcom/junrar/rarfile/SubBlockHeaderType;-><init>(Ljava/lang/String;IS)V

    sput-object v7, Lcom/junrar/rarfile/SubBlockHeaderType;->NTACL_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    new-instance v9, Lcom/junrar/rarfile/SubBlockHeaderType;

    const-string v11, "STREAM_HEAD"

    const/4 v12, 0x5

    const/16 v13, 0x105

    invoke-direct {v9, v11, v12, v13}, Lcom/junrar/rarfile/SubBlockHeaderType;-><init>(Ljava/lang/String;IS)V

    sput-object v9, Lcom/junrar/rarfile/SubBlockHeaderType;->STREAM_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/junrar/rarfile/SubBlockHeaderType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/junrar/rarfile/SubBlockHeaderType;->$VALUES:[Lcom/junrar/rarfile/SubBlockHeaderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lcom/junrar/rarfile/SubBlockHeaderType;->subblocktype:S

    return-void
.end method

.method private equals(S)Z
    .registers 3

    iget-short v0, p0, Lcom/junrar/rarfile/SubBlockHeaderType;->subblocktype:S

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public static findSubblockHeaderType(S)Lcom/junrar/rarfile/SubBlockHeaderType;
    .registers 3

    sget-object v0, Lcom/junrar/rarfile/SubBlockHeaderType;->EA_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    invoke-direct {v0, p0}, Lcom/junrar/rarfile/SubBlockHeaderType;->equals(S)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    sget-object v0, Lcom/junrar/rarfile/SubBlockHeaderType;->UO_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    invoke-direct {v0, p0}, Lcom/junrar/rarfile/SubBlockHeaderType;->equals(S)Z

    move-result v1

    if-eqz v1, :cond_12

    return-object v0

    :cond_12
    sget-object v0, Lcom/junrar/rarfile/SubBlockHeaderType;->MAC_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    invoke-direct {v0, p0}, Lcom/junrar/rarfile/SubBlockHeaderType;->equals(S)Z

    move-result v1

    if-eqz v1, :cond_1b

    return-object v0

    :cond_1b
    sget-object v0, Lcom/junrar/rarfile/SubBlockHeaderType;->BEEA_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    invoke-direct {v0, p0}, Lcom/junrar/rarfile/SubBlockHeaderType;->equals(S)Z

    move-result v1

    if-eqz v1, :cond_24

    return-object v0

    :cond_24
    sget-object v0, Lcom/junrar/rarfile/SubBlockHeaderType;->NTACL_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    invoke-direct {v0, p0}, Lcom/junrar/rarfile/SubBlockHeaderType;->equals(S)Z

    move-result v1

    if-eqz v1, :cond_2d

    return-object v0

    :cond_2d
    sget-object v0, Lcom/junrar/rarfile/SubBlockHeaderType;->STREAM_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    invoke-direct {v0, p0}, Lcom/junrar/rarfile/SubBlockHeaderType;->equals(S)Z

    move-result p0

    if-eqz p0, :cond_36

    return-object v0

    :cond_36
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/junrar/rarfile/SubBlockHeaderType;
    .registers 2

    const-class v0, Lcom/junrar/rarfile/SubBlockHeaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/junrar/rarfile/SubBlockHeaderType;

    return-object p0
.end method

.method public static values()[Lcom/junrar/rarfile/SubBlockHeaderType;
    .registers 1

    sget-object v0, Lcom/junrar/rarfile/SubBlockHeaderType;->$VALUES:[Lcom/junrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v0}, [Lcom/junrar/rarfile/SubBlockHeaderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/junrar/rarfile/SubBlockHeaderType;

    return-object v0
.end method


# virtual methods
.method public getSubblocktype()S
    .registers 2

    iget-short v0, p0, Lcom/junrar/rarfile/SubBlockHeaderType;->subblocktype:S

    return v0
.end method
