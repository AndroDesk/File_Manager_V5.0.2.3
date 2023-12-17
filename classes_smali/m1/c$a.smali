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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lm1/c$a;->sendTotal:J

    iput-wide v0, p0, Lm1/c$a;->receiveTotal:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lm1/c$a;->sended:J

    iput-wide v0, p0, Lm1/c$a;->received:J

    return-void
.end method


# virtual methods
.method public abstract onDataReceived(JJ)V
.end method

.method public abstract onDataSended(JJ)V
.end method

.method public final received(J)V
    .registers 5

    iget-wide v0, p0, Lm1/c$a;->received:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lm1/c$a;->received:J

    :try_start_5
    iget-wide p1, p0, Lm1/c$a;->receiveTotal:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lm1/c$a;->onDataReceived(JJ)V
    :try_end_a
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_a} :catch_14
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    goto :goto_13

    :catchall_b
    move-exception p1

    const-string p2, "KscTransferListener"

    const-string v0, "Meet exception in onDataReceived()"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return-void

    :catch_14
    move-exception p1

    throw p1
.end method

.method public final sended(J)V
    .registers 5

    iget-wide v0, p0, Lm1/c$a;->sended:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lm1/c$a;->sended:J

    :try_start_5
    iget-wide p1, p0, Lm1/c$a;->sendTotal:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lm1/c$a;->onDataSended(JJ)V
    :try_end_a
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_a} :catch_14
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    goto :goto_13

    :catchall_b
    move-exception p1

    const-string p2, "KscTransferListener"

    const-string v0, "Meet exception in onDataSended()"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return-void

    :catch_14
    move-exception p1

    throw p1
.end method

.method public final setReceivePos(J)V
    .registers 5

    iget-wide v0, p0, Lm1/c$a;->received:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iput-wide p1, p0, Lm1/c$a;->received:J

    iget-wide v0, p0, Lm1/c$a;->receiveTotal:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lm1/c$a;->onDataReceived(JJ)V

    return-void
.end method

.method public final setReceiveTotal(J)V
    .registers 3

    iput-wide p1, p0, Lm1/c$a;->receiveTotal:J

    return-void
.end method

.method public final setSendPos(J)V
    .registers 5

    iget-wide v0, p0, Lm1/c$a;->sended:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iput-wide p1, p0, Lm1/c$a;->sended:J

    iget-wide v0, p0, Lm1/c$a;->sendTotal:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lm1/c$a;->onDataSended(JJ)V

    return-void
.end method

.method public final setSendTotal(J)V
    .registers 3

    iput-wide p1, p0, Lm1/c$a;->sendTotal:J

    return-void
.end method
