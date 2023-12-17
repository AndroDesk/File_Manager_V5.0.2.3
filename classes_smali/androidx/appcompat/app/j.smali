.class public final synthetic Landroidx/appcompat/app/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 1
    iput p2, p0, Landroidx/appcompat/app/j;->a:I

    .line 3
    iput-object p1, p0, Landroidx/appcompat/app/j;->b:Landroid/content/Context;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    iget v0, p0, Landroidx/appcompat/app/j;->a:I

    .line 3
    packed-switch v0, :pswitch_data_ce

    .line 6
    goto/16 :goto_c8

    .line 8
    :pswitch_7  #0x5
    iget-object v0, p0, Landroidx/appcompat/app/j;->b:Landroid/content/Context;

    .line 10
    invoke-static {v0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->j(Landroid/content/Context;)V

    .line 13
    return-void

    .line 14
    :pswitch_d  #0x4
    iget-object v0, p0, Landroidx/appcompat/app/j;->b:Landroid/content/Context;

    .line 16
    invoke-static {v0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->b(Landroid/content/Context;)V

    .line 19
    return-void

    .line 20
    :pswitch_13  #0x3
    iget-object v0, p0, Landroidx/appcompat/app/j;->b:Landroid/content/Context;

    .line 22
    invoke-static {v0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->h(Landroid/content/Context;)V

    .line 25
    return-void

    .line 26
    :pswitch_19  #0x2
    iget-object v0, p0, Landroidx/appcompat/app/j;->b:Landroid/content/Context;

    .line 28
    invoke-static {v0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->i(Landroid/content/Context;)V

    .line 31
    return-void

    .line 32
    :pswitch_1f  #0x1
    iget-object v0, p0, Landroidx/appcompat/app/j;->b:Landroid/content/Context;

    .line 34
    invoke-static {v0}, Landroidx/appcompat/app/k;->z(Landroid/content/Context;)V

    .line 37
    return-void

    .line 38
    :pswitch_25  #0x0
    iget-object v0, p0, Landroidx/appcompat/app/j;->b:Landroid/content/Context;

    .line 40
    new-instance v1, Landroid/content/ComponentName;

    .line 42
    const-string v2, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    .line 44
    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 54
    move-result v2

    .line 55
    const/4 v3, 0x1

    .line 56
    if-eq v2, v3, :cond_c5

    .line 58
    sput-object v0, Landroidx/appcompat/app/k;->h:Landroid/content/Context;

    .line 60
    invoke-static {}, Li0/a;->a()Z

    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_56

    .line 66
    invoke-static {}, Landroidx/appcompat/app/k;->g()Ljava/lang/Object;

    .line 69
    move-result-object v2

    .line 70
    if-eqz v2, :cond_5b

    .line 72
    invoke-static {v2}, Landroidx/appcompat/app/k$b;->a(Ljava/lang/Object;)Landroid/os/LocaleList;

    .line 75
    move-result-object v2

    .line 76
    new-instance v4, Li0/f;

    .line 78
    new-instance v5, Li0/h;

    .line 80
    invoke-direct {v5, v2}, Li0/h;-><init>(Ljava/lang/Object;)V

    .line 83
    invoke-direct {v4, v5}, Li0/f;-><init>(Li0/h;)V

    .line 86
    goto :goto_5d

    .line 87
    :cond_56
    sget-object v4, Landroidx/appcompat/app/k;->c:Li0/f;

    .line 89
    if-eqz v4, :cond_5b

    .line 91
    goto :goto_5d

    .line 92
    :cond_5b
    sget-object v4, Li0/f;->b:Li0/f;

    .line 94
    :goto_5d
    iget-object v2, v4, Li0/f;->a:Li0/g;

    .line 96
    invoke-interface {v2}, Li0/g;->isEmpty()Z

    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_be

    .line 102
    invoke-static {v0}, Landroidx/appcompat/app/t;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 106
    invoke-static {v2}, Li0/f;->a(Ljava/lang/String;)Li0/f;

    .line 109
    move-result-object v2

    .line 110
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {}, Li0/a;->a()Z

    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_8a

    .line 119
    invoke-static {}, Landroidx/appcompat/app/k;->g()Ljava/lang/Object;

    .line 122
    move-result-object v4

    .line 123
    if-eqz v4, :cond_be

    .line 125
    iget-object v2, v2, Li0/f;->a:Li0/g;

    .line 127
    invoke-interface {v2}, Li0/g;->a()Ljava/lang/String;

    .line 130
    move-result-object v2

    .line 131
    invoke-static {v2}, Landroidx/appcompat/app/k$a;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 134
    move-result-object v2

    .line 135
    invoke-static {v4, v2}, Landroidx/appcompat/app/k$b;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    .line 138
    goto :goto_be

    .line 139
    :cond_8a
    sget-object v4, Landroidx/appcompat/app/k;->c:Li0/f;

    .line 141
    invoke-virtual {v2, v4}, Li0/f;->equals(Ljava/lang/Object;)Z

    .line 144
    move-result v4

    .line 145
    if-nez v4, :cond_be

    .line 147
    sget-object v4, Landroidx/appcompat/app/k;->j:Ljava/lang/Object;

    .line 149
    monitor-enter v4

    .line 150
    :try_start_95
    sput-object v2, Landroidx/appcompat/app/k;->c:Li0/f;

    .line 152
    sget-object v2, Landroidx/appcompat/app/k;->i:Landroidx/collection/b;

    .line 154
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    new-instance v5, Landroidx/collection/b$a;

    .line 159
    invoke-direct {v5, v2}, Landroidx/collection/b$a;-><init>(Landroidx/collection/b;)V

    .line 162
    :cond_a1
    :goto_a1
    invoke-virtual {v5}, Landroidx/collection/c;->hasNext()Z

    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_b9

    .line 168
    invoke-virtual {v5}, Landroidx/collection/c;->next()Ljava/lang/Object;

    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 174
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 177
    move-result-object v2

    .line 178
    check-cast v2, Landroidx/appcompat/app/k;

    .line 180
    if-eqz v2, :cond_a1

    .line 182
    invoke-virtual {v2}, Landroidx/appcompat/app/k;->b()V

    .line 185
    goto :goto_a1

    .line 186
    :cond_b9
    monitor-exit v4

    .line 187
    goto :goto_be

    .line 188
    :catchall_bb
    move-exception v0

    .line 189
    monitor-exit v4
    :try_end_bd
    .catchall {:try_start_95 .. :try_end_bd} :catchall_bb

    .line 190
    throw v0

    .line 191
    :cond_be
    :goto_be
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 198
    :cond_c5
    sput-boolean v3, Landroidx/appcompat/app/k;->f:Z

    .line 200
    return-void

    .line 201
    :goto_c8
    iget-object v0, p0, Landroidx/appcompat/app/j;->b:Landroid/content/Context;

    .line 203
    invoke-static {v0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->a(Landroid/content/Context;)V

    .line 206
    return-void

    .line 207
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
