.class public final Landroidx/core/graphics/drawable/IconCompat$a;
.super Ljava/lang/Object;
.source "IconCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/IconCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;)I
    .registers 7

    .line 1
    const-string v0, "Unable to get icon resource"

    .line 3
    const-string v1, "IconCompat"

    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    const/16 v3, 0x1c

    .line 9
    if-lt v2, v3, :cond_f

    .line 11
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$c;->a(Ljava/lang/Object;)I

    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_f
    const/4 v2, 0x0

    .line 17
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    move-result-object v3

    .line 21
    const-string v4, "getResId"

    .line 23
    new-array v5, v2, [Ljava/lang/Class;

    .line 25
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    move-result-object v3

    .line 29
    new-array v4, v2, [Ljava/lang/Object;

    .line 31
    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Ljava/lang/Integer;

    .line 37
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 40
    move-result p0
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_28} :catch_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_28} :catch_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_28} :catch_29

    .line 41
    return p0

    .line 42
    :catch_29
    move-exception p0

    .line 43
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    return v2

    .line 47
    :catch_2e
    move-exception p0

    .line 48
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    return v2

    .line 52
    :catch_33
    move-exception p0

    .line 53
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    return v2
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/String;
    .registers 8

    .line 1
    const-string v0, "Unable to get icon package"

    .line 3
    const-string v1, "IconCompat"

    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    const/16 v3, 0x1c

    .line 9
    if-lt v2, v3, :cond_f

    .line 11
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$c;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_f
    const/4 v2, 0x0

    .line 17
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    move-result-object v3

    .line 21
    const-string v4, "getResPackage"

    .line 23
    const/4 v5, 0x0

    .line 24
    new-array v6, v5, [Ljava/lang/Class;

    .line 26
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    move-result-object v3

    .line 30
    new-array v4, v5, [Ljava/lang/Object;

    .line 32
    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_25} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_25} :catch_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_25} :catch_26

    .line 38
    return-object p0

    .line 39
    :catch_26
    move-exception p0

    .line 40
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    return-object v2

    .line 44
    :catch_2b
    move-exception p0

    .line 45
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    return-object v2

    .line 49
    :catch_30
    move-exception p0

    .line 50
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    return-object v2
.end method

.method public static c(Ljava/lang/Object;)Landroid/net/Uri;
    .registers 8

    .line 1
    const-string v0, "Unable to get icon uri"

    .line 3
    const-string v1, "IconCompat"

    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    const/16 v3, 0x1c

    .line 9
    if-lt v2, v3, :cond_f

    .line 11
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$c;->d(Ljava/lang/Object;)Landroid/net/Uri;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_f
    const/4 v2, 0x0

    .line 17
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    move-result-object v3

    .line 21
    const-string v4, "getUri"

    .line 23
    const/4 v5, 0x0

    .line 24
    new-array v6, v5, [Ljava/lang/Class;

    .line 26
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    move-result-object v3

    .line 30
    new-array v4, v5, [Ljava/lang/Object;

    .line 32
    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroid/net/Uri;
    :try_end_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_25} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_25} :catch_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_25} :catch_26

    .line 38
    return-object p0

    .line 39
    :catch_26
    move-exception p0

    .line 40
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    return-object v2

    .line 44
    :catch_2b
    move-exception p0

    .line 45
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    return-object v2

    .line 49
    :catch_30
    move-exception p0

    .line 50
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    return-object v2
.end method

.method public static d(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static e(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;
    .registers 6

    .line 1
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x1a

    .line 6
    packed-switch v0, :pswitch_data_c8

    .line 9
    :pswitch_8  #0x0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 11
    const-string p1, "Unknown type"

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p0

    .line 17
    :pswitch_10  #0x6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    const/16 v3, 0x1e

    .line 21
    if-lt v0, v3, :cond_20

    .line 23
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->c()Landroid/net/Uri;

    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$d;->a(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    .line 30
    move-result-object p1

    .line 31
    goto/16 :goto_b2

    .line 33
    :cond_20
    if-eqz p1, :cond_58

    .line 35
    invoke-virtual {p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->d(Landroid/content/Context;)Ljava/io/InputStream;

    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_41

    .line 41
    if-lt v0, v2, :cond_34

    .line 43
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$b;->b(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 50
    move-result-object p1

    .line 51
    goto/16 :goto_b2

    .line 53
    :cond_34
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1, v1}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 64
    move-result-object p1

    .line 65
    goto :goto_b2

    .line 66
    :cond_41
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 68
    const-string v0, "Cannot load adaptive icon from uri: "

    .line 70
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->c()Landroid/net/Uri;

    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p1

    .line 89
    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 91
    const-string v0, "Context is required to resolve the file uri of the icon: "

    .line 93
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->c()Landroid/net/Uri;

    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p0

    .line 108
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    throw p1

    .line 112
    :pswitch_6f  #0x5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 114
    if-lt p1, v2, :cond_7c

    .line 116
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 118
    check-cast p1, Landroid/graphics/Bitmap;

    .line 120
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$b;->b(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 123
    move-result-object p1

    .line 124
    goto :goto_b2

    .line 125
    :cond_7c
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 127
    check-cast p1, Landroid/graphics/Bitmap;

    .line 129
    invoke-static {p1, v1}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 132
    move-result-object p1

    .line 133
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 136
    move-result-object p1

    .line 137
    goto :goto_b2

    .line 138
    :pswitch_89  #0x4
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 140
    check-cast p1, Ljava/lang/String;

    .line 142
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    .line 145
    move-result-object p1

    .line 146
    goto :goto_b2

    .line 147
    :pswitch_92  #0x3
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 149
    check-cast p1, [B

    .line 151
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 153
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 155
    invoke-static {p1, v0, v1}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    .line 158
    move-result-object p1

    .line 159
    goto :goto_b2

    .line 160
    :pswitch_9f  #0x2
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->b()Ljava/lang/String;

    .line 163
    move-result-object p1

    .line 164
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 166
    invoke-static {p1, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 169
    move-result-object p1

    .line 170
    goto :goto_b2

    .line 171
    :pswitch_aa  #0x1
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 173
    check-cast p1, Landroid/graphics/Bitmap;

    .line 175
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 178
    move-result-object p1

    .line 179
    :goto_b2
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 181
    if-eqz v0, :cond_b9

    .line 183
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    .line 186
    :cond_b9
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    .line 188
    sget-object v0, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    .line 190
    if-eq p0, v0, :cond_c2

    .line 192
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Icon;->setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Icon;

    .line 195
    :cond_c2
    return-object p1

    .line 196
    :pswitch_c3  #0xffffffff
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 198
    check-cast p0, Landroid/graphics/drawable/Icon;

    .line 200
    return-object p0

    .line 201
    :pswitch_data_c8
    .packed-switch -0x1
        :pswitch_c3  #ffffffff
        :pswitch_8  #00000000
        :pswitch_aa  #00000001
        :pswitch_9f  #00000002
        :pswitch_92  #00000003
        :pswitch_89  #00000004
        :pswitch_6f  #00000005
        :pswitch_10  #00000006
    .end packed-switch
.end method
