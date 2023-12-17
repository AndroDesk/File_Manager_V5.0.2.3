.class public final synthetic Landroidx/appcompat/app/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .registers 3

    iput p2, p0, Landroidx/appcompat/app/j;->a:I

    iput-object p1, p0, Landroidx/appcompat/app/j;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget v0, p0, Landroidx/appcompat/app/j;->a:I

    packed-switch v0, :pswitch_data_ce

    goto/16 :goto_c8

    :pswitch_7  #0x5
    iget-object v0, p0, Landroidx/appcompat/app/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->j(Landroid/content/Context;)V

    return-void

    :pswitch_d  #0x4
    iget-object v0, p0, Landroidx/appcompat/app/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->b(Landroid/content/Context;)V

    return-void

    :pswitch_13  #0x3
    iget-object v0, p0, Landroidx/appcompat/app/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->h(Landroid/content/Context;)V

    return-void

    :pswitch_19  #0x2
    iget-object v0, p0, Landroidx/appcompat/app/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->i(Landroid/content/Context;)V

    return-void

    :pswitch_1f  #0x1
    iget-object v0, p0, Landroidx/appcompat/app/j;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/app/k;->z(Landroid/content/Context;)V

    return-void

    :pswitch_25  #0x0
    iget-object v0, p0, Landroidx/appcompat/app/j;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c5

    sput-object v0, Landroidx/appcompat/app/k;->h:Landroid/content/Context;

    invoke-static {}, Li0/a;->a()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-static {}, Landroidx/appcompat/app/k;->g()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5b

    invoke-static {v2}, Landroidx/appcompat/app/k$b;->a(Ljava/lang/Object;)Landroid/os/LocaleList;

    move-result-object v2

    new-instance v4, Li0/f;

    new-instance v5, Li0/h;

    invoke-direct {v5, v2}, Li0/h;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, v5}, Li0/f;-><init>(Li0/h;)V

    goto :goto_5d

    :cond_56
    sget-object v4, Landroidx/appcompat/app/k;->c:Li0/f;

    if-eqz v4, :cond_5b

    goto :goto_5d

    :cond_5b
    sget-object v4, Li0/f;->b:Li0/f;

    :goto_5d
    iget-object v2, v4, Li0/f;->a:Li0/g;

    invoke-interface {v2}, Li0/g;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_be

    invoke-static {v0}, Landroidx/appcompat/app/t;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Li0/f;->a(Ljava/lang/String;)Li0/f;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Li0/a;->a()Z

    move-result v4

    if-eqz v4, :cond_8a

    invoke-static {}, Landroidx/appcompat/app/k;->g()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_be

    iget-object v2, v2, Li0/f;->a:Li0/g;

    invoke-interface {v2}, Li0/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/app/k$a;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    invoke-static {v4, v2}, Landroidx/appcompat/app/k$b;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    goto :goto_be

    :cond_8a
    sget-object v4, Landroidx/appcompat/app/k;->c:Li0/f;

    invoke-virtual {v2, v4}, Li0/f;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_be

    sget-object v4, Landroidx/appcompat/app/k;->j:Ljava/lang/Object;

    monitor-enter v4

    :try_start_95
    sput-object v2, Landroidx/appcompat/app/k;->c:Li0/f;

    sget-object v2, Landroidx/appcompat/app/k;->i:Landroidx/collection/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroidx/collection/b$a;

    invoke-direct {v5, v2}, Landroidx/collection/b$a;-><init>(Landroidx/collection/b;)V

    :cond_a1
    :goto_a1
    invoke-virtual {v5}, Landroidx/collection/c;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b9

    invoke-virtual {v5}, Landroidx/collection/c;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/k;

    if-eqz v2, :cond_a1

    invoke-virtual {v2}, Landroidx/appcompat/app/k;->b()V

    goto :goto_a1

    :cond_b9
    monitor-exit v4

    goto :goto_be

    :catchall_bb
    move-exception v0

    monitor-exit v4
    :try_end_bd
    .catchall {:try_start_95 .. :try_end_bd} :catchall_bb

    throw v0

    :cond_be
    :goto_be
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_c5
    sput-boolean v3, Landroidx/appcompat/app/k;->f:Z

    return-void

    :goto_c8
    iget-object v0, p0, Landroidx/appcompat/app/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->a(Landroid/content/Context;)V

    return-void

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_25  #00000000
        :pswitch_1f  #00000001
        :pswitch_19  #00000002
        :pswitch_13  #00000003
        :pswitch_d  #00000004
        :pswitch_7  #00000005
    .end packed-switch
.end method
