.class Lmiui/cloud/net/XHttpClient$1;
.super Ljava/lang/Object;
.source "XHttpClient.java"

# interfaces
.implements Lmiui/cloud/net/XHttpClient$IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/cloud/net/XHttpClient;->syncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiui/cloud/net/XHttpClient;

.field public final synthetic val$response:Lmiui/cloud/common/XWrapper;


# direct methods
.method public constructor <init>(Lmiui/cloud/net/XHttpClient;Lmiui/cloud/common/XWrapper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiui/cloud/net/XHttpClient$1;->this$0:Lmiui/cloud/net/XHttpClient;

    .line 3
    iput-object p2, p0, Lmiui/cloud/net/XHttpClient$1;->val$response:Lmiui/cloud/common/XWrapper;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public handleHttpResponse(Lmiui/cloud/net/XHttpClient$HttpResponse;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$1;->val$response:Lmiui/cloud/common/XWrapper;

    .line 3
    invoke-virtual {v0, p1}, Lmiui/cloud/common/XWrapper;->set(Ljava/lang/Object;)V

    .line 6
    return-void
.end method
