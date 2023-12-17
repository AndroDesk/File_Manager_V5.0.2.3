.class public final Lk4/l;
.super Lk4/b;
.source "ZipStandardCipherInputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk4/b<",
        "Lg4/e;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lk4/j;Lm4/h;[CIZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lk4/b;-><init>(Lk4/j;Lm4/h;[CIZ)V

    return-void
.end method


# virtual methods
.method public final e(Lm4/h;[CZ)Lg4/c;
    .registers 13

    new-instance v8, Lg4/e;

    iget-wide v1, p1, Lm4/b;->f:J

    iget-wide v3, p1, Lm4/b;->e:J

    const/16 p1, 0xc

    new-array v6, p1, [B

    invoke-virtual {p0, v6}, Lk4/b;->g([B)V

    move-object v0, v8

    move v5, p3

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lg4/e;-><init>(JJZ[B[C)V

    return-object v8
.end method
