.class public final Landroidx/emoji2/text/e;
.super Landroidx/emoji2/text/f$h;
.source "EmojiCompat.java"


# instance fields
.field public final synthetic a:Landroidx/emoji2/text/f$a;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/f$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/f$a;

    .line 3
    invoke-direct {p0}, Landroidx/emoji2/text/f$h;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/f$a;

    .line 3
    iget-object v0, v0, Landroidx/emoji2/text/f$b;->a:Landroidx/emoji2/text/f;

    .line 5
    invoke-virtual {v0, p1}, Landroidx/emoji2/text/f;->d(Ljava/lang/Throwable;)V

    .line 8
    return-void
.end method

.method public final b(Landroidx/emoji2/text/o;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/f$a;

    .line 3
    iput-object p1, v0, Landroidx/emoji2/text/f$a;->c:Landroidx/emoji2/text/o;

    .line 5
    new-instance p1, Landroidx/emoji2/text/j;

    .line 7
    iget-object v1, v0, Landroidx/emoji2/text/f$a;->c:Landroidx/emoji2/text/o;

    .line 9
    new-instance v2, Landroidx/emoji2/text/f$i;

    .line 11
    invoke-direct {v2}, Landroidx/emoji2/text/f$i;-><init>()V

    .line 14
    iget-object v3, v0, Landroidx/emoji2/text/f$b;->a:Landroidx/emoji2/text/f;

    .line 16
    iget-object v3, v3, Landroidx/emoji2/text/f;->h:Landroidx/emoji2/text/d;

    .line 18
    invoke-direct {p1, v1, v2, v3}, Landroidx/emoji2/text/j;-><init>(Landroidx/emoji2/text/o;Landroidx/emoji2/text/f$i;Landroidx/emoji2/text/d;)V

    .line 21
    iput-object p1, v0, Landroidx/emoji2/text/f$a;->b:Landroidx/emoji2/text/j;

    .line 23
    iget-object p1, v0, Landroidx/emoji2/text/f$b;->a:Landroidx/emoji2/text/f;

    .line 25
    invoke-virtual {p1}, Landroidx/emoji2/text/f;->e()V

    .line 28
    return-void
.end method
