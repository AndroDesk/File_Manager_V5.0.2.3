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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 5

    iput p4, p0, Landroidx/emoji2/text/g;->a:I

    iput-object p1, p0, Landroidx/emoji2/text/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/emoji2/text/g;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/emoji2/text/g;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget v0, p0, Landroidx/emoji2/text/g;->a:I

    packed-switch v0, :pswitch_data_66

    goto :goto_55

    :pswitch_6  #0x1
    iget-object v0, p0, Landroidx/emoji2/text/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/micloud/midrive/task/SyncTask;

    iget-object v1, p0, Landroidx/emoji2/text/g;->c:Ljava/lang/Object;

    check-cast v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    iget-object v2, p0, Landroidx/emoji2/text/g;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/task/SyncTask;->a(Lcom/micloud/midrive/task/SyncTask;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;)V

    return-void

    :pswitch_16  #0x0
    iget-object v0, p0, Landroidx/emoji2/text/g;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/EmojiCompatInitializer$b;

    iget-object v1, p0, Landroidx/emoji2/text/g;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/emoji2/text/f$h;

    iget-object v2, p0, Landroidx/emoji2/text/g;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_25
    iget-object v0, v0, Landroidx/emoji2/text/EmojiCompatInitializer$b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/emoji2/text/c;->a(Landroid/content/Context;)Landroidx/emoji2/text/l;

    move-result-object v0

    if-eqz v0, :cond_45

    iget-object v3, v0, Landroidx/emoji2/text/f$c;->a:Landroidx/emoji2/text/f$g;

    check-cast v3, Landroidx/emoji2/text/l$b;

    iget-object v4, v3, Landroidx/emoji2/text/l$b;->d:Ljava/lang/Object;

    monitor-enter v4
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_4d

    :try_start_34
    iput-object v2, v3, Landroidx/emoji2/text/l$b;->f:Ljava/util/concurrent/Executor;

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_42

    :try_start_37
    iget-object v0, v0, Landroidx/emoji2/text/f$c;->a:Landroidx/emoji2/text/f$g;

    new-instance v3, Landroidx/emoji2/text/h;

    invoke-direct {v3, v1, v2}, Landroidx/emoji2/text/h;-><init>(Landroidx/emoji2/text/f$h;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-interface {v0, v3}, Landroidx/emoji2/text/f$g;->a(Landroidx/emoji2/text/f$h;)V
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_4d

    goto :goto_54

    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit v4
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    :try_start_44
    throw v0

    :cond_45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "EmojiCompat font provider not available on this device."

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v0

    invoke-virtual {v1, v0}, Landroidx/emoji2/text/f$h;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :goto_54
    return-void

    :goto_55
    iget-object v0, p0, Landroidx/emoji2/text/g;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;

    iget-object v1, p0, Landroidx/emoji2/text/g;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroidx/emoji2/text/g;->d:Ljava/lang/Object;

    check-cast v2, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0, v1, v2}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;->e(Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;Landroid/view/View;Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void

    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
