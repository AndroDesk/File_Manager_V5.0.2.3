.class public final Lj0/b;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:La/b;

.field public final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(La/b;I)V
    .registers 3

    iput-object p1, p0, Lj0/b;->a:La/b;

    iput p2, p0, Lj0/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lj0/b;->a:La/b;

    iget v1, p0, Lj0/b;->b:I

    check-cast v0, Lf0/i$a;

    iget-object v0, v0, Lf0/i$a;->l:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrievalFailed(I)V

    :cond_d
    return-void
.end method
