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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/internal/hybrid/HybridManager;Lmiuix/hybrid/Response;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lmiuix/internal/hybrid/HybridManager$JsInvocation;->this$0:Lmiuix/internal/hybrid/HybridManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmiuix/internal/hybrid/HybridManager$JsInvocation;->mResponse:Lmiuix/hybrid/Response;

    iput-object p3, p0, Lmiuix/internal/hybrid/HybridManager$JsInvocation;->mJsCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager$JsInvocation;->this$0:Lmiuix/internal/hybrid/HybridManager;

    iget-object v1, p0, Lmiuix/internal/hybrid/HybridManager$JsInvocation;->mResponse:Lmiuix/hybrid/Response;

    iget-object v2, p0, Lmiuix/internal/hybrid/HybridManager$JsInvocation;->mJsCallback:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lmiuix/internal/hybrid/HybridManager;->access$200(Lmiuix/internal/hybrid/HybridManager;Lmiuix/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiuix/internal/hybrid/HybridManager$JsInvocation;->this$0:Lmiuix/internal/hybrid/HybridManager;

    invoke-static {v1}, Lmiuix/internal/hybrid/HybridManager;->access$300(Lmiuix/internal/hybrid/HybridManager;)Lmiuix/hybrid/HybridView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/hybrid/HybridView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
