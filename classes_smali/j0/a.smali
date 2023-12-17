.class public final Lj0/a;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:La/b;

.field public final synthetic b:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(La/b;Landroid/graphics/Typeface;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lj0/a;->a:La/b;

    .line 3
    iput-object p2, p0, Lj0/a;->b:Landroid/graphics/Typeface;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lj0/a;->a:La/b;

    .line 3
    iget-object v1, p0, Lj0/a;->b:Landroid/graphics/Typeface;

    .line 5
    check-cast v0, Lf0/i$a;

    .line 7
    iget-object v0, v0, Lf0/i$a;->l:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-virtual {v0, v1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrieved(Landroid/graphics/Typeface;)V

    .line 14
    :cond_d
    return-void
.end method
