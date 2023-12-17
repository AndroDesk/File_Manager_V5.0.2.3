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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/i0;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4

    iput-object p1, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/i0;

    iput-object p2, p0, Landroidx/fragment/app/i;->b:Landroid/view/View;

    iput-object p3, p0, Landroidx/fragment/app/i;->c:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/i0;

    iget-object v1, p0, Landroidx/fragment/app/i;->b:Landroid/view/View;

    iget-object v2, p0, Landroidx/fragment/app/i;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Landroidx/fragment/app/i0;->g(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
