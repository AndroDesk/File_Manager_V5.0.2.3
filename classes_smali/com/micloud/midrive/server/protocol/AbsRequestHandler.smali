.class public abstract Lcom/micloud/midrive/server/protocol/AbsRequestHandler;
.super Ljava/lang/Object;
.source "AbsRequestHandler.java"

# interfaces
.implements Lcom/micloud/midrive/server/transport/RequestHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TypeRequest:",
        "Ljava/lang/Object;",
        "TypeResponse:",
        "Ljava/lang/Object;",
        "TypeProcessedResponse:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/micloud/midrive/server/transport/RequestHandler<",
        "TTypeRequest;TTypeResponse;>;"
    }
.end annotation


# instance fields
.field private mProcessedResponse:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTypeProcessedResponse;"
        }
    .end annotation
.end field


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


# virtual methods
.method public getProcessedResponse()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTypeProcessedResponse;"
        }
    .end annotation

    iget-object v0, p0, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->mProcessedResponse:Ljava/lang/Object;

    return-object v0
.end method

.method public getRequest(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TTypeRequest;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->onGetRequest(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract onGetRequest(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TTypeRequest;"
        }
    .end annotation
.end method

.method public abstract onProcessResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeResponse;)TTypeProcessedResponse;"
        }
    .end annotation
.end method

.method public onResponse(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITTypeResponse;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->onProcessResponse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->mProcessedResponse:Ljava/lang/Object;

    return-void
.end method
