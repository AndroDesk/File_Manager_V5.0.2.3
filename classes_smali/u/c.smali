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

    new-instance v0, Lu/c;

    invoke-direct {v0}, Lu/c;-><init>()V

    sput-object v0, Lu/c;->b:Lu/c;

    const-string v0, "standard"

    const-string v1, "accelerate"

    const-string v2, "decelerate"

    const-string v3, "linear"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu/c;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "identity"

    iput-object v0, p0, Lu/c;->a:Ljava/lang/String;

    return-void
.end method

.method public static c(Ljava/lang/String;)Lu/c;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "cubic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lu/c$a;

    invoke-direct {v0, p0}, Lu/c$a;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_12
    const-string v0, "spline"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Lu/k;

    invoke-direct {v0, p0}, Lu/k;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_20
    const-string v0, "Schlick"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Lu/i;

    invoke-direct {v0, p0}, Lu/i;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2e
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_ca

    goto :goto_7b

    :sswitch_3a
    const-string v1, "standard"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    goto :goto_7b

    :cond_43
    const/4 v0, 0x5

    goto :goto_7b

    :sswitch_45
    const-string v1, "overshoot"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    goto :goto_7b

    :cond_4e
    const/4 v0, 0x4

    goto :goto_7b

    :sswitch_50
    const-string v1, "linear"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    goto :goto_7b

    :cond_59
    const/4 v0, 0x3

    goto :goto_7b

    :sswitch_5b
    const-string v1, "anticipate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_64

    goto :goto_7b

    :cond_64
    const/4 v0, 0x2

    goto :goto_7b

    :sswitch_66
    const-string v1, "decelerate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6f

    goto :goto_7b

    :cond_6f
    const/4 v0, 0x1

    goto :goto_7b

    :sswitch_71
    const-string v1, "accelerate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7a

    goto :goto_7b

    :cond_7a
    const/4 v0, 0x0

    :goto_7b
    packed-switch v0, :pswitch_data_e4

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lu/c;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Lu/c;->b:Lu/c;

    return-object p0

    :pswitch_99  #0x5
    new-instance p0, Lu/c$a;

    const-string v0, "cubic(0.4, 0.0, 0.2, 1)"

    invoke-direct {p0, v0}, Lu/c$a;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_a1  #0x4
    new-instance p0, Lu/c$a;

    const-string v0, "cubic(0.34, 1.56, 0.64, 1)"

    invoke-direct {p0, v0}, Lu/c$a;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_a9  #0x3
    new-instance p0, Lu/c$a;

    const-string v0, "cubic(1, 1, 0, 0)"

    invoke-direct {p0, v0}, Lu/c$a;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_b1  #0x2
    new-instance p0, Lu/c$a;

    const-string v0, "cubic(0.36, 0, 0.66, -0.56)"

    invoke-direct {p0, v0}, Lu/c$a;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_b9  #0x1
    new-instance p0, Lu/c$a;

    const-string v0, "cubic(0.0, 0.0, 0.2, 0.95)"

    invoke-direct {p0, v0}, Lu/c$a;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_c1  #0x0
    new-instance p0, Lu/c$a;

    const-string v0, "cubic(0.4, 0.05, 0.8, 0.7)"

    invoke-direct {p0, v0}, Lu/c$a;-><init>(Ljava/lang/String;)V

    return-object p0

    nop

    :sswitch_data_ca
    .sparse-switch
        -0x50bb8523 -> :sswitch_71
        -0x4b5653c4 -> :sswitch_66
        -0x47620096 -> :sswitch_5b
        -0x41b970db -> :sswitch_50
        -0x2ca5d435 -> :sswitch_45
        0x4e3d1ebd -> :sswitch_3a
    .end sparse-switch

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

    iget-object v0, p0, Lu/c;->a:Ljava/lang/String;

    return-object v0
.end method
