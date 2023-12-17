.class Lmiuix/internal/hybrid/HybridManager$JsInvocation;
.super Ljava/lang/Object;
.source "HybridManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/hybrid/HybridManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JsInvocation"
.end annotation


# instance fields
.field private mJsCallback:Ljava/lang/String;

.field private mResponse:Lmiuix/hybrid/Response;

.field public final synthetic this$0:Lmiuix/internal/hybrid/HybridManager;


# direct methods
.method public constructor <init>(Lmiuix/internal/hybrid/HybridManager;Lmiuix/hybrid/Response;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/internal/hybrid/HybridManager$JsInvocation;->this$0:Lmiuix/internal/hybrid/HybridManager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lmiuix/internal/hybrid/HybridManager$JsInvocation;->mResponse:Lmiuix/hybrid/Response;

    .line 8
    iput-object p3, p0, Lmiuix/internal/hybrid/HybridManager$JsInvocation;->mJsCallback:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager$JsInvocation;->this$0:Lmiuix/internal/hybrid/HybridManager;

    .line 3
    iget-object v1, p0, Lmiuix/internal/hybrid/HybridManager$JsInvocation;->mResponse:Lmiuix/hybrid/Response;

    .line 5
    iget-object v2, p0, Lmiuix/internal/hybrid/HybridManager$JsInvocation;->mJsCallback:Ljava/lang/String;

    .line 7
    invoke-static {v0, v1, v2}, Lmiuix/internal/hybrid/HybridManager;->access$200(Lmiuix/internal/hybrid/HybridManager;Lmiuix/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lmiuix/internal/hybrid/HybridManager$JsInvocation;->this$0:Lmiuix/internal/hybrid/HybridManager;

    .line 13
    invoke-static {v1}, Lmiuix/internal/hybrid/HybridManager;->access$300(Lmiuix/internal/hybrid/HybridManager;)Lmiuix/hybrid/HybridView;

    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    const-string v3, "javascript:"

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v1, v0}, Lmiuix/hybrid/HybridView;->loadUrl(Ljava/lang/String;)V

    .line 37
    return-void
.end method
