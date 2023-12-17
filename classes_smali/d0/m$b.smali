.class public final Ld0/m$b;
.super Ljava/lang/Object;
.source "Person.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public static a(Landroid/app/Person;)Ld0/m;
    .registers 10

    .line 1
    new-instance v0, Ld0/m$c;

    .line 3
    invoke-direct {v0}, Ld0/m$c;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    .line 9
    move-result-object v1

    .line 10
    iput-object v1, v0, Ld0/m$c;->a:Ljava/lang/CharSequence;

    .line 12
    invoke-virtual {p0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_df

    .line 18
    invoke-virtual {p0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    .line 21
    move-result-object v1

    .line 22
    sget-object v2, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    const-string v2, "Unable to get icon type "

    .line 29
    const-string v3, "IconCompat"

    .line 31
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    const/16 v5, 0x1c

    .line 35
    const/4 v6, -0x1

    .line 36
    if-lt v4, v5, :cond_2a

    .line 38
    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat$c;->c(Ljava/lang/Object;)I

    .line 41
    move-result v2

    .line 42
    goto :goto_80

    .line 43
    :cond_2a
    :try_start_2a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    move-result-object v4

    .line 47
    const-string v5, "getType"

    .line 49
    const/4 v7, 0x0

    .line 50
    new-array v8, v7, [Ljava/lang/Class;

    .line 52
    invoke-virtual {v4, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 55
    move-result-object v4

    .line 56
    new-array v5, v7, [Ljava/lang/Object;

    .line 58
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Ljava/lang/Integer;

    .line 64
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 67
    move-result v2
    :try_end_43
    .catch Ljava/lang/IllegalAccessException; {:try_start_2a .. :try_end_43} :catch_6c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2a .. :try_end_43} :catch_58
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2a .. :try_end_43} :catch_44

    .line 68
    goto :goto_80

    .line 69
    :catch_44
    move-exception v4

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 85
    invoke-static {v3, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    goto :goto_7f

    .line 89
    :catch_58
    move-exception v4

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v2

    .line 105
    invoke-static {v3, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    goto :goto_7f

    .line 109
    :catch_6c
    move-exception v4

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v2

    .line 125
    invoke-static {v3, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    :goto_7f
    move v2, v6

    .line 129
    :goto_80
    const/4 v3, 0x2

    .line 130
    if-eq v2, v3, :cond_bd

    .line 132
    const/4 v3, 0x4

    .line 133
    if-eq v2, v3, :cond_a7

    .line 135
    const/4 v3, 0x6

    .line 136
    if-eq v2, v3, :cond_91

    .line 138
    new-instance v2, Landroidx/core/graphics/drawable/IconCompat;

    .line 140
    invoke-direct {v2, v6}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 143
    iput-object v1, v2, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 145
    goto :goto_e0

    .line 146
    :cond_91
    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat$a;->c(Ljava/lang/Object;)Landroid/net/Uri;

    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    new-instance v2, Landroidx/core/graphics/drawable/IconCompat;

    .line 162
    invoke-direct {v2, v3}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 165
    iput-object v1, v2, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 167
    goto :goto_e0

    .line 168
    :cond_a7
    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat$a;->c(Ljava/lang/Object;)Landroid/net/Uri;

    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    new-instance v2, Landroidx/core/graphics/drawable/IconCompat;

    .line 184
    invoke-direct {v2, v3}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 187
    iput-object v1, v2, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 189
    goto :goto_e0

    .line 190
    :cond_bd
    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat$a;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 193
    move-result-object v2

    .line 194
    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat$a;->a(Ljava/lang/Object;)I

    .line 197
    move-result v1

    .line 198
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    if-eqz v1, :cond_d7

    .line 203
    new-instance v4, Landroidx/core/graphics/drawable/IconCompat;

    .line 205
    invoke-direct {v4, v3}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 208
    iput v1, v4, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 210
    iput-object v2, v4, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 212
    iput-object v2, v4, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 214
    move-object v2, v4

    .line 215
    goto :goto_e0

    .line 216
    :cond_d7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 218
    const-string v0, "Drawable resource ID must not be 0"

    .line 220
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 223
    throw p0

    .line 224
    :cond_df
    const/4 v2, 0x0

    .line 225
    :goto_e0
    iput-object v2, v0, Ld0/m$c;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 227
    invoke-virtual {p0}, Landroid/app/Person;->getUri()Ljava/lang/String;

    .line 230
    move-result-object v1

    .line 231
    iput-object v1, v0, Ld0/m$c;->c:Ljava/lang/String;

    .line 233
    invoke-virtual {p0}, Landroid/app/Person;->getKey()Ljava/lang/String;

    .line 236
    move-result-object v1

    .line 237
    iput-object v1, v0, Ld0/m$c;->d:Ljava/lang/String;

    .line 239
    invoke-virtual {p0}, Landroid/app/Person;->isBot()Z

    .line 242
    move-result v1

    .line 243
    iput-boolean v1, v0, Ld0/m$c;->e:Z

    .line 245
    invoke-virtual {p0}, Landroid/app/Person;->isImportant()Z

    .line 248
    move-result p0

    .line 249
    iput-boolean p0, v0, Ld0/m$c;->f:Z

    .line 251
    new-instance p0, Ld0/m;

    .line 253
    invoke-direct {p0, v0}, Ld0/m;-><init>(Ld0/m$c;)V

    .line 256
    return-object p0
.end method

.method public static b(Ld0/m;)Landroid/app/Person;
    .registers 4

    .line 1
    new-instance v0, Landroid/app/Person$Builder;

    .line 3
    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    .line 6
    iget-object v1, p0, Ld0/m;->a:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Ld0/m;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_17

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/IconCompat$a;->e(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 23
    move-result-object v2

    .line 24
    :cond_17
    invoke-virtual {v0, v2}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Ld0/m;->c:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Ld0/m;->d:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    .line 39
    move-result-object v0

    .line 40
    iget-boolean v1, p0, Ld0/m;->e:Z

    .line 42
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setBot(Z)Landroid/app/Person$Builder;

    .line 45
    move-result-object v0

    .line 46
    iget-boolean p0, p0, Ld0/m;->f:Z

    .line 48
    invoke-virtual {v0, p0}, Landroid/app/Person$Builder;->setImportant(Z)Landroid/app/Person$Builder;

    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method
