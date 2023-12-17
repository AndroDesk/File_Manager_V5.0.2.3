.class public final Lp1/b$a;
.super Ljava/lang/Object;
.source "FileTranceListener.java"

# interfaces
.implements Lm1/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lp1/b;

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>(Lp1/b;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lp1/b$a;->a:Lp1/b;

    .line 6
    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lp1/b$a;->b:J

    .line 10
    iput-wide v0, p0, Lp1/b$a;->c:J

    .line 12
    invoke-virtual {p0, v0, v1}, Lp1/b$a;->setSendPos(J)V

    .line 15
    invoke-virtual {p0, v0, v1}, Lp1/b$a;->setReceivePos(J)V

    .line 18
    return-void
.end method


# virtual methods
.method public final received(J)V
    .registers 6

    .line 1
    iget-object v0, p0, Lp1/b$a;->a:Lp1/b;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-wide v1, v0, Lp1/b;->b:J

    .line 8
    add-long/2addr v1, p1

    .line 9
    iput-wide v1, v0, Lp1/b;->b:J

    .line 11
    iget-object v0, v0, Lp1/b;->a:Lm1/c;

    .line 13
    invoke-interface {v0, p1, p2}, Lm1/c;->received(J)V

    .line 16
    iget-wide v0, p0, Lp1/b$a;->c:J

    .line 18
    add-long/2addr v0, p1

    .line 19
    iput-wide v0, p0, Lp1/b$a;->c:J

    .line 21
    return-void
.end method

.method public final sended(J)V
    .registers 5

    .line 1
    iget-object v0, p0, Lp1/b$a;->a:Lp1/b;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v0, v0, Lp1/b;->a:Lm1/c;

    .line 8
    invoke-interface {v0, p1, p2}, Lm1/c;->sended(J)V

    .line 11
    iget-wide v0, p0, Lp1/b$a;->b:J

    .line 13
    add-long/2addr v0, p1

    .line 14
    iput-wide v0, p0, Lp1/b$a;->b:J

    .line 16
    return-void
.end method

.method public final setReceivePos(J)V
    .registers 5

    .line 1
    iget-wide v0, p0, Lp1/b$a;->c:J

    .line 3
    sub-long/2addr p1, v0

    .line 4
    invoke-virtual {p0, p1, p2}, Lp1/b$a;->received(J)V

    .line 7
    return-void
.end method

.method public final setReceiveTotal(J)V
    .registers 7

    .line 1
    iget-object v0, p0, Lp1/b$a;->a:Lp1/b;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v1, v0, Lp1/b;->a:Lm1/c;

    .line 8
    iget-wide v2, v0, Lp1/b;->b:J

    .line 10
    add-long/2addr v2, p1

    .line 11
    invoke-interface {v1, v2, v3}, Lm1/c;->setReceiveTotal(J)V

    .line 14
    return-void
.end method

.method public final setSendPos(J)V
    .registers 5

    .line 1
    iget-wide v0, p0, Lp1/b$a;->b:J

    .line 3
    sub-long/2addr p1, v0

    .line 4
    invoke-virtual {p0, p1, p2}, Lp1/b$a;->sended(J)V

    .line 7
    return-void
.end method

.method public final setSendTotal(J)V
    .registers 3

    .line 1
    iget-object p1, p0, Lp1/b$a;->a:Lp1/b;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    return-void
.end method
