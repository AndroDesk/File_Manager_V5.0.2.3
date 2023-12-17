.class public final synthetic Landroidx/emoji2/text/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 5

    .line 1
    iput p4, p0, Landroidx/emoji2/text/g;->a:I

    .line 3
    iput-object p1, p0, Landroidx/emoji2/text/g;->b:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Landroidx/emoji2/text/g;->c:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Landroidx/emoji2/text/g;->d:Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget v0, p0, Landroidx/emoji2/text/g;->a:I

    .line 3
    packed-switch v0, :pswitch_data_66

    .line 6
    goto :goto_55

    .line 7
    :pswitch_6  #0x1
    iget-object v0, p0, Landroidx/emoji2/text/g;->b:Ljava/lang/Object;

    .line 9
    check-cast v0, Lcom/micloud/midrive/task/SyncTask;

    .line 11
    iget-object v1, p0, Landroidx/emoji2/text/g;->c:Ljava/lang/Object;

    .line 13
    check-cast v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 15
    iget-object v2, p0, Landroidx/emoji2/text/g;->d:Ljava/lang/Object;

    .line 17
    check-cast v2, Ljava/util/List;

    .line 19
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/task/SyncTask;->a(Lcom/micloud/midrive/task/SyncTask;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;)V

    .line 22
    return-void

    .line 23
    :pswitch_16  #0x0
    iget-object v0, p0, Landroidx/emoji2/text/g;->b:Ljava/lang/Object;

    .line 25
    check-cast v0, Landroidx/emoji2/text/EmojiCompatInitializer$b;

    .line 27
    iget-object v1, p0, Landroidx/emoji2/text/g;->c:Ljava/lang/Object;

    .line 29
    check-cast v1, Landroidx/emoji2/text/f$h;

    .line 31
    iget-object v2, p0, Landroidx/emoji2/text/g;->d:Ljava/lang/Object;

    .line 33
    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    :try_start_25
    iget-object v0, v0, Landroidx/emoji2/text/EmojiCompatInitializer$b;->a:Landroid/content/Context;

    .line 40
    invoke-static {v0}, Landroidx/emoji2/text/c;->a(Landroid/content/Context;)Landroidx/emoji2/text/l;

    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_45

    .line 46
    iget-object v3, v0, Landroidx/emoji2/text/f$c;->a:Landroidx/emoji2/text/f$g;

    .line 48
    check-cast v3, Landroidx/emoji2/text/l$b;

    .line 50
    iget-object v4, v3, Landroidx/emoji2/text/l$b;->d:Ljava/lang/Object;

    .line 52
    monitor-enter v4
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_4d

    .line 53
    :try_start_34
    iput-object v2, v3, Landroidx/emoji2/text/l$b;->f:Ljava/util/concurrent/Executor;

    .line 55
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_42

    .line 56
    :try_start_37
    iget-object v0, v0, Landroidx/emoji2/text/f$c;->a:Landroidx/emoji2/text/f$g;

    .line 58
    new-instance v3, Landroidx/emoji2/text/h;

    .line 60
    invoke-direct {v3, v1, v2}, Landroidx/emoji2/text/h;-><init>(Landroidx/emoji2/text/f$h;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 63
    invoke-interface {v0, v3}, Landroidx/emoji2/text/f$g;->a(Landroidx/emoji2/text/f$h;)V
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_4d

    .line 66
    goto :goto_54

    .line 67
    :catchall_42
    move-exception v0

    .line 68
    :try_start_43
    monitor-exit v4
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    .line 69
    :try_start_44
    throw v0

    .line 70
    :cond_45
    new-instance v0, Ljava/lang/RuntimeException;

    .line 72
    const-string v3, "EmojiCompat font provider not available on this device."

    .line 74
    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 77
    throw v0
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_4d

    .line 78
    :catchall_4d
    move-exception v0

    .line 79
    invoke-virtual {v1, v0}, Landroidx/emoji2/text/f$h;->a(Ljava/lang/Throwable;)V

    .line 82
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 85
    :goto_54
    return-void

    .line 86
    :goto_55
    iget-object v0, p0, Landroidx/emoji2/text/g;->b:Ljava/lang/Object;

    .line 88
    check-cast v0, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;

    .line 90
    iget-object v1, p0, Landroidx/emoji2/text/g;->c:Ljava/lang/Object;

    .line 92
    check-cast v1, Landroid/view/View;

    .line 94
    iget-object v2, p0, Landroidx/emoji2/text/g;->d:Ljava/lang/Object;

    .line 96
    check-cast v2, Lmiuix/appcompat/app/AppCompatActivity;

    .line 98
    invoke-static {v0, v1, v2}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;->e(Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;Landroid/view/View;Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 101
    return-void

    .line 102
    nop

    .line 103
    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
