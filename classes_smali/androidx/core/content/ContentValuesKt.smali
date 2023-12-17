.class public final Landroidx/core/content/ContentValuesKt;
.super Ljava/lang/Object;
.source "ContentValues.kt"


# direct methods
.method public static final varargs contentValuesOf([Lkotlin/Pair;)Landroid/content/ContentValues;
    .registers 7
    .param p0  # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "pairs"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Landroid/content/ContentValues;

    .line 8
    array-length v1, p0

    .line 9
    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 12
    array-length v1, p0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_d
    if-ge v2, v1, :cond_a9

    .line 16
    aget-object v3, p0, v2

    .line 18
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Ljava/lang/String;

    .line 24
    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    if-nez v3, :cond_21

    .line 30
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 33
    goto :goto_7a

    .line 34
    :cond_21
    instance-of v5, v3, Ljava/lang/String;

    .line 36
    if-eqz v5, :cond_2b

    .line 38
    check-cast v3, Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    goto :goto_7a

    .line 44
    :cond_2b
    instance-of v5, v3, Ljava/lang/Integer;

    .line 46
    if-eqz v5, :cond_35

    .line 48
    check-cast v3, Ljava/lang/Integer;

    .line 50
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    goto :goto_7a

    .line 54
    :cond_35
    instance-of v5, v3, Ljava/lang/Long;

    .line 56
    if-eqz v5, :cond_3f

    .line 58
    check-cast v3, Ljava/lang/Long;

    .line 60
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 63
    goto :goto_7a

    .line 64
    :cond_3f
    instance-of v5, v3, Ljava/lang/Boolean;

    .line 66
    if-eqz v5, :cond_49

    .line 68
    check-cast v3, Ljava/lang/Boolean;

    .line 70
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 73
    goto :goto_7a

    .line 74
    :cond_49
    instance-of v5, v3, Ljava/lang/Float;

    .line 76
    if-eqz v5, :cond_53

    .line 78
    check-cast v3, Ljava/lang/Float;

    .line 80
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 83
    goto :goto_7a

    .line 84
    :cond_53
    instance-of v5, v3, Ljava/lang/Double;

    .line 86
    if-eqz v5, :cond_5d

    .line 88
    check-cast v3, Ljava/lang/Double;

    .line 90
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 93
    goto :goto_7a

    .line 94
    :cond_5d
    instance-of v5, v3, [B

    .line 96
    if-eqz v5, :cond_67

    .line 98
    check-cast v3, [B

    .line 100
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 103
    goto :goto_7a

    .line 104
    :cond_67
    instance-of v5, v3, Ljava/lang/Byte;

    .line 106
    if-eqz v5, :cond_71

    .line 108
    check-cast v3, Ljava/lang/Byte;

    .line 110
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 113
    goto :goto_7a

    .line 114
    :cond_71
    instance-of v5, v3, Ljava/lang/Short;

    .line 116
    if-eqz v5, :cond_7d

    .line 118
    check-cast v3, Ljava/lang/Short;

    .line 120
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 123
    :goto_7a
    add-int/lit8 v2, v2, 0x1

    .line 125
    goto :goto_d

    .line 126
    :cond_7d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 133
    move-result-object p0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    const-string v2, "Illegal value type "

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string p0, " for key \""

    .line 151
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const/16 p0, 0x22

    .line 159
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object p0

    .line 166
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 169
    throw v0

    .line 170
    :cond_a9
    return-object v0
.end method
