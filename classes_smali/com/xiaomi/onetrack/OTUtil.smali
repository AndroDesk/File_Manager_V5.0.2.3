.class public Lcom/xiaomi/onetrack/OTUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetWorkType(Landroid/content/Context;)Lcom/xiaomi/onetrack/OneTrack$NetType;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/g/c;->a(Landroid/content/Context;)Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
