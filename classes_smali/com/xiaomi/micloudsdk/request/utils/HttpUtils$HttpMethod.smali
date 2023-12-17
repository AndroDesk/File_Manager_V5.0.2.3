.class public final enum Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;
.super Ljava/lang/Enum;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

.field public static final enum GET:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

.field public static final enum POST:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

.field public static final enum POST_JSON:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 3
    const-string v1, "GET"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->GET:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 11
    new-instance v1, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 13
    const-string v3, "POST"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->POST:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 21
    new-instance v3, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 23
    const-string v5, "POST_JSON"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->POST_JSON:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 34
    aput-object v0, v5, v2

    .line 36
    aput-object v1, v5, v4

    .line 38
    aput-object v3, v5, v6

    .line 40
    sput-object v5, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->$VALUES:[Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 42
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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;
    .registers 2

    .line 1
    const-class v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;
    .registers 1

    .line 1
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->$VALUES:[Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 3
    invoke-virtual {v0}, [Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 9
    return-object v0
.end method
