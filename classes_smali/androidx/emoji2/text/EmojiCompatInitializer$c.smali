.class public final Landroidx/emoji2/text/EmojiCompatInitializer$c;
.super Ljava/lang/Object;
.source "EmojiCompatInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiCompatInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    :try_start_0
    const-string v0, "EmojiCompat.EmojiCompatInitializer.run"

    .line 3
    sget v1, Li0/i;->a:I

    .line 5
    invoke-static {v0}, Li0/i$a;->a(Ljava/lang/String;)V

    .line 8
    sget-object v0, Landroidx/emoji2/text/f;->j:Landroidx/emoji2/text/f;

    .line 10
    if-eqz v0, :cond_d

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    if-eqz v0, :cond_17

    .line 17
    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroidx/emoji2/text/f;->c()V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_1b

    .line 24
    :cond_17
    invoke-static {}, Li0/i$a;->b()V

    .line 27
    return-void

    .line 28
    :catchall_1b
    move-exception v0

    .line 29
    sget v1, Li0/i;->a:I

    .line 31
    invoke-static {}, Li0/i$a;->b()V

    .line 34
    throw v0
.end method
