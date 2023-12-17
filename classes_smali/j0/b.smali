.class public final Lj0/b;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:La/b;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(La/b;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lj0/b;->a:La/b;

    .line 3
    iput p2, p0, Lj0/b;->b:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lj0/b;->a:La/b;

    .line 3
    iget v1, p0, Lj0/b;->b:I

    .line 5
    check-cast v0, Lf0/i$a;

    .line 7
    iget-object v0, v0, Lf0/i$a;->l:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-virtual {v0, v1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrievalFailed(I)V

    .line 14
    :cond_d
    return-void
.end method
