.class public final Lr1/e;
.super Ljava/lang/Object;
.source "KssUploadInfo.java"

# interfaces
.implements Lp1/f;


# instance fields
.field public final b:Lr1/k;

.field public final c:Lp1/e;

.field public final d:J

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:J

.field public h:Lr1/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lr1/k;Lp1/e;)V
    .registers 5

    sget v0, Ls1/i;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lr1/e;-><init>(Lr1/k;Lp1/e;J)V

    return-void
.end method

.method public constructor <init>(Lr1/k;Lp1/e;J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr1/e;->f:Z

    const-wide/32 v0, 0x400000

    iput-wide v0, p0, Lr1/e;->g:J

    const/4 v0, 0x0

    iput-object v0, p0, Lr1/e;->h:Lr1/g;

    iput-object p1, p0, Lr1/e;->b:Lr1/k;

    iput-object p2, p0, Lr1/e;->c:Lp1/e;

    iput-wide p3, p0, Lr1/e;->d:J

    return-void
.end method
