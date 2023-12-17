.class public final Landroidx/appcompat/widget/v$a;
.super Landroidx/core/content/res/ResourcesCompat$FontCallback;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/v;->n(Landroid/content/Context;Landroidx/appcompat/widget/y0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/ref/WeakReference;

.field public final synthetic d:Landroidx/appcompat/widget/v;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/v;IILjava/lang/ref/WeakReference;)V
    .registers 5

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/v$a;->d:Landroidx/appcompat/widget/v;

    .line 3
    iput p2, p0, Landroidx/appcompat/widget/v$a;->a:I

    .line 5
    iput p3, p0, Landroidx/appcompat/widget/v$a;->b:I

    .line 7
    iput-object p4, p0, Landroidx/appcompat/widget/v$a;->c:Ljava/lang/ref/WeakReference;

    .line 9
    invoke-direct {p0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final onFontRetrievalFailed(I)V
    .registers 2

    return-void
.end method

.method public final onFontRetrieved(Landroid/graphics/Typeface;)V
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-lt v0, v1, :cond_18

    .line 7
    iget v0, p0, Landroidx/appcompat/widget/v$a;->a:I

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_18

    .line 12
    iget v1, p0, Landroidx/appcompat/widget/v$a;->b:I

    .line 14
    and-int/lit8 v1, v1, 0x2

    .line 16
    if-eqz v1, :cond_13

    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v1, 0x0

    .line 21
    :goto_14
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/v$e;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 24
    move-result-object p1

    .line 25
    :cond_18
    iget-object v0, p0, Landroidx/appcompat/widget/v$a;->d:Landroidx/appcompat/widget/v;

    .line 27
    iget-object v1, p0, Landroidx/appcompat/widget/v$a;->c:Ljava/lang/ref/WeakReference;

    .line 29
    iget-boolean v2, v0, Landroidx/appcompat/widget/v;->m:Z

    .line 31
    if-eqz v2, :cond_42

    .line 33
    iput-object p1, v0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    .line 35
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/widget/TextView;

    .line 41
    if-eqz v1, :cond_42

    .line 43
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 45
    invoke-static {v1}, Lm0/g0$g;->b(Landroid/view/View;)Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_3d

    .line 51
    iget v0, v0, Landroidx/appcompat/widget/v;->j:I

    .line 53
    new-instance v2, Landroidx/appcompat/widget/w;

    .line 55
    invoke-direct {v2, v1, p1, v0}, Landroidx/appcompat/widget/w;-><init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 61
    goto :goto_42

    .line 62
    :cond_3d
    iget v0, v0, Landroidx/appcompat/widget/v;->j:I

    .line 64
    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 67
    :cond_42
    :goto_42
    return-void
.end method
