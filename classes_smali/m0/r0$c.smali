.class public Lm0/r0$c;
.super Lm0/r0$e;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lm0/r0$e;-><init>()V

    .line 2
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Lm0/r0$c;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Lm0/r0;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lm0/r0$e;-><init>(Lm0/r0;)V

    .line 4
    invoke-virtual {p1}, Lm0/r0;->h()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 5
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_14

    .line 6
    :cond_f
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_14
    iput-object v0, p0, Lm0/r0$c;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public b()Lm0/r0;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lm0/r0$e;->a()V

    .line 4
    iget-object v0, p0, Lm0/r0$c;->a:Landroid/view/WindowInsets$Builder;

    .line 6
    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    .line 14
    move-result-object v0

    .line 15
    iget-object v2, v0, Lm0/r0;->a:Lm0/r0$k;

    .line 17
    invoke-virtual {v2, v1}, Lm0/r0$k;->o([Lf0/f;)V

    .line 20
    return-object v0
.end method

.method public c(Lf0/f;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/r0$c;->a:Landroid/view/WindowInsets$Builder;

    .line 3
    invoke-virtual {p1}, Lf0/f;->c()Landroid/graphics/Insets;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 10
    return-void
.end method

.method public d(Lf0/f;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/r0$c;->a:Landroid/view/WindowInsets$Builder;

    .line 3
    invoke-virtual {p1}, Lf0/f;->c()Landroid/graphics/Insets;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 10
    return-void
.end method
