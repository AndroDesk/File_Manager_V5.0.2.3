.class public final Li3/k;
.super Ljava/lang/Object;
.source "TypeIntrinsics.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/Object;)V
    .registers 5

    .line 1
    if-eqz p1, :cond_e3

    .line 3
    instance-of v0, p1, Ly2/a;

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_bc

    .line 9
    instance-of v0, p1, Li3/f;

    .line 11
    if-eqz v0, :cond_15

    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Li3/f;

    .line 16
    invoke-interface {v0}, Li3/f;->getArity()I

    .line 19
    move-result v0

    .line 20
    goto/16 :goto_b9

    .line 22
    :cond_15
    instance-of v0, p1, Lh3/a;

    .line 24
    if-eqz v0, :cond_1c

    .line 26
    move v0, v2

    .line 27
    goto/16 :goto_b9

    .line 29
    :cond_1c
    instance-of v0, p1, Lh3/l;

    .line 31
    if-eqz v0, :cond_23

    .line 33
    move v0, v1

    .line 34
    goto/16 :goto_b9

    .line 36
    :cond_23
    instance-of v0, p1, Lh3/p;

    .line 38
    if-eqz v0, :cond_2a

    .line 40
    const/4 v0, 0x2

    .line 41
    goto/16 :goto_b9

    .line 43
    :cond_2a
    instance-of v0, p1, Lh3/q;

    .line 45
    if-eqz v0, :cond_31

    .line 47
    const/4 v0, 0x3

    .line 48
    goto/16 :goto_b9

    .line 50
    :cond_31
    instance-of v0, p1, Lh3/r;

    .line 52
    if-eqz v0, :cond_38

    .line 54
    const/4 v0, 0x4

    .line 55
    goto/16 :goto_b9

    .line 57
    :cond_38
    instance-of v0, p1, Lh3/s;

    .line 59
    if-eqz v0, :cond_3f

    .line 61
    const/4 v0, 0x5

    .line 62
    goto/16 :goto_b9

    .line 64
    :cond_3f
    instance-of v0, p1, Lh3/t;

    .line 66
    if-eqz v0, :cond_46

    .line 68
    const/4 v0, 0x6

    .line 69
    goto/16 :goto_b9

    .line 71
    :cond_46
    instance-of v0, p1, Lh3/u;

    .line 73
    if-eqz v0, :cond_4d

    .line 75
    const/4 v0, 0x7

    .line 76
    goto/16 :goto_b9

    .line 78
    :cond_4d
    instance-of v0, p1, Lh3/v;

    .line 80
    if-eqz v0, :cond_55

    .line 82
    const/16 v0, 0x8

    .line 84
    goto/16 :goto_b9

    .line 86
    :cond_55
    instance-of v0, p1, Lh3/w;

    .line 88
    if-eqz v0, :cond_5d

    .line 90
    const/16 v0, 0x9

    .line 92
    goto/16 :goto_b9

    .line 94
    :cond_5d
    instance-of v0, p1, Lh3/b;

    .line 96
    if-eqz v0, :cond_64

    .line 98
    const/16 v0, 0xa

    .line 100
    goto :goto_b9

    .line 101
    :cond_64
    instance-of v0, p1, Lh3/c;

    .line 103
    if-eqz v0, :cond_6b

    .line 105
    const/16 v0, 0xb

    .line 107
    goto :goto_b9

    .line 108
    :cond_6b
    instance-of v0, p1, Lh3/d;

    .line 110
    if-eqz v0, :cond_72

    .line 112
    const/16 v0, 0xc

    .line 114
    goto :goto_b9

    .line 115
    :cond_72
    instance-of v0, p1, Lh3/e;

    .line 117
    if-eqz v0, :cond_79

    .line 119
    const/16 v0, 0xd

    .line 121
    goto :goto_b9

    .line 122
    :cond_79
    instance-of v0, p1, Lh3/f;

    .line 124
    if-eqz v0, :cond_80

    .line 126
    const/16 v0, 0xe

    .line 128
    goto :goto_b9

    .line 129
    :cond_80
    instance-of v0, p1, Lh3/g;

    .line 131
    if-eqz v0, :cond_87

    .line 133
    const/16 v0, 0xf

    .line 135
    goto :goto_b9

    .line 136
    :cond_87
    instance-of v0, p1, Lh3/h;

    .line 138
    if-eqz v0, :cond_8e

    .line 140
    const/16 v0, 0x10

    .line 142
    goto :goto_b9

    .line 143
    :cond_8e
    instance-of v0, p1, Lh3/i;

    .line 145
    if-eqz v0, :cond_95

    .line 147
    const/16 v0, 0x11

    .line 149
    goto :goto_b9

    .line 150
    :cond_95
    instance-of v0, p1, Lh3/j;

    .line 152
    if-eqz v0, :cond_9c

    .line 154
    const/16 v0, 0x12

    .line 156
    goto :goto_b9

    .line 157
    :cond_9c
    instance-of v0, p1, Lh3/k;

    .line 159
    if-eqz v0, :cond_a3

    .line 161
    const/16 v0, 0x13

    .line 163
    goto :goto_b9

    .line 164
    :cond_a3
    instance-of v0, p1, Lh3/m;

    .line 166
    if-eqz v0, :cond_aa

    .line 168
    const/16 v0, 0x14

    .line 170
    goto :goto_b9

    .line 171
    :cond_aa
    instance-of v0, p1, Lh3/n;

    .line 173
    if-eqz v0, :cond_b1

    .line 175
    const/16 v0, 0x15

    .line 177
    goto :goto_b9

    .line 178
    :cond_b1
    instance-of v0, p1, Lh3/o;

    .line 180
    if-eqz v0, :cond_b8

    .line 182
    const/16 v0, 0x16

    .line 184
    goto :goto_b9

    .line 185
    :cond_b8
    const/4 v0, -0x1

    .line 186
    :goto_b9
    if-ne v0, p0, :cond_bc

    .line 188
    goto :goto_bd

    .line 189
    :cond_bc
    move v1, v2

    .line 190
    :goto_bd
    if-eqz v1, :cond_c0

    .line 192
    goto :goto_e3

    .line 193
    :cond_c0
    const-string v0, "kotlin.jvm.functions.Function"

    .line 195
    invoke-static {v0, p0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 198
    move-result-object p0

    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 206
    move-result-object p1

    .line 207
    const-string v0, " cannot be cast to "

    .line 209
    invoke-static {p1, v0, p0}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    move-result-object p0

    .line 213
    new-instance p1, Ljava/lang/ClassCastException;

    .line 215
    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 218
    const-class p0, Li3/k;

    .line 220
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 223
    move-result-object p0

    .line 224
    invoke-static {p0, p1}, Li3/g;->g(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 227
    throw p1

    .line 228
    :cond_e3
    :goto_e3
    return-void
.end method
