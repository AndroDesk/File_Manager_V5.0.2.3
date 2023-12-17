.class public abstract Lm1/c$a;
.super Ljava/lang/Object;
.source "IKscTransferListener.java"

# interfaces
.implements Lm1/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "KscTransferListener"


# instance fields
.field private receiveTotal:J

.field private received:J

.field private sendTotal:J

.field private sended:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lm1/c$a;->sendTotal:J

    .line 8
    iput-wide v0, p0, Lm1/c$a;->receiveTotal:J

    .line 10
    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lm1/c$a;->sended:J

    .line 14
    iput-wide v0, p0, Lm1/c$a;->received:J

    .line 16
    return-void
.end method


# virtual methods
.method public abstract onDataReceived(JJ)V
.end method

.method public abstract onDataSended(JJ)V
.end method

.method public final received(J)V
    .registers 5

    .line 1
    iget-wide v0, p0, Lm1/c$a;->received:J

    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lm1/c$a;->received:J

    .line 6
    :try_start_5
    iget-wide p1, p0, Lm1/c$a;->receiveTotal:J

    .line 8
    invoke-virtual {p0, v0, v1, p1, p2}, Lm1/c$a;->onDataReceived(JJ)V
    :try_end_a
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_a} :catch_14
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    .line 11
    goto :goto_13

    .line 12
    :catchall_b
    move-exception p1

    .line 13
    const-string p2, "KscTransferListener"

    .line 15
    const-string v0, "Meet exception in onDataReceived()"

    .line 17
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    :goto_13
    return-void

    .line 21
    :catch_14
    move-exception p1

    .line 22
    throw p1
.end method

.method public final sended(J)V
    .registers 5

    .line 1
    iget-wide v0, p0, Lm1/c$a;->sended:J

    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lm1/c$a;->sended:J

    .line 6
    :try_start_5
    iget-wide p1, p0, Lm1/c$a;->sendTotal:J

    .line 8
    invoke-virtual {p0, v0, v1, p1, p2}, Lm1/c$a;->onDataSended(JJ)V
    :try_end_a
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_a} :catch_14
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    .line 11
    goto :goto_13

    .line 12
    :catchall_b
    move-exception p1

    .line 13
    const-string p2, "KscTransferListener"

    .line 15
    const-string v0, "Meet exception in onDataSended()"

    .line 17
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    :goto_13
    return-void

    .line 21
    :catch_14
    move-exception p1

    .line 22
    throw p1
.end method

.method public final setReceivePos(J)V
    .registers 5

    .line 1
    iget-wide v0, p0, Lm1/c$a;->received:J

    .line 3
    cmp-long v0, p1, v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iput-wide p1, p0, Lm1/c$a;->received:J

    .line 10
    iget-wide v0, p0, Lm1/c$a;->receiveTotal:J

    .line 12
    invoke-virtual {p0, p1, p2, v0, v1}, Lm1/c$a;->onDataReceived(JJ)V

    .line 15
    return-void
.end method

.method public final setReceiveTotal(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lm1/c$a;->receiveTotal:J

    .line 3
    return-void
.end method

.method public final setSendPos(J)V
    .registers 5

    .line 1
    iget-wide v0, p0, Lm1/c$a;->sended:J

    .line 3
    cmp-long v0, p1, v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iput-wide p1, p0, Lm1/c$a;->sended:J

    .line 10
    iget-wide v0, p0, Lm1/c$a;->sendTotal:J

    .line 12
    invoke-virtual {p0, p1, p2, v0, v1}, Lm1/c$a;->onDataSended(JJ)V

    .line 15
    return-void
.end method

.method public final setSendTotal(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lm1/c$a;->sendTotal:J

    .line 3
    return-void
.end method
