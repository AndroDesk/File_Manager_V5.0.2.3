.class public final synthetic Landroidx/emoji2/text/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/emoji2/text/l$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/emoji2/text/l$b;I)V
    .registers 3

    iput p2, p0, Landroidx/emoji2/text/m;->a:I

    iput-object p1, p0, Landroidx/emoji2/text/m;->b:Landroidx/emoji2/text/l$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget v0, p0, Landroidx/emoji2/text/m;->a:I

    packed-switch v0, :pswitch_data_c2

    goto/16 :goto_bb

    :pswitch_7  #0x0
    iget-object v0, p0, Landroidx/emoji2/text/m;->b:Landroidx/emoji2/text/l$b;

    iget-object v1, v0, Landroidx/emoji2/text/l$b;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    iget-object v2, v0, Landroidx/emoji2/text/l$b;->h:Landroidx/emoji2/text/f$h;

    if-nez v2, :cond_13

    monitor-exit v1

    goto/16 :goto_b4

    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_b8

    :try_start_14
    invoke-virtual {v0}, Landroidx/emoji2/text/l$b;->d()Lj0/m;

    move-result-object v1

    iget v2, v1, Lj0/m;->e:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    iget-object v3, v0, Landroidx/emoji2/text/l$b;->d:Ljava/lang/Object;

    monitor-enter v3
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_a5

    :try_start_20
    monitor-exit v3

    goto :goto_25

    :catchall_22
    move-exception v1

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_22

    :try_start_24
    throw v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_a5

    :cond_25
    :goto_25
    if-nez v2, :cond_89

    :try_start_27
    const-string v2, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    sget v3, Li0/i;->a:I

    invoke-static {v2}, Li0/i$a;->a(Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/emoji2/text/l$b;->c:Landroidx/emoji2/text/l$a;

    iget-object v3, v0, Landroidx/emoji2/text/l$b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Lj0/m;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    sget-object v5, Lf0/i;->a:Lf0/p;

    invoke-virtual {v5, v3, v2, v4}, Lf0/p;->b(Landroid/content/Context;[Lj0/m;I)Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v3, v0, Landroidx/emoji2/text/l$b;->a:Landroid/content/Context;

    iget-object v1, v1, Lj0/m;->a:Landroid/net/Uri;

    invoke-static {v3, v1}, Lf0/q;->e(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    move-result-object v1
    :try_end_49
    .catchall {:try_start_27 .. :try_end_49} :catchall_82

    if-eqz v1, :cond_7a

    if-eqz v2, :cond_7a

    :try_start_4d
    const-string v3, "EmojiCompat.MetadataRepo.create"

    invoke-static {v3}, Li0/i$a;->a(Ljava/lang/String;)V

    new-instance v3, Landroidx/emoji2/text/o;

    invoke-static {v1}, Landroidx/emoji2/text/n;->a(Ljava/nio/MappedByteBuffer;)Lt0/b;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Landroidx/emoji2/text/o;-><init>(Landroid/graphics/Typeface;Lt0/b;)V
    :try_end_5b
    .catchall {:try_start_4d .. :try_end_5b} :catchall_73

    :try_start_5b
    invoke-static {}, Li0/i$a;->b()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_82

    :try_start_5e
    invoke-static {}, Li0/i$a;->b()V

    iget-object v1, v0, Landroidx/emoji2/text/l$b;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_a5

    :try_start_64
    iget-object v2, v0, Landroidx/emoji2/text/l$b;->h:Landroidx/emoji2/text/f$h;

    if-eqz v2, :cond_6b

    invoke-virtual {v2, v3}, Landroidx/emoji2/text/f$h;->b(Landroidx/emoji2/text/o;)V

    :cond_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_70

    :try_start_6c
    invoke-virtual {v0}, Landroidx/emoji2/text/l$b;->b()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_a5

    goto :goto_b4

    :catchall_70
    move-exception v2

    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    :try_start_72
    throw v2
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_a5

    :catchall_73
    move-exception v1

    :try_start_74
    sget v2, Li0/i;->a:I

    invoke-static {}, Li0/i$a;->b()V

    throw v1

    :cond_7a
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to open file."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_82
    .catchall {:try_start_74 .. :try_end_82} :catchall_82

    :catchall_82
    move-exception v1

    :try_start_83
    sget v2, Li0/i;->a:I

    invoke-static {}, Li0/i$a;->b()V

    throw v1

    :cond_89
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchFonts result is not OK. ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a5
    .catchall {:try_start_83 .. :try_end_a5} :catchall_a5

    :catchall_a5
    move-exception v1

    iget-object v2, v0, Landroidx/emoji2/text/l$b;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_a9
    iget-object v3, v0, Landroidx/emoji2/text/l$b;->h:Landroidx/emoji2/text/f$h;

    if-eqz v3, :cond_b0

    invoke-virtual {v3, v1}, Landroidx/emoji2/text/f$h;->a(Ljava/lang/Throwable;)V

    :cond_b0
    monitor-exit v2
    :try_end_b1
    .catchall {:try_start_a9 .. :try_end_b1} :catchall_b5

    invoke-virtual {v0}, Landroidx/emoji2/text/l$b;->b()V

    :goto_b4
    return-void

    :catchall_b5
    move-exception v0

    :try_start_b6
    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v0

    :catchall_b8
    move-exception v0

    :try_start_b9
    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw v0

    :goto_bb
    iget-object v0, p0, Landroidx/emoji2/text/m;->b:Landroidx/emoji2/text/l$b;

    invoke-virtual {v0}, Landroidx/emoji2/text/l$b;->c()V

    return-void

    nop

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_7  #00000000
    .end packed-switch
.end method
