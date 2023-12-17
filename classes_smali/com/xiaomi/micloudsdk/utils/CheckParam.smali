.class public Lcom/xiaomi/micloudsdk/utils/CheckParam;
.super Ljava/lang/Object;
.source "CheckParam.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


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

.method public static checkParamNeed(Ljava/lang/Integer;)Z
    .registers 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/ParamChecker;->checkParamNeed(I)Z

    move-result p0

    return p0
.end method

.method public static checkParamNeed(Ljava/lang/Long;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/request/utils/ParamChecker;->checkParamNeed(J)Z

    move-result p0

    return p0
.end method

.method public static checkParamNeed(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/ParamChecker;->checkParamNeed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkParamValid(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/ParamChecker;->checkParamValid(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static checkParamValid(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/ParamChecker;->checkParamValid(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static checkParamValid(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/ParamChecker;->checkParamValid(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static checkParamValid(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/ParamChecker;->checkParamValid(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
