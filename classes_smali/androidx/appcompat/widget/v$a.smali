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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/v;IILjava/lang/ref/WeakReference;)V
    .registers 5

    iput-object p1, p0, Landroidx/appcompat/widget/v$a;->d:Landroidx/appcompat/widget/v;

    iput p2, p0, Landroidx/appcompat/widget/v$a;->a:I

    iput p3, p0, Landroidx/appcompat/widget/v$a;->b:I

    iput-object p4, p0, Landroidx/appcompat/widget/v$a;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFontRetrievalFailed(I)V
    .registers 2

    return-void
.end method

.method public final onFontRetrieved(Landroid/graphics/Typeface;)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_18

    iget v0, p0, Landroidx/appcompat/widget/v$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    iget v1, p0, Landroidx/appcompat/widget/v$a;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/v$e;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    :cond_18
    iget-object v0, p0, Landroidx/appcompat/widget/v$a;->d:Landroidx/appcompat/widget/v;

    iget-object v1, p0, Landroidx/appcompat/widget/v$a;->c:Ljava/lang/ref/WeakReference;

    iget-boolean v2, v0, Landroidx/appcompat/widget/v;->m:Z

    if-eqz v2, :cond_42

    iput-object p1, v0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_42

    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Lm0/g0$g;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget v0, v0, Landroidx/appcompat/widget/v;->j:I

    new-instance v2, Landroidx/appcompat/widget/w;

    invoke-direct {v2, v1, p1, v0}, Landroidx/appcompat/widget/w;-><init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_42

    :cond_3d
    iget v0, v0, Landroidx/appcompat/widget/v;->j:I

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_42
    :goto_42
    return-void
.end method
