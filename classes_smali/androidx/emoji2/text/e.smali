.class public final Landroidx/emoji2/text/e;
.super Landroidx/emoji2/text/f$h;
.source "EmojiCompat.java"


# instance fields
.field public final synthetic a:Landroidx/emoji2/text/f$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/f$a;)V
    .registers 2

    iput-object p1, p0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/f$a;

    invoke-direct {p0}, Landroidx/emoji2/text/f$h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/f$a;

    iget-object v0, v0, Landroidx/emoji2/text/f$b;->a:Landroidx/emoji2/text/f;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/f;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Landroidx/emoji2/text/o;)V
    .registers 6

    iget-object v0, p0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/f$a;

    iput-object p1, v0, Landroidx/emoji2/text/f$a;->c:Landroidx/emoji2/text/o;

    new-instance p1, Landroidx/emoji2/text/j;

    iget-object v1, v0, Landroidx/emoji2/text/f$a;->c:Landroidx/emoji2/text/o;

    new-instance v2, Landroidx/emoji2/text/f$i;

    invoke-direct {v2}, Landroidx/emoji2/text/f$i;-><init>()V

    iget-object v3, v0, Landroidx/emoji2/text/f$b;->a:Landroidx/emoji2/text/f;

    iget-object v3, v3, Landroidx/emoji2/text/f;->h:Landroidx/emoji2/text/d;

    invoke-direct {p1, v1, v2, v3}, Landroidx/emoji2/text/j;-><init>(Landroidx/emoji2/text/o;Landroidx/emoji2/text/f$i;Landroidx/emoji2/text/d;)V

    iput-object p1, v0, Landroidx/emoji2/text/f$a;->b:Landroidx/emoji2/text/j;

    iget-object p1, v0, Landroidx/emoji2/text/f$b;->a:Landroidx/emoji2/text/f;

    invoke-virtual {p1}, Landroidx/emoji2/text/f;->e()V

    return-void
.end method
