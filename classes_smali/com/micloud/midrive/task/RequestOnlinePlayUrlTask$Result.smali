.class public Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;
.super Ljava/lang/Object;
.source "RequestOnlinePlayUrlTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final fileId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;->fileId:Ljava/lang/String;

    .line 6
    return-void
.end method
