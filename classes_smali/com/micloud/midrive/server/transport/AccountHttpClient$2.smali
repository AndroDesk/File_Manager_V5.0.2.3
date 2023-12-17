.class Lcom/micloud/midrive/server/transport/AccountHttpClient$2;
.super Ljava/lang/Object;
.source "AccountHttpClient.java"

# interfaces
.implements Lcom/micloud/midrive/server/transport/AccountHttpClient$RequestAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/server/transport/AccountHttpClient;->postInner(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$client:Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/server/transport/AccountHttpClient$2;->val$client:Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/micloud/midrive/server/transport/AccountHttpClient$2;->val$client:Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;

    invoke-interface {v0, p1, p2}, Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;->securePost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
