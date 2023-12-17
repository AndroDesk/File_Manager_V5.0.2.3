.class Landroidx/emoji2/text/EmojiCompatInitializer$1;
.super Ljava/lang/Object;
.source "EmojiCompatInitializer.java"

# interfaces
.implements Landroidx/lifecycle/c;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/Lifecycle;

.field public final synthetic b:Landroidx/emoji2/text/EmojiCompatInitializer;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/EmojiCompatInitializer;Landroidx/lifecycle/Lifecycle;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompatInitializer$1;->b:Landroidx/emoji2/text/EmojiCompatInitializer;

    .line 3
    iput-object p2, p0, Landroidx/emoji2/text/EmojiCompatInitializer$1;->a:Landroidx/lifecycle/Lifecycle;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final d()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompatInitializer$1;->b:Landroidx/emoji2/text/EmojiCompatInitializer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    const/16 v1, 0x1c

    .line 10
    if-lt v0, v1, :cond_14

    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroidx/emoji2/text/b;->a(Landroid/os/Looper;)Landroid/os/Handler;

    .line 19
    move-result-object v0

    .line 20
    goto :goto_1d

    .line 21
    :cond_14
    new-instance v0, Landroid/os/Handler;

    .line 23
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    :goto_1d
    new-instance v1, Landroidx/emoji2/text/EmojiCompatInitializer$c;

    .line 32
    invoke-direct {v1}, Landroidx/emoji2/text/EmojiCompatInitializer$c;-><init>()V

    .line 35
    const-wide/16 v2, 0x1f4

    .line 37
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompatInitializer$1;->a:Landroidx/lifecycle/Lifecycle;

    .line 42
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->c(Landroidx/lifecycle/l;)V

    .line 45
    return-void
.end method
