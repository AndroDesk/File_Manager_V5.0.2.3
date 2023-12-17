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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    const-string v0, "EmojiCompat.EmojiCompatInitializer.run"

    sget v1, Li0/i;->a:I

    invoke-static {v0}, Li0/i$a;->a(Ljava/lang/String;)V

    sget-object v0, Landroidx/emoji2/text/f;->j:Landroidx/emoji2/text/f;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_17

    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/f;->c()V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_1b

    :cond_17
    invoke-static {}, Li0/i$a;->b()V

    return-void

    :catchall_1b
    move-exception v0

    sget v1, Li0/i;->a:I

    invoke-static {}, Li0/i$a;->b()V

    throw v0
.end method
