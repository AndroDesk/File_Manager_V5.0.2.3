.class public interface abstract Lcom/micloud/midrive/server/transport/RequestHandler;
.super Ljava/lang/Object;
.source "RequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TypeRequest:",
        "Ljava/lang/Object;",
        "TypeResponse:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getRequest(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TTypeRequest;"
        }
    .end annotation
.end method

.method public abstract onResponse(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITTypeResponse;)V"
        }
    .end annotation
.end method
