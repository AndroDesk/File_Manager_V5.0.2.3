.class public final Landroidx/fragment/app/f$a;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/f;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/f;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/f$a;->a:Landroidx/fragment/app/f;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f$a;->a:Landroidx/fragment/app/f;

    .line 3
    iget-object v1, v0, Landroidx/fragment/app/f;->b:Landroid/view/ViewGroup;

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/f;->c:Landroid/view/View;

    .line 7
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 10
    iget-object v0, p0, Landroidx/fragment/app/f$a;->a:Landroidx/fragment/app/f;

    .line 12
    iget-object v0, v0, Landroidx/fragment/app/f;->d:Landroidx/fragment/app/b$b;

    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/b$c;->a()V

    .line 17
    return-void
.end method
