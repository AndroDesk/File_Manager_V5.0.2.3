.class public Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$SuccessResult;
.super Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;
.source "RequestOnlinePlayUrlTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuccessResult"
.end annotation


# instance fields
.field public final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$SuccessResult;->url:Ljava/lang/String;

    return-void
.end method
