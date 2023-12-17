.class public final enum Lcom/xiaomi/onetrack/OneTrack$NetType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/OneTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/onetrack/OneTrack$NetType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ETHERNET:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum MOBILE_2G:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum MOBILE_3G:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum MOBILE_4G:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum MOBILE_5G:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum NOT_CONNECTED:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum UNKNOWN:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum WIFI:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field private static final synthetic b:[Lcom/xiaomi/onetrack/OneTrack$NetType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 3
    const-string v1, "NOT_CONNECTED"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "NONE"

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$NetType;->NOT_CONNECTED:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 13
    new-instance v1, Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 15
    const-string v3, "MOBILE_2G"

    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "2G"

    .line 20
    invoke-direct {v1, v3, v4, v5}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    sput-object v1, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_2G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 25
    new-instance v3, Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 27
    const-string v5, "MOBILE_3G"

    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "3G"

    .line 32
    invoke-direct {v3, v5, v6, v7}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    sput-object v3, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_3G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 37
    new-instance v5, Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 39
    const-string v7, "MOBILE_4G"

    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "4G"

    .line 44
    invoke-direct {v5, v7, v8, v9}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    sput-object v5, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_4G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 49
    new-instance v7, Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 51
    const-string v9, "MOBILE_5G"

    .line 53
    const/4 v10, 0x4

    .line 54
    const-string v11, "5G"

    .line 56
    invoke-direct {v7, v9, v10, v11}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    sput-object v7, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_5G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 61
    new-instance v9, Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 63
    const-string v11, "WIFI"

    .line 65
    const/4 v12, 0x5

    .line 66
    invoke-direct {v9, v11, v12, v11}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    sput-object v9, Lcom/xiaomi/onetrack/OneTrack$NetType;->WIFI:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 71
    new-instance v11, Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 73
    const-string v13, "ETHERNET"

    .line 75
    const/4 v14, 0x6

    .line 76
    invoke-direct {v11, v13, v14, v13}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    sput-object v11, Lcom/xiaomi/onetrack/OneTrack$NetType;->ETHERNET:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 81
    new-instance v13, Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 83
    const-string v15, "UNKNOWN"

    .line 85
    const/4 v14, 0x7

    .line 86
    invoke-direct {v13, v15, v14, v15}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 89
    sput-object v13, Lcom/xiaomi/onetrack/OneTrack$NetType;->UNKNOWN:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 91
    const/16 v15, 0x8

    .line 93
    new-array v15, v15, [Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 95
    aput-object v0, v15, v2

    .line 97
    aput-object v1, v15, v4

    .line 99
    aput-object v3, v15, v6

    .line 101
    aput-object v5, v15, v8

    .line 103
    aput-object v7, v15, v10

    .line 105
    aput-object v9, v15, v12

    .line 107
    const/4 v0, 0x6

    .line 108
    aput-object v11, v15, v0

    .line 110
    aput-object v13, v15, v14

    .line 112
    sput-object v15, Lcom/xiaomi/onetrack/OneTrack$NetType;->b:[Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 114
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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
    iput-object p3, p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->a:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/onetrack/OneTrack$NetType;
    .registers 2

    .line 1
    const-class v0, Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/xiaomi/onetrack/OneTrack$NetType;
    .registers 1

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$NetType;->b:[Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 3
    invoke-virtual {v0}, [Lcom/xiaomi/onetrack/OneTrack$NetType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->a:Ljava/lang/String;

    .line 3
    return-object v0
.end method
