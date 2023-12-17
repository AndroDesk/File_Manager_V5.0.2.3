.class public Lcom/micloud/midrive/helper/StatHelper;
.super Ljava/lang/Object;
.source "StatHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/helper/StatHelper$IStatParam;,
        Lcom/micloud/midrive/helper/StatHelper$StatParamImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatHelper"

.field private static sOneTrack:Lcom/xiaomi/onetrack/OneTrack;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initOneTrack(Lcom/xiaomi/onetrack/OneTrack;)V
    .registers 1

    sput-object p0, Lcom/micloud/midrive/helper/StatHelper;->sOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    return-void
.end method

.method public static recordEvent(Ljava/lang/String;Lcom/micloud/midrive/helper/StatHelper$IStatParam$Builder;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/micloud/midrive/helper/StatHelper$StatParamImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/micloud/midrive/helper/StatHelper$StatParamImpl;-><init>(Lcom/micloud/midrive/helper/StatHelper$1;)V

    if-eqz p1, :cond_b

    invoke-interface {p1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam$Builder;->build(Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V

    :cond_b
    invoke-static {v0}, Lcom/micloud/midrive/helper/StatHelper$StatParamImpl;->access$100(Lcom/micloud/midrive/helper/StatHelper$StatParamImpl;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/micloud/midrive/helper/StatHelper;->statOneTrack(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static statOneTrack(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/micloud/midrive/helper/StatHelper;->sOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    if-nez v0, :cond_10

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string p2, "sOneTrack is null, return"

    aput-object p2, p0, p1

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    return-void

    :cond_10
    if-nez p2, :cond_17

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "tip"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    sget-object p1, Lcom/micloud/midrive/helper/StatHelper;->sOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {p1, p0, p2}, Lcom/xiaomi/onetrack/OneTrack;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
