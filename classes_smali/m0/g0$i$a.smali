.class public final Lm0/g0$i$a;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm0/g0$i;->u(Landroid/view/View;Lm0/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Lm0/r0;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lm0/v;


# direct methods
.method public constructor <init>(Landroid/view/View;Lm0/v;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lm0/g0$i$a;->b:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lm0/g0$i$a;->c:Lm0/v;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lm0/g0$i$a;->a:Lm0/r0;

    .line 11
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 7

    .line 1
    invoke-static {p2, p1}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    .line 4
    move-result-object v0

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    const/16 v2, 0x1e

    .line 9
    if-ge v1, v2, :cond_22

    .line 11
    iget-object v3, p0, Lm0/g0$i$a;->b:Landroid/view/View;

    .line 13
    invoke-static {p2, v3}, Lm0/g0$i;->a(Landroid/view/WindowInsets;Landroid/view/View;)V

    .line 16
    iget-object p2, p0, Lm0/g0$i$a;->a:Lm0/r0;

    .line 18
    invoke-virtual {v0, p2}, Lm0/r0;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_22

    .line 24
    iget-object p2, p0, Lm0/g0$i$a;->c:Lm0/v;

    .line 26
    invoke-interface {p2, p1, v0}, Lm0/v;->onApplyWindowInsets(Landroid/view/View;Lm0/r0;)Lm0/r0;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lm0/r0;->h()Landroid/view/WindowInsets;

    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_22
    iput-object v0, p0, Lm0/g0$i$a;->a:Lm0/r0;

    .line 37
    iget-object p2, p0, Lm0/g0$i$a;->c:Lm0/v;

    .line 39
    invoke-interface {p2, p1, v0}, Lm0/v;->onApplyWindowInsets(Landroid/view/View;Lm0/r0;)Lm0/r0;

    .line 42
    move-result-object p2

    .line 43
    if-lt v1, v2, :cond_31

    .line 45
    invoke-virtual {p2}, Lm0/r0;->h()Landroid/view/WindowInsets;

    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :cond_31
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 52
    invoke-static {p1}, Lm0/g0$h;->c(Landroid/view/View;)V

    .line 55
    invoke-virtual {p2}, Lm0/r0;->h()Landroid/view/WindowInsets;

    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method
