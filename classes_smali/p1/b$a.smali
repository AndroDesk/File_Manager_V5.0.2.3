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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lp1/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/b$a;->a:Lp1/b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lp1/b$a;->b:J

    iput-wide v0, p0, Lp1/b$a;->c:J

    invoke-virtual {p0, v0, v1}, Lp1/b$a;->setSendPos(J)V

    invoke-virtual {p0, v0, v1}, Lp1/b$a;->setReceivePos(J)V

    return-void
.end method


# virtual methods
.method public final received(J)V
    .registers 6

    iget-object v0, p0, Lp1/b$a;->a:Lp1/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, v0, Lp1/b;->b:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lp1/b;->b:J

    iget-object v0, v0, Lp1/b;->a:Lm1/c;

    invoke-interface {v0, p1, p2}, Lm1/c;->received(J)V

    iget-wide v0, p0, Lp1/b$a;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lp1/b$a;->c:J

    return-void
.end method

.method public final sended(J)V
    .registers 5

    iget-object v0, p0, Lp1/b$a;->a:Lp1/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lp1/b;->a:Lm1/c;

    invoke-interface {v0, p1, p2}, Lm1/c;->sended(J)V

    iget-wide v0, p0, Lp1/b$a;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lp1/b$a;->b:J

    return-void
.end method

.method public final setReceivePos(J)V
    .registers 5

    iget-wide v0, p0, Lp1/b$a;->c:J

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lp1/b$a;->received(J)V

    return-void
.end method

.method public final setReceiveTotal(J)V
    .registers 7

    iget-object v0, p0, Lp1/b$a;->a:Lp1/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lp1/b;->a:Lm1/c;

    iget-wide v2, v0, Lp1/b;->b:J

    add-long/2addr v2, p1

    invoke-interface {v1, v2, v3}, Lm1/c;->setReceiveTotal(J)V

    return-void
.end method

.method public final setSendPos(J)V
    .registers 5

    iget-wide v0, p0, Lp1/b$a;->b:J

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lp1/b$a;->sended(J)V

    return-void
.end method

.method public final setSendTotal(J)V
    .registers 3

    iget-object p1, p0, Lp1/b$a;->a:Lp1/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
