.class Lcom/micloud/midrive/helper/StatHelper$StatParamImpl;
.super Ljava/lang/Object;
.source "StatHelper.java"

# interfaces
.implements Lcom/micloud/midrive/helper/StatHelper$IStatParam;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/helper/StatHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatParamImpl"
.end annotation


# instance fields
.field private final oneTrackParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/micloud/midrive/helper/StatHelper$StatParamImpl;->oneTrackParam:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/micloud/midrive/helper/StatHelper$1;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Lcom/micloud/midrive/helper/StatHelper$StatParamImpl;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/micloud/midrive/helper/StatHelper$StatParamImpl;)Ljava/util/Map;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/helper/StatHelper$StatParamImpl;->getOneTrackParam()Ljava/util/Map;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getOneTrackParam()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/helper/StatHelper$StatParamImpl;->oneTrackParam:Ljava/util/Map;

    .line 3
    return-object v0
.end method


# virtual methods
.method public putBoolean(Ljava/lang/String;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/helper/StatHelper$StatParamImpl;->oneTrackParam:Ljava/util/Map;

    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/helper/StatHelper$StatParamImpl;->oneTrackParam:Ljava/util/Map;

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/helper/StatHelper$StatParamImpl;->oneTrackParam:Ljava/util/Map;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-void
.end method

.method public putList(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/helper/StatHelper$StatParamImpl;->oneTrackParam:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/helper/StatHelper$StatParamImpl;->oneTrackParam:Ljava/util/Map;

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/helper/StatHelper$StatParamImpl;->oneTrackParam:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method
