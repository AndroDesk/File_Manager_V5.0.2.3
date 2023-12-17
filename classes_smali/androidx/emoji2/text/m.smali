.class public final synthetic Landroidx/emoji2/text/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/emoji2/text/l$b;


# direct methods
.method public synthetic constructor <init>(Landroidx/emoji2/text/l$b;I)V
    .registers 3

    .line 1
    iput p2, p0, Landroidx/emoji2/text/m;->a:I

    .line 3
    iput-object p1, p0, Landroidx/emoji2/text/m;->b:Landroidx/emoji2/text/l$b;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    iget v0, p0, Landroidx/emoji2/text/m;->a:I

    .line 3
    packed-switch v0, :pswitch_data_c2

    .line 6
    goto/16 :goto_bb

    .line 8
    :pswitch_7  #0x0
    iget-object v0, p0, Landroidx/emoji2/text/m;->b:Landroidx/emoji2/text/l$b;

    .line 10
    iget-object v1, v0, Landroidx/emoji2/text/l$b;->d:Ljava/lang/Object;

    .line 12
    monitor-enter v1

    .line 13
    :try_start_c
    iget-object v2, v0, Landroidx/emoji2/text/l$b;->h:Landroidx/emoji2/text/f$h;

    .line 15
    if-nez v2, :cond_13

    .line 17
    monitor-exit v1

    .line 18
    goto/16 :goto_b4

    .line 20
    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_b8

    .line 21
    :try_start_14
    invoke-virtual {v0}, Landroidx/emoji2/text/l$b;->d()Lj0/m;

    .line 24
    move-result-object v1

    .line 25
    iget v2, v1, Lj0/m;->e:I

    .line 27
    const/4 v3, 0x2

    .line 28
    if-ne v2, v3, :cond_25

    .line 30
    iget-object v3, v0, Landroidx/emoji2/text/l$b;->d:Ljava/lang/Object;

    .line 32
    monitor-enter v3
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_a5

    .line 33
    :try_start_20
    monitor-exit v3

    .line 34
    goto :goto_25

    .line 35
    :catchall_22
    move-exception v1

    .line 36
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_22

    .line 37
    :try_start_24
    throw v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_a5

    .line 38
    :cond_25
    :goto_25
    if-nez v2, :cond_89

    .line 40
    :try_start_27
    const-string v2, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    .line 42
    sget v3, Li0/i;->a:I

    .line 44
    invoke-static {v2}, Li0/i$a;->a(Ljava/lang/String;)V

    .line 47
    iget-object v2, v0, Landroidx/emoji2/text/l$b;->c:Landroidx/emoji2/text/l$a;

    .line 49
    iget-object v3, v0, Landroidx/emoji2/text/l$b;->a:Landroid/content/Context;

    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    const/4 v2, 0x1

    .line 55
    new-array v2, v2, [Lj0/m;

    .line 57
    const/4 v4, 0x0

    .line 58
    aput-object v1, v2, v4

    .line 60
    sget-object v5, Lf0/i;->a:Lf0/p;

    .line 62
    invoke-virtual {v5, v3, v2, v4}, Lf0/p;->b(Landroid/content/Context;[Lj0/m;I)Landroid/graphics/Typeface;

    .line 65
    move-result-object v2

    .line 66
    iget-object v3, v0, Landroidx/emoji2/text/l$b;->a:Landroid/content/Context;

    .line 68
    iget-object v1, v1, Lj0/m;->a:Landroid/net/Uri;

    .line 70
    invoke-static {v3, v1}, Lf0/q;->e(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    .line 73
    move-result-object v1
    :try_end_49
    .catchall {:try_start_27 .. :try_end_49} :catchall_82

    .line 74
    if-eqz v1, :cond_7a

    .line 76
    if-eqz v2, :cond_7a

    .line 78
    :try_start_4d
    const-string v3, "EmojiCompat.MetadataRepo.create"

    .line 80
    invoke-static {v3}, Li0/i$a;->a(Ljava/lang/String;)V

    .line 83
    new-instance v3, Landroidx/emoji2/text/o;

    .line 85
    invoke-static {v1}, Landroidx/emoji2/text/n;->a(Ljava/nio/MappedByteBuffer;)Lt0/b;

    .line 88
    move-result-object v1

    .line 89
    invoke-direct {v3, v2, v1}, Landroidx/emoji2/text/o;-><init>(Landroid/graphics/Typeface;Lt0/b;)V
    :try_end_5b
    .catchall {:try_start_4d .. :try_end_5b} :catchall_73

    .line 92
    :try_start_5b
    invoke-static {}, Li0/i$a;->b()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_82

    .line 95
    :try_start_5e
    invoke-static {}, Li0/i$a;->b()V

    .line 98
    iget-object v1, v0, Landroidx/emoji2/text/l$b;->d:Ljava/lang/Object;

    .line 100
    monitor-enter v1
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_a5

    .line 101
    :try_start_64
    iget-object v2, v0, Landroidx/emoji2/text/l$b;->h:Landroidx/emoji2/text/f$h;

    .line 103
    if-eqz v2, :cond_6b

    .line 105
    invoke-virtual {v2, v3}, Landroidx/emoji2/text/f$h;->b(Landroidx/emoji2/text/o;)V

    .line 108
    :cond_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_70

    .line 109
    :try_start_6c
    invoke-virtual {v0}, Landroidx/emoji2/text/l$b;->b()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_a5

    .line 112
    goto :goto_b4

    .line 113
    :catchall_70
    move-exception v2

    .line 114
    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    .line 115
    :try_start_72
    throw v2
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_a5

    .line 116
    :catchall_73
    move-exception v1

    .line 117
    :try_start_74
    sget v2, Li0/i;->a:I

    .line 119
    invoke-static {}, Li0/i$a;->b()V

    .line 122
    throw v1

    .line 123
    :cond_7a
    new-instance v1, Ljava/lang/RuntimeException;

    .line 125
    const-string v2, "Unable to open file."

    .line 127
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 130
    throw v1
    :try_end_82
    .catchall {:try_start_74 .. :try_end_82} :catchall_82

    .line 131
    :catchall_82
    move-exception v1

    .line 132
    :try_start_83
    sget v2, Li0/i;->a:I

    .line 134
    invoke-static {}, Li0/i$a;->b()V

    .line 137
    throw v1

    .line 138
    :cond_89
    new-instance v1, Ljava/lang/RuntimeException;

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    .line 142
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    const-string v4, "fetchFonts result is not OK. ("

    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    const-string v2, ")"

    .line 155
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object v2

    .line 162
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 165
    throw v1
    :try_end_a5
    .catchall {:try_start_83 .. :try_end_a5} :catchall_a5

    .line 166
    :catchall_a5
    move-exception v1

    .line 167
    iget-object v2, v0, Landroidx/emoji2/text/l$b;->d:Ljava/lang/Object;

    .line 169
    monitor-enter v2

    .line 170
    :try_start_a9
    iget-object v3, v0, Landroidx/emoji2/text/l$b;->h:Landroidx/emoji2/text/f$h;

    .line 172
    if-eqz v3, :cond_b0

    .line 174
    invoke-virtual {v3, v1}, Landroidx/emoji2/text/f$h;->a(Ljava/lang/Throwable;)V

    .line 177
    :cond_b0
    monitor-exit v2
    :try_end_b1
    .catchall {:try_start_a9 .. :try_end_b1} :catchall_b5

    .line 178
    invoke-virtual {v0}, Landroidx/emoji2/text/l$b;->b()V

    .line 181
    :goto_b4
    return-void

    .line 182
    :catchall_b5
    move-exception v0

    .line 183
    :try_start_b6
    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    .line 184
    throw v0

    .line 185
    :catchall_b8
    move-exception v0

    .line 186
    :try_start_b9
    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    .line 187
    throw v0

    .line 188
    :goto_bb
    iget-object v0, p0, Landroidx/emoji2/text/m;->b:Landroidx/emoji2/text/l$b;

    .line 190
    invoke-virtual {v0}, Landroidx/emoji2/text/l$b;->c()V

    .line 193
    return-void

    .line 194
    nop

    .line 195
    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_7  #00000000
    .end packed-switch
.end method
