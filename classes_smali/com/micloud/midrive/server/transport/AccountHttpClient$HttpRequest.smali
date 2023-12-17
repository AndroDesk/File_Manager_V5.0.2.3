.class public Lcom/micloud/midrive/server/transport/AccountHttpClient$HttpRequest;
.super Ljava/lang/Object;
.source "AccountHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/server/transport/AccountHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpRequest"
.end annotation


# instance fields
.field public final URL:Ljava/lang/String;

.field public final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/server/transport/AccountHttpClient$HttpRequest;->URL:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/server/transport/AccountHttpClient$HttpRequest;->params:Ljava/util/Map;

    .line 8
    return-void
.end method
