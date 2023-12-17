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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lm0/v;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lm0/g0$i$a;->b:Landroid/view/View;

    iput-object p2, p0, Lm0/g0$i$a;->c:Lm0/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lm0/g0$i$a;->a:Lm0/r0;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 7

    invoke-static {p2, p1}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_22

    iget-object v3, p0, Lm0/g0$i$a;->b:Landroid/view/View;

    invoke-static {p2, v3}, Lm0/g0$i;->a(Landroid/view/WindowInsets;Landroid/view/View;)V

    iget-object p2, p0, Lm0/g0$i$a;->a:Lm0/r0;

    invoke-virtual {v0, p2}, Lm0/r0;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_22

    iget-object p2, p0, Lm0/g0$i$a;->c:Lm0/v;

    invoke-interface {p2, p1, v0}, Lm0/v;->onApplyWindowInsets(Landroid/view/View;Lm0/r0;)Lm0/r0;

    move-result-object p1

    invoke-virtual {p1}, Lm0/r0;->h()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_22
    iput-object v0, p0, Lm0/g0$i$a;->a:Lm0/r0;

    iget-object p2, p0, Lm0/g0$i$a;->c:Lm0/v;

    invoke-interface {p2, p1, v0}, Lm0/v;->onApplyWindowInsets(Landroid/view/View;Lm0/r0;)Lm0/r0;

    move-result-object p2

    if-lt v1, v2, :cond_31

    invoke-virtual {p2}, Lm0/r0;->h()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_31
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lm0/g0$h;->c(Landroid/view/View;)V

    invoke-virtual {p2}, Lm0/r0;->h()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
