.class public final Lj0/a;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:La/b;

.field public final synthetic b:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(La/b;Landroid/graphics/Typeface;)V
    .registers 3

    iput-object p1, p0, Lj0/a;->a:La/b;

    iput-object p2, p0, Lj0/a;->b:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lj0/a;->a:La/b;

    iget-object v1, p0, Lj0/a;->b:Landroid/graphics/Typeface;

    check-cast v0, Lf0/i$a;

    iget-object v0, v0, Lf0/i$a;->l:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrieved(Landroid/graphics/Typeface;)V

    :cond_d
    return-void
.end method
