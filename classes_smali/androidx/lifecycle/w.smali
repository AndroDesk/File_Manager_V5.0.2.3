.class public final Landroidx/lifecycle/w;
.super Ljava/lang/Object;
.source "SavedStateHandle.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/w$a;
    }
.end annotation


# static fields
.field public static final f:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/LinkedHashMap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/LinkedHashMap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/util/LinkedHashMap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/util/LinkedHashMap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/v;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/16 v0, 0x1d

    .line 3
    new-array v0, v0, [Ljava/lang/Class;

    .line 5
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 10
    const/4 v1, 0x1

    .line 11
    const-class v2, [Z

    .line 13
    aput-object v2, v0, v1

    .line 15
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 20
    const/4 v1, 0x3

    .line 21
    const-class v2, [D

    .line 23
    aput-object v2, v0, v1

    .line 25
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 30
    const/4 v1, 0x5

    .line 31
    const-class v2, [I

    .line 33
    aput-object v2, v0, v1

    .line 35
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 40
    const/4 v1, 0x7

    .line 41
    const-class v2, [J

    .line 43
    aput-object v2, v0, v1

    .line 45
    const/16 v1, 0x8

    .line 47
    const-class v2, Ljava/lang/String;

    .line 49
    aput-object v2, v0, v1

    .line 51
    const/16 v1, 0x9

    .line 53
    const-class v2, [Ljava/lang/String;

    .line 55
    aput-object v2, v0, v1

    .line 57
    const/16 v1, 0xa

    .line 59
    const-class v2, Landroid/os/Binder;

    .line 61
    aput-object v2, v0, v1

    .line 63
    const/16 v1, 0xb

    .line 65
    const-class v2, Landroid/os/Bundle;

    .line 67
    aput-object v2, v0, v1

    .line 69
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 71
    const/16 v2, 0xc

    .line 73
    aput-object v1, v0, v2

    .line 75
    const/16 v1, 0xd

    .line 77
    const-class v2, [B

    .line 79
    aput-object v2, v0, v1

    .line 81
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 83
    const/16 v2, 0xe

    .line 85
    aput-object v1, v0, v2

    .line 87
    const/16 v1, 0xf

    .line 89
    const-class v2, [C

    .line 91
    aput-object v2, v0, v1

    .line 93
    const/16 v1, 0x10

    .line 95
    const-class v2, Ljava/lang/CharSequence;

    .line 97
    aput-object v2, v0, v1

    .line 99
    const/16 v1, 0x11

    .line 101
    const-class v2, [Ljava/lang/CharSequence;

    .line 103
    aput-object v2, v0, v1

    .line 105
    const/16 v1, 0x12

    .line 107
    const-class v2, Ljava/util/ArrayList;

    .line 109
    aput-object v2, v0, v1

    .line 111
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 113
    const/16 v2, 0x13

    .line 115
    aput-object v1, v0, v2

    .line 117
    const/16 v1, 0x14

    .line 119
    const-class v2, [F

    .line 121
    aput-object v2, v0, v1

    .line 123
    const/16 v1, 0x15

    .line 125
    const-class v2, Landroid/os/Parcelable;

    .line 127
    aput-object v2, v0, v1

    .line 129
    const/16 v1, 0x16

    .line 131
    const-class v2, [Landroid/os/Parcelable;

    .line 133
    aput-object v2, v0, v1

    .line 135
    const/16 v1, 0x17

    .line 137
    const-class v2, Ljava/io/Serializable;

    .line 139
    aput-object v2, v0, v1

    .line 141
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 143
    const/16 v2, 0x18

    .line 145
    aput-object v1, v0, v2

    .line 147
    const/16 v1, 0x19

    .line 149
    const-class v2, [S

    .line 151
    aput-object v2, v0, v1

    .line 153
    const/16 v1, 0x1a

    .line 155
    const-class v2, Landroid/util/SparseArray;

    .line 157
    aput-object v2, v0, v1

    .line 159
    const-class v1, Landroid/util/Size;

    .line 161
    const/16 v2, 0x1b

    .line 163
    aput-object v1, v0, v2

    .line 165
    const/16 v1, 0x1c

    .line 167
    const-class v2, Landroid/util/SizeF;

    .line 169
    aput-object v2, v0, v1

    .line 171
    sput-object v0, Landroidx/lifecycle/w;->f:[Ljava/lang/Class;

    .line 173
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/w;->a:Ljava/util/LinkedHashMap;

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/w;->b:Ljava/util/LinkedHashMap;

    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/w;->c:Ljava/util/LinkedHashMap;

    .line 12
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/w;->d:Ljava/util/LinkedHashMap;

    .line 13
    new-instance v0, Landroidx/lifecycle/v;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/w;I)V

    iput-object v0, p0, Landroidx/lifecycle/w;->e:Landroidx/lifecycle/v;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .registers 5
    .param p1  # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/w;->a:Ljava/util/LinkedHashMap;

    .line 3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/lifecycle/w;->b:Ljava/util/LinkedHashMap;

    .line 4
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/lifecycle/w;->c:Ljava/util/LinkedHashMap;

    .line 5
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/lifecycle/w;->d:Ljava/util/LinkedHashMap;

    .line 6
    new-instance v1, Landroidx/lifecycle/v;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/w;I)V

    iput-object v1, p0, Landroidx/lifecycle/w;->e:Landroidx/lifecycle/v;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static a(Landroidx/lifecycle/w;)Landroid/os/Bundle;
    .registers 11

    .line 1
    const-string v0, "this$0"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Landroidx/lifecycle/w;->b:Ljava/util/LinkedHashMap;

    .line 8
    const-string v1, "<this>"

    .line 10
    invoke-static {v0, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v1, :cond_20

    .line 20
    if-eq v1, v2, :cond_1b

    .line 22
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 24
    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 27
    goto :goto_24

    .line 28
    :cond_1b
    invoke-static {v0}, Lz2/c;->c(Ljava/util/LinkedHashMap;)Ljava/util/Map;

    .line 31
    move-result-object v1

    .line 32
    goto :goto_24

    .line 33
    :cond_20
    invoke-static {}, Lkotlin/collections/a;->d()Ljava/util/Map;

    .line 36
    move-result-object v1

    .line 37
    :goto_24
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v0

    .line 45
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v1

    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v4, 0x0

    .line 51
    if-eqz v1, :cond_b5

    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Ljava/lang/String;

    .line 65
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lc1/c$b;

    .line 71
    invoke-interface {v1}, Lc1/c$b;->saveState()Landroid/os/Bundle;

    .line 74
    move-result-object v1

    .line 75
    const-string v6, "key"

    .line 77
    invoke-static {v5, v6}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    if-nez v1, :cond_52

    .line 82
    goto :goto_64

    .line 83
    :cond_52
    sget-object v6, Landroidx/lifecycle/w;->f:[Ljava/lang/Class;

    .line 85
    const/16 v7, 0x1d

    .line 87
    move v8, v4

    .line 88
    :goto_57
    if-ge v8, v7, :cond_69

    .line 90
    aget-object v9, v6, v8

    .line 92
    invoke-static {v9}, Li3/g;->b(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v9, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 98
    move-result v9

    .line 99
    if-eqz v9, :cond_66

    .line 101
    :goto_64
    move v4, v2

    .line 102
    goto :goto_69

    .line 103
    :cond_66
    add-int/lit8 v8, v8, 0x1

    .line 105
    goto :goto_57

    .line 106
    :cond_69
    :goto_69
    if-eqz v4, :cond_92

    .line 108
    iget-object v4, p0, Landroidx/lifecycle/w;->c:Ljava/util/LinkedHashMap;

    .line 110
    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    move-result-object v4

    .line 114
    instance-of v6, v4, Landroidx/lifecycle/q;

    .line 116
    if-eqz v6, :cond_78

    .line 118
    move-object v3, v4

    .line 119
    check-cast v3, Landroidx/lifecycle/q;

    .line 121
    :cond_78
    if-eqz v3, :cond_7e

    .line 123
    invoke-virtual {v3, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 126
    goto :goto_83

    .line 127
    :cond_7e
    iget-object v3, p0, Landroidx/lifecycle/w;->a:Ljava/util/LinkedHashMap;

    .line 129
    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :goto_83
    iget-object v1, p0, Landroidx/lifecycle/w;->d:Ljava/util/LinkedHashMap;

    .line 134
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Ls3/c;

    .line 140
    if-nez v1, :cond_8e

    .line 142
    goto :goto_2c

    .line 143
    :cond_8e
    invoke-interface {v1}, Ls3/c;->d()V

    .line 146
    goto :goto_2c

    .line 147
    :cond_92
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    .line 151
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    const-string v2, "Can\'t put value with type "

    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {v1}, Li3/g;->b(Ljava/lang/Object;)V

    .line 162
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, " into saved state"

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object v0

    .line 178
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 181
    throw p0

    .line 182
    :cond_b5
    iget-object v0, p0, Landroidx/lifecycle/w;->a:Ljava/util/LinkedHashMap;

    .line 184
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 187
    move-result-object v0

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    .line 190
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 193
    move-result v5

    .line 194
    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    new-instance v5, Ljava/util/ArrayList;

    .line 199
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 202
    move-result v6

    .line 203
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 209
    move-result-object v0

    .line 210
    :goto_d1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    move-result v6

    .line 214
    if-eqz v6, :cond_ea

    .line 216
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    move-result-object v6

    .line 220
    check-cast v6, Ljava/lang/String;

    .line 222
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v7, p0, Landroidx/lifecycle/w;->a:Ljava/util/LinkedHashMap;

    .line 227
    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    move-result-object v6

    .line 231
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    goto :goto_d1

    .line 235
    :cond_ea
    const/4 p0, 0x2

    .line 236
    new-array v0, p0, [Lkotlin/Pair;

    .line 238
    new-instance v6, Lkotlin/Pair;

    .line 240
    const-string v7, "keys"

    .line 242
    invoke-direct {v6, v7, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    aput-object v6, v0, v4

    .line 247
    new-instance v1, Lkotlin/Pair;

    .line 249
    const-string v6, "values"

    .line 251
    invoke-direct {v1, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 254
    aput-object v1, v0, v2

    .line 256
    new-instance v1, Landroid/os/Bundle;

    .line 258
    invoke-direct {v1, p0}, Landroid/os/Bundle;-><init>(I)V

    .line 261
    :goto_104
    if-ge v4, p0, :cond_2cd

    .line 263
    aget-object v2, v0, v4

    .line 265
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 268
    move-result-object v5

    .line 269
    check-cast v5, Ljava/lang/String;

    .line 271
    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 274
    move-result-object v2

    .line 275
    if-nez v2, :cond_119

    .line 277
    invoke-virtual {v1, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    goto/16 :goto_2a1

    .line 282
    :cond_119
    instance-of v6, v2, Ljava/lang/Boolean;

    .line 284
    if-eqz v6, :cond_128

    .line 286
    check-cast v2, Ljava/lang/Boolean;

    .line 288
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 291
    move-result v2

    .line 292
    invoke-virtual {v1, v5, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 295
    goto/16 :goto_2a1

    .line 297
    :cond_128
    instance-of v6, v2, Ljava/lang/Byte;

    .line 299
    if-eqz v6, :cond_137

    .line 301
    check-cast v2, Ljava/lang/Number;

    .line 303
    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    .line 306
    move-result v2

    .line 307
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 310
    goto/16 :goto_2a1

    .line 312
    :cond_137
    instance-of v6, v2, Ljava/lang/Character;

    .line 314
    if-eqz v6, :cond_146

    .line 316
    check-cast v2, Ljava/lang/Character;

    .line 318
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    .line 321
    move-result v2

    .line 322
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 325
    goto/16 :goto_2a1

    .line 327
    :cond_146
    instance-of v6, v2, Ljava/lang/Double;

    .line 329
    if-eqz v6, :cond_155

    .line 331
    check-cast v2, Ljava/lang/Number;

    .line 333
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 336
    move-result-wide v6

    .line 337
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 340
    goto/16 :goto_2a1

    .line 342
    :cond_155
    instance-of v6, v2, Ljava/lang/Float;

    .line 344
    if-eqz v6, :cond_164

    .line 346
    check-cast v2, Ljava/lang/Number;

    .line 348
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 351
    move-result v2

    .line 352
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 355
    goto/16 :goto_2a1

    .line 357
    :cond_164
    instance-of v6, v2, Ljava/lang/Integer;

    .line 359
    if-eqz v6, :cond_173

    .line 361
    check-cast v2, Ljava/lang/Number;

    .line 363
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 366
    move-result v2

    .line 367
    invoke-virtual {v1, v5, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 370
    goto/16 :goto_2a1

    .line 372
    :cond_173
    instance-of v6, v2, Ljava/lang/Long;

    .line 374
    if-eqz v6, :cond_182

    .line 376
    check-cast v2, Ljava/lang/Number;

    .line 378
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 381
    move-result-wide v6

    .line 382
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 385
    goto/16 :goto_2a1

    .line 387
    :cond_182
    instance-of v6, v2, Ljava/lang/Short;

    .line 389
    if-eqz v6, :cond_191

    .line 391
    check-cast v2, Ljava/lang/Number;

    .line 393
    invoke-virtual {v2}, Ljava/lang/Number;->shortValue()S

    .line 396
    move-result v2

    .line 397
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 400
    goto/16 :goto_2a1

    .line 402
    :cond_191
    instance-of v6, v2, Landroid/os/Bundle;

    .line 404
    if-eqz v6, :cond_19c

    .line 406
    check-cast v2, Landroid/os/Bundle;

    .line 408
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 411
    goto/16 :goto_2a1

    .line 413
    :cond_19c
    instance-of v6, v2, Ljava/lang/CharSequence;

    .line 415
    if-eqz v6, :cond_1a7

    .line 417
    check-cast v2, Ljava/lang/CharSequence;

    .line 419
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 422
    goto/16 :goto_2a1

    .line 424
    :cond_1a7
    instance-of v6, v2, Landroid/os/Parcelable;

    .line 426
    if-eqz v6, :cond_1b2

    .line 428
    check-cast v2, Landroid/os/Parcelable;

    .line 430
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 433
    goto/16 :goto_2a1

    .line 435
    :cond_1b2
    instance-of v6, v2, [Z

    .line 437
    if-eqz v6, :cond_1bd

    .line 439
    check-cast v2, [Z

    .line 441
    invoke-virtual {v1, v5, v2}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 444
    goto/16 :goto_2a1

    .line 446
    :cond_1bd
    instance-of v6, v2, [B

    .line 448
    if-eqz v6, :cond_1c8

    .line 450
    check-cast v2, [B

    .line 452
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 455
    goto/16 :goto_2a1

    .line 457
    :cond_1c8
    instance-of v6, v2, [C

    .line 459
    if-eqz v6, :cond_1d3

    .line 461
    check-cast v2, [C

    .line 463
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    .line 466
    goto/16 :goto_2a1

    .line 468
    :cond_1d3
    instance-of v6, v2, [D

    .line 470
    if-eqz v6, :cond_1de

    .line 472
    check-cast v2, [D

    .line 474
    invoke-virtual {v1, v5, v2}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 477
    goto/16 :goto_2a1

    .line 479
    :cond_1de
    instance-of v6, v2, [F

    .line 481
    if-eqz v6, :cond_1e9

    .line 483
    check-cast v2, [F

    .line 485
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 488
    goto/16 :goto_2a1

    .line 490
    :cond_1e9
    instance-of v6, v2, [I

    .line 492
    if-eqz v6, :cond_1f4

    .line 494
    check-cast v2, [I

    .line 496
    invoke-virtual {v1, v5, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 499
    goto/16 :goto_2a1

    .line 501
    :cond_1f4
    instance-of v6, v2, [J

    .line 503
    if-eqz v6, :cond_1ff

    .line 505
    check-cast v2, [J

    .line 507
    invoke-virtual {v1, v5, v2}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 510
    goto/16 :goto_2a1

    .line 512
    :cond_1ff
    instance-of v6, v2, [S

    .line 514
    if-eqz v6, :cond_20a

    .line 516
    check-cast v2, [S

    .line 518
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    .line 521
    goto/16 :goto_2a1

    .line 523
    :cond_20a
    instance-of v6, v2, [Ljava/lang/Object;

    .line 525
    const/16 v7, 0x22

    .line 527
    const-string v8, " for key \""

    .line 529
    if-eqz v6, :cond_27a

    .line 531
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    move-result-object v6

    .line 535
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 538
    move-result-object v6

    .line 539
    invoke-static {v6}, Li3/g;->b(Ljava/lang/Object;)V

    .line 542
    const-class v9, Landroid/os/Parcelable;

    .line 544
    invoke-virtual {v9, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 547
    move-result v9

    .line 548
    if-eqz v9, :cond_22c

    .line 550
    check-cast v2, [Landroid/os/Parcelable;

    .line 552
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 555
    goto/16 :goto_2a1

    .line 557
    :cond_22c
    const-class v9, Ljava/lang/String;

    .line 559
    invoke-virtual {v9, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 562
    move-result v9

    .line 563
    if-eqz v9, :cond_23a

    .line 565
    check-cast v2, [Ljava/lang/String;

    .line 567
    invoke-virtual {v1, v5, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 570
    goto :goto_2a1

    .line 571
    :cond_23a
    const-class v9, Ljava/lang/CharSequence;

    .line 573
    invoke-virtual {v9, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 576
    move-result v9

    .line 577
    if-eqz v9, :cond_248

    .line 579
    check-cast v2, [Ljava/lang/CharSequence;

    .line 581
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 584
    goto :goto_2a1

    .line 585
    :cond_248
    const-class v9, Ljava/io/Serializable;

    .line 587
    invoke-virtual {v9, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 590
    move-result v9

    .line 591
    if-eqz v9, :cond_256

    .line 593
    check-cast v2, Ljava/io/Serializable;

    .line 595
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 598
    goto :goto_2a1

    .line 599
    :cond_256
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 602
    move-result-object p0

    .line 603
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    .line 607
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    const-string v2, "Illegal value array type "

    .line 612
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 630
    move-result-object p0

    .line 631
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 634
    throw v0

    .line 635
    :cond_27a
    instance-of v6, v2, Ljava/io/Serializable;

    .line 637
    if-eqz v6, :cond_284

    .line 639
    check-cast v2, Ljava/io/Serializable;

    .line 641
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 644
    goto :goto_2a1

    .line 645
    :cond_284
    instance-of v6, v2, Landroid/os/IBinder;

    .line 647
    if-eqz v6, :cond_28e

    .line 649
    check-cast v2, Landroid/os/IBinder;

    .line 651
    invoke-static {v1, v5, v2}, Li0/b;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 654
    goto :goto_2a1

    .line 655
    :cond_28e
    instance-of v6, v2, Landroid/util/Size;

    .line 657
    if-eqz v6, :cond_298

    .line 659
    check-cast v2, Landroid/util/Size;

    .line 661
    invoke-static {v1, v5, v2}, Li0/c;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/Size;)V

    .line 664
    goto :goto_2a1

    .line 665
    :cond_298
    instance-of v6, v2, Landroid/util/SizeF;

    .line 667
    if-eqz v6, :cond_2a5

    .line 669
    check-cast v2, Landroid/util/SizeF;

    .line 671
    invoke-static {v1, v5, v2}, Li0/c;->b(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/SizeF;)V

    .line 674
    :goto_2a1
    add-int/lit8 v4, v4, 0x1

    .line 676
    goto/16 :goto_104

    .line 678
    :cond_2a5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 681
    move-result-object p0

    .line 682
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 685
    move-result-object p0

    .line 686
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    .line 690
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 693
    const-string v2, "Illegal value type "

    .line 695
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 713
    move-result-object p0

    .line 714
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 717
    throw v0

    .line 718
    :cond_2cd
    return-object v1
.end method
