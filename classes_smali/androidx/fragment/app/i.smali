.class public final Landroidx/fragment/app/i;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/i0;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/i0;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/i0;

    .line 3
    iput-object p2, p0, Landroidx/fragment/app/i;->b:Landroid/view/View;

    .line 5
    iput-object p3, p0, Landroidx/fragment/app/i;->c:Landroid/graphics/Rect;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/i0;

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/i;->b:Landroid/view/View;

    .line 5
    iget-object v2, p0, Landroidx/fragment/app/i;->c:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {v1, v2}, Landroidx/fragment/app/i0;->g(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 13
    return-void
.end method
