.class public final enum Lcom/xiaomi/onetrack/OneTrack$Mode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/OneTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/onetrack/OneTrack$Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

.field public static final enum PLUGIN:Lcom/xiaomi/onetrack/OneTrack$Mode;

.field public static final enum SDK:Lcom/xiaomi/onetrack/OneTrack$Mode;

.field private static final synthetic b:[Lcom/xiaomi/onetrack/OneTrack$Mode;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 3
    const-string v1, "APP"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "app"

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/onetrack/OneTrack$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 13
    new-instance v1, Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 15
    const-string v3, "PLUGIN"

    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "plugin"

    .line 20
    invoke-direct {v1, v3, v4, v5}, Lcom/xiaomi/onetrack/OneTrack$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    sput-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->PLUGIN:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 25
    new-instance v3, Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 27
    const-string v5, "SDK"

    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "sdk"

    .line 32
    invoke-direct {v3, v5, v6, v7}, Lcom/xiaomi/onetrack/OneTrack$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    sput-object v3, Lcom/xiaomi/onetrack/OneTrack$Mode;->SDK:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 37
    const/4 v5, 0x3

    .line 38
    new-array v5, v5, [Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 40
    aput-object v0, v5, v2

    .line 42
    aput-object v1, v5, v4

    .line 44
    aput-object v3, v5, v6

    .line 46
    sput-object v5, Lcom/xiaomi/onetrack/OneTrack$Mode;->b:[Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 48
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
    iput-object p3, p0, Lcom/xiaomi/onetrack/OneTrack$Mode;->a:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/onetrack/OneTrack$Mode;
    .registers 2

    .line 1
    const-class v0, Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/xiaomi/onetrack/OneTrack$Mode;
    .registers 1

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->b:[Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 3
    invoke-virtual {v0}, [Lcom/xiaomi/onetrack/OneTrack$Mode;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack$Mode;->a:Ljava/lang/String;

    .line 3
    return-object v0
.end method
