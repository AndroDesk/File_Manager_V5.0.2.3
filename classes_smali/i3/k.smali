.class public final Li3/k;
.super Ljava/lang/Object;
.source "TypeIntrinsics.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/Object;)V
    .registers 5

    if-eqz p1, :cond_e3

    instance-of v0, p1, Ly2/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_bc

    instance-of v0, p1, Li3/f;

    if-eqz v0, :cond_15

    move-object v0, p1

    check-cast v0, Li3/f;

    invoke-interface {v0}, Li3/f;->getArity()I

    move-result v0

    goto/16 :goto_b9

    :cond_15
    instance-of v0, p1, Lh3/a;

    if-eqz v0, :cond_1c

    move v0, v2

    goto/16 :goto_b9

    :cond_1c
    instance-of v0, p1, Lh3/l;

    if-eqz v0, :cond_23

    move v0, v1

    goto/16 :goto_b9

    :cond_23
    instance-of v0, p1, Lh3/p;

    if-eqz v0, :cond_2a

    const/4 v0, 0x2

    goto/16 :goto_b9

    :cond_2a
    instance-of v0, p1, Lh3/q;

    if-eqz v0, :cond_31

    const/4 v0, 0x3

    goto/16 :goto_b9

    :cond_31
    instance-of v0, p1, Lh3/r;

    if-eqz v0, :cond_38

    const/4 v0, 0x4

    goto/16 :goto_b9

    :cond_38
    instance-of v0, p1, Lh3/s;

    if-eqz v0, :cond_3f

    const/4 v0, 0x5

    goto/16 :goto_b9

    :cond_3f
    instance-of v0, p1, Lh3/t;

    if-eqz v0, :cond_46

    const/4 v0, 0x6

    goto/16 :goto_b9

    :cond_46
    instance-of v0, p1, Lh3/u;

    if-eqz v0, :cond_4d

    const/4 v0, 0x7

    goto/16 :goto_b9

    :cond_4d
    instance-of v0, p1, Lh3/v;

    if-eqz v0, :cond_55

    const/16 v0, 0x8

    goto/16 :goto_b9

    :cond_55
    instance-of v0, p1, Lh3/w;

    if-eqz v0, :cond_5d

    const/16 v0, 0x9

    goto/16 :goto_b9

    :cond_5d
    instance-of v0, p1, Lh3/b;

    if-eqz v0, :cond_64

    const/16 v0, 0xa

    goto :goto_b9

    :cond_64
    instance-of v0, p1, Lh3/c;

    if-eqz v0, :cond_6b

    const/16 v0, 0xb

    goto :goto_b9

    :cond_6b
    instance-of v0, p1, Lh3/d;

    if-eqz v0, :cond_72

    const/16 v0, 0xc

    goto :goto_b9

    :cond_72
    instance-of v0, p1, Lh3/e;

    if-eqz v0, :cond_79

    const/16 v0, 0xd

    goto :goto_b9

    :cond_79
    instance-of v0, p1, Lh3/f;

    if-eqz v0, :cond_80

    const/16 v0, 0xe

    goto :goto_b9

    :cond_80
    instance-of v0, p1, Lh3/g;

    if-eqz v0, :cond_87

    const/16 v0, 0xf

    goto :goto_b9

    :cond_87
    instance-of v0, p1, Lh3/h;

    if-eqz v0, :cond_8e

    const/16 v0, 0x10

    goto :goto_b9

    :cond_8e
    instance-of v0, p1, Lh3/i;

    if-eqz v0, :cond_95

    const/16 v0, 0x11

    goto :goto_b9

    :cond_95
    instance-of v0, p1, Lh3/j;

    if-eqz v0, :cond_9c

    const/16 v0, 0x12

    goto :goto_b9

    :cond_9c
    instance-of v0, p1, Lh3/k;

    if-eqz v0, :cond_a3

    const/16 v0, 0x13

    goto :goto_b9

    :cond_a3
    instance-of v0, p1, Lh3/m;

    if-eqz v0, :cond_aa

    const/16 v0, 0x14

    goto :goto_b9

    :cond_aa
    instance-of v0, p1, Lh3/n;

    if-eqz v0, :cond_b1

    const/16 v0, 0x15

    goto :goto_b9

    :cond_b1
    instance-of v0, p1, Lh3/o;

    if-eqz v0, :cond_b8

    const/16 v0, 0x16

    goto :goto_b9

    :cond_b8
    const/4 v0, -0x1

    :goto_b9
    if-ne v0, p0, :cond_bc

    goto :goto_bd

    :cond_bc
    move v1, v2

    :goto_bd
    if-eqz v1, :cond_c0

    goto :goto_e3

    :cond_c0
    const-string v0, "kotlin.jvm.functions.Function"

    invoke-static {v0, p0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, " cannot be cast to "

    invoke-static {p1, v0, p0}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    const-class p0, Li3/k;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Li3/g;->g(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    throw p1

    :cond_e3
    :goto_e3
    return-void
.end method
