.class public Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$FailedResult;
.super Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;
.source "RequestOnlinePlayUrlTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FailedResult"
.end annotation


# instance fields
.field public final e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object p2, p0, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$FailedResult;->e:Ljava/lang/Throwable;

    .line 6
    return-void
.end method
