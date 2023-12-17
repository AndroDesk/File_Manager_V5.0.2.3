.class Lcom/miui/maml/SoundManager$1;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/SoundManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/SoundManager;


# direct methods
.method public constructor <init>(Lcom/miui/maml/SoundManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    .line 3
    new-instance v1, Landroid/media/SoundPool;

    .line 5
    const/16 v2, 0x8

    .line 7
    const/4 v3, 0x3

    .line 8
    const/16 v4, 0x64

    .line 10
    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    .line 13
    invoke-static {v0, v1}, Lcom/miui/maml/SoundManager;->access$002(Lcom/miui/maml/SoundManager;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 16
    iget-object v0, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    .line 18
    invoke-static {v0}, Lcom/miui/maml/SoundManager;->access$000(Lcom/miui/maml/SoundManager;)Landroid/media/SoundPool;

    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    .line 24
    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 27
    iget-object v0, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    .line 29
    invoke-static {v0}, Lcom/miui/maml/SoundManager;->access$100(Lcom/miui/maml/SoundManager;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    monitor-enter v0

    .line 34
    :try_start_21
    iget-object v1, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-static {v1, v2}, Lcom/miui/maml/SoundManager;->access$202(Lcom/miui/maml/SoundManager;Z)Z

    .line 40
    iget-object v1, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    .line 42
    invoke-static {v1}, Lcom/miui/maml/SoundManager;->access$100(Lcom/miui/maml/SoundManager;)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :catchall_32
    move-exception v1

    .line 52
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_21 .. :try_end_34} :catchall_32

    .line 53
    throw v1
.end method
