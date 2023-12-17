.class public final Lg3/a;
.super Ljava/lang/Object;
.source "JvmClassMapping.kt"


# direct methods
.method public static final a(Lm3/c;)Ljava/lang/Class;
    .registers 3
    .param p0  # Lm3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lm3/c<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    check-cast p0, Li3/b;

    .line 8
    invoke-interface {p0}, Li3/b;->a()Ljava/lang/Class;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_12

    .line 18
    return-object p0

    .line 19
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 26
    move-result v1

    .line 27
    sparse-switch v1, :sswitch_data_8e

    .line 30
    goto/16 :goto_8c

    .line 32
    :sswitch_1f
    const-string v1, "short"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_29

    .line 40
    goto/16 :goto_8c

    .line 42
    :cond_29
    const-class p0, Ljava/lang/Short;

    .line 44
    goto/16 :goto_8c

    .line 46
    :sswitch_2d
    const-string v1, "float"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_36

    .line 54
    goto :goto_8c

    .line 55
    :cond_36
    const-class p0, Ljava/lang/Float;

    .line 57
    goto :goto_8c

    .line 58
    :sswitch_39
    const-string v1, "boolean"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_42

    .line 66
    goto :goto_8c

    .line 67
    :cond_42
    const-class p0, Ljava/lang/Boolean;

    .line 69
    goto :goto_8c

    .line 70
    :sswitch_45
    const-string v1, "void"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_4e

    .line 78
    goto :goto_8c

    .line 79
    :cond_4e
    const-class p0, Ljava/lang/Void;

    .line 81
    goto :goto_8c

    .line 82
    :sswitch_51
    const-string v1, "long"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_5a

    .line 90
    goto :goto_8c

    .line 91
    :cond_5a
    const-class p0, Ljava/lang/Long;

    .line 93
    goto :goto_8c

    .line 94
    :sswitch_5d
    const-string v1, "char"

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_66

    .line 102
    goto :goto_8c

    .line 103
    :cond_66
    const-class p0, Ljava/lang/Character;

    .line 105
    goto :goto_8c

    .line 106
    :sswitch_69
    const-string v1, "byte"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_72

    .line 114
    goto :goto_8c

    .line 115
    :cond_72
    const-class p0, Ljava/lang/Byte;

    .line 117
    goto :goto_8c

    .line 118
    :sswitch_75
    const-string v1, "int"

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_7e

    .line 126
    goto :goto_8c

    .line 127
    :cond_7e
    const-class p0, Ljava/lang/Integer;

    .line 129
    goto :goto_8c

    .line 130
    :sswitch_81
    const-string v1, "double"

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_8a

    .line 138
    goto :goto_8c

    .line 139
    :cond_8a
    const-class p0, Ljava/lang/Double;

    .line 141
    :goto_8c
    return-object p0

    .line 142
    nop

    .line 143
    :sswitch_data_8e
    .sparse-switch
        -0x4f08842f -> :sswitch_81
        0x197ef -> :sswitch_75
        0x2e6108 -> :sswitch_69
        0x2e9356 -> :sswitch_5d
        0x32c67c -> :sswitch_51
        0x375194 -> :sswitch_45
        0x3db6c28 -> :sswitch_39
        0x5d0225c -> :sswitch_2d
        0x685847c -> :sswitch_1f
    .end sparse-switch
.end method
