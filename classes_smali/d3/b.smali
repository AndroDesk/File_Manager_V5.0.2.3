.class public final Ld3/b;
.super Ljava/lang/Object;
.source "PlatformImplementations.kt"


# static fields
.field public static final a:Ld3/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 1
    const-string v0, ", base type classloader: "

    .line 3
    const-string v1, "Instance class was loaded from a different classloader: "

    .line 5
    const-class v2, Ld3/a;

    .line 7
    const-string v3, "forName(\"kotlin.internal…entations\").newInstance()"

    .line 9
    :try_start_8
    const-class v4, Lf3/a;

    .line 11
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 14
    move-result-object v4

    .line 15
    invoke-static {v4, v3}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_11} :catch_44

    .line 18
    :try_start_11
    check-cast v4, Ld3/a;
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_13} :catch_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_13} :catch_44

    .line 20
    goto/16 :goto_103

    .line 22
    :catch_15
    move-exception v5

    .line 23
    :try_start_16
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 34
    move-result-object v6

    .line 35
    invoke-static {v4, v6}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v7

    .line 39
    if-nez v7, :cond_43

    .line 41
    new-instance v7, Ljava/lang/ClassNotFoundException;

    .line 43
    new-instance v8, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v4

    .line 64
    invoke-direct {v7, v4, v5}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    throw v7

    .line 68
    :cond_43
    throw v5
    :try_end_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_44} :catch_44

    .line 69
    :catch_44
    :try_start_44
    const-string v4, "kotlin.internal.JRE8PlatformImplementations"

    .line 71
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 78
    move-result-object v4

    .line 79
    invoke-static {v4, v3}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/ClassNotFoundException; {:try_start_44 .. :try_end_51} :catch_84

    .line 82
    :try_start_51
    check-cast v4, Ld3/a;
    :try_end_53
    .catch Ljava/lang/ClassCastException; {:try_start_51 .. :try_end_53} :catch_55
    .catch Ljava/lang/ClassNotFoundException; {:try_start_51 .. :try_end_53} :catch_84

    .line 84
    goto/16 :goto_103

    .line 86
    :catch_55
    move-exception v5

    .line 87
    :try_start_56
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 98
    move-result-object v6

    .line 99
    invoke-static {v4, v6}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    move-result v7

    .line 103
    if-nez v7, :cond_83

    .line 105
    new-instance v7, Ljava/lang/ClassNotFoundException;

    .line 107
    new-instance v8, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v4

    .line 128
    invoke-direct {v7, v4, v5}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    throw v7

    .line 132
    :cond_83
    throw v5
    :try_end_84
    .catch Ljava/lang/ClassNotFoundException; {:try_start_56 .. :try_end_84} :catch_84

    .line 133
    :catch_84
    :try_start_84
    const-class v4, Le3/a;

    .line 135
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 138
    move-result-object v4

    .line 139
    invoke-static {v4, v3}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_84 .. :try_end_8d} :catch_bf

    .line 142
    :try_start_8d
    check-cast v4, Ld3/a;
    :try_end_8f
    .catch Ljava/lang/ClassCastException; {:try_start_8d .. :try_end_8f} :catch_90
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8d .. :try_end_8f} :catch_bf

    .line 144
    goto :goto_103

    .line 145
    :catch_90
    move-exception v5

    .line 146
    :try_start_91
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 157
    move-result-object v6

    .line 158
    invoke-static {v4, v6}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    move-result v7

    .line 162
    if-nez v7, :cond_be

    .line 164
    new-instance v7, Ljava/lang/ClassNotFoundException;

    .line 166
    new-instance v8, Ljava/lang/StringBuilder;

    .line 168
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v4

    .line 187
    invoke-direct {v7, v4, v5}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    throw v7

    .line 191
    :cond_be
    throw v5
    :try_end_bf
    .catch Ljava/lang/ClassNotFoundException; {:try_start_91 .. :try_end_bf} :catch_bf

    .line 192
    :catch_bf
    :try_start_bf
    const-string v4, "kotlin.internal.JRE7PlatformImplementations"

    .line 194
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 197
    move-result-object v4

    .line 198
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 201
    move-result-object v4

    .line 202
    invoke-static {v4, v3}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_cc
    .catch Ljava/lang/ClassNotFoundException; {:try_start_bf .. :try_end_cc} :catch_fe

    .line 205
    :try_start_cc
    check-cast v4, Ld3/a;
    :try_end_ce
    .catch Ljava/lang/ClassCastException; {:try_start_cc .. :try_end_ce} :catch_cf
    .catch Ljava/lang/ClassNotFoundException; {:try_start_cc .. :try_end_ce} :catch_fe

    .line 207
    goto :goto_103

    .line 208
    :catch_cf
    move-exception v3

    .line 209
    :try_start_d0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 220
    move-result-object v2

    .line 221
    invoke-static {v4, v2}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    move-result v5

    .line 225
    if-nez v5, :cond_fd

    .line 227
    new-instance v5, Ljava/lang/ClassNotFoundException;

    .line 229
    new-instance v6, Ljava/lang/StringBuilder;

    .line 231
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    move-result-object v0

    .line 250
    invoke-direct {v5, v0, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    throw v5

    .line 254
    :cond_fd
    throw v3
    :try_end_fe
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d0 .. :try_end_fe} :catch_fe

    .line 255
    :catch_fe
    new-instance v4, Ld3/a;

    .line 257
    invoke-direct {v4}, Ld3/a;-><init>()V

    .line 260
    :goto_103
    sput-object v4, Ld3/b;->a:Ld3/a;

    .line 262
    return-void
.end method
