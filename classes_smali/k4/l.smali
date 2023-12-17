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
.method public constructor <init>(Lk4/j;Lm4/h;[CIZ)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lk4/b;-><init>(Lk4/j;Lm4/h;[CIZ)V

    .line 4
    return-void
.end method


# virtual methods
.method public final e(Lm4/h;[CZ)Lg4/c;
    .registers 13

    .line 1
    new-instance v8, Lg4/e;

    .line 3
    iget-wide v1, p1, Lm4/b;->f:J

    .line 5
    iget-wide v3, p1, Lm4/b;->e:J

    .line 7
    const/16 p1, 0xc

    .line 9
    new-array v6, p1, [B

    .line 11
    invoke-virtual {p0, v6}, Lk4/b;->g([B)V

    .line 14
    move-object v0, v8

    .line 15
    move v5, p3

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lg4/e;-><init>(JJZ[B[C)V

    .line 20
    return-object v8
.end method
