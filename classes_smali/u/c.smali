.class public Lu/c;
.super Ljava/lang/Object;
.source "Easing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/c$a;
    }
.end annotation


# static fields
.field public static b:Lu/c;

.field public static c:[Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lu/c;

    .line 3
    invoke-direct {v0}, Lu/c;-><init>()V

    .line 6
    sput-object v0, Lu/c;->b:Lu/c;

    .line 8
    const-string v0, "standard"

    .line 10
    const-string v1, "accelerate"

    .line 12
    const-string v2, "decelerate"

    .line 14
    const-string v3, "linear"

    .line 16
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lu/c;->c:[Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "identity"

    .line 6
    iput-object v0, p0, Lu/c;->a:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static c(Ljava/lang/String;)Lu/c;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "cubic"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_12

    .line 13
    new-instance v0, Lu/c$a;

    .line 15
    invoke-direct {v0, p0}, Lu/c$a;-><init>(Ljava/lang/String;)V

    .line 18
    return-object v0

    .line 19
    :cond_12
    const-string v0, "spline"

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_20

    .line 27
    new-instance v0, Lu/k;

    .line 29
    invoke-direct {v0, p0}, Lu/k;-><init>(Ljava/lang/String;)V

    .line 32
    return-object v0

    .line 33
    :cond_20
    const-string v0, "Schlick"

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2e

    .line 41
    new-instance v0, Lu/i;

    .line 43
    invoke-direct {v0, p0}, Lu/i;-><init>(Ljava/lang/String;)V

    .line 46
    return-object v0

    .line 47
    :cond_2e
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 50
    const/4 v0, -0x1

    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 54
    move-result v1

    .line 55
    sparse-switch v1, :sswitch_data_ca

    .line 58
    goto :goto_7b

    .line 59
    :sswitch_3a
    const-string v1, "standard"

    .line 61
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result p0

    .line 65
    if-nez p0, :cond_43

    .line 67
    goto :goto_7b

    .line 68
    :cond_43
    const/4 v0, 0x5

    .line 69
    goto :goto_7b

    .line 70
    :sswitch_45
    const-string v1, "overshoot"

    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result p0

    .line 76
    if-nez p0, :cond_4e

    .line 78
    goto :goto_7b

    .line 79
    :cond_4e
    const/4 v0, 0x4

    .line 80
    goto :goto_7b

    .line 81
    :sswitch_50
    const-string v1, "linear"

    .line 83
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result p0

    .line 87
    if-nez p0, :cond_59

    .line 89
    goto :goto_7b

    .line 90
    :cond_59
    const/4 v0, 0x3

    .line 91
    goto :goto_7b

    .line 92
    :sswitch_5b
    const-string v1, "anticipate"

    .line 94
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result p0

    .line 98
    if-nez p0, :cond_64

    .line 100
    goto :goto_7b

    .line 101
    :cond_64
    const/4 v0, 0x2

    .line 102
    goto :goto_7b

    .line 103
    :sswitch_66
    const-string v1, "decelerate"

    .line 105
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result p0

    .line 109
    if-nez p0, :cond_6f

    .line 111
    goto :goto_7b

    .line 112
    :cond_6f
    const/4 v0, 0x1

    .line 113
    goto :goto_7b

    .line 114
    :sswitch_71
    const-string v1, "accelerate"

    .line 116
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result p0

    .line 120
    if-nez p0, :cond_7a

    .line 122
    goto :goto_7b

    .line 123
    :cond_7a
    const/4 v0, 0x0

    .line 124
    :goto_7b
    packed-switch v0, :pswitch_data_e4

    .line 127
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 129
    const-string v0, "transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or "

    .line 131
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    move-result-object v0

    .line 135
    sget-object v1, Lu/c;->c:[Ljava/lang/String;

    .line 137
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    sget-object p0, Lu/c;->b:Lu/c;

    .line 153
    return-object p0

    .line 154
    :pswitch_99  #0x5
    new-instance p0, Lu/c$a;

    .line 156
    const-string v0, "cubic(0.4, 0.0, 0.2, 1)"

    .line 158
    invoke-direct {p0, v0}, Lu/c$a;-><init>(Ljava/lang/String;)V

    .line 161
    return-object p0

    .line 162
    :pswitch_a1  #0x4
    new-instance p0, Lu/c$a;

    .line 164
    const-string v0, "cubic(0.34, 1.56, 0.64, 1)"

    .line 166
    invoke-direct {p0, v0}, Lu/c$a;-><init>(Ljava/lang/String;)V

    .line 169
    return-object p0

    .line 170
    :pswitch_a9  #0x3
    new-instance p0, Lu/c$a;

    .line 172
    const-string v0, "cubic(1, 1, 0, 0)"

    .line 174
    invoke-direct {p0, v0}, Lu/c$a;-><init>(Ljava/lang/String;)V

    .line 177
    return-object p0

    .line 178
    :pswitch_b1  #0x2
    new-instance p0, Lu/c$a;

    .line 180
    const-string v0, "cubic(0.36, 0, 0.66, -0.56)"

    .line 182
    invoke-direct {p0, v0}, Lu/c$a;-><init>(Ljava/lang/String;)V

    .line 185
    return-object p0

    .line 186
    :pswitch_b9  #0x1
    new-instance p0, Lu/c$a;

    .line 188
    const-string v0, "cubic(0.0, 0.0, 0.2, 0.95)"

    .line 190
    invoke-direct {p0, v0}, Lu/c$a;-><init>(Ljava/lang/String;)V

    .line 193
    return-object p0

    .line 194
    :pswitch_c1  #0x0
    new-instance p0, Lu/c$a;

    .line 196
    const-string v0, "cubic(0.4, 0.05, 0.8, 0.7)"

    .line 198
    invoke-direct {p0, v0}, Lu/c$a;-><init>(Ljava/lang/String;)V

    .line 201
    return-object p0

    .line 202
    nop

    .line 203
    :sswitch_data_ca
    .sparse-switch
        -0x50bb8523 -> :sswitch_71
        -0x4b5653c4 -> :sswitch_66
        -0x47620096 -> :sswitch_5b
        -0x41b970db -> :sswitch_50
        -0x2ca5d435 -> :sswitch_45
        0x4e3d1ebd -> :sswitch_3a
    .end sparse-switch

    .line 229
    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_c1  #00000000
        :pswitch_b9  #00000001
        :pswitch_b1  #00000002
        :pswitch_a9  #00000003
        :pswitch_a1  #00000004
        :pswitch_99  #00000005
    .end packed-switch
.end method


# virtual methods
.method public a(D)D
    .registers 3

    return-wide p1
.end method

.method public b(D)D
    .registers 3

    const-wide/high16 p1, 0x3ff0000000000000L  # 1.0

    return-wide p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lu/c;->a:Ljava/lang/String;

    .line 3
    return-object v0
.end method
