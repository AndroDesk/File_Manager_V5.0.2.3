.class public final Landroidx/fragment/app/FragmentManager$b;
.super Landroidx/activity/h;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$b;->a:Landroidx/fragment/app/FragmentManager;

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroidx/activity/h;-><init>(Z)V

    .line 7
    return-void
.end method


# virtual methods
.method public final handleOnBackPressed()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$b;->a:Landroidx/fragment/app/FragmentManager;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->x(Z)Z

    .line 7
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->h:Landroidx/fragment/app/FragmentManager$b;

    .line 9
    invoke-virtual {v1}, Landroidx/activity/h;->isEnabled()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_12

    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->U()Z

    .line 18
    goto :goto_17

    .line 19
    :cond_12
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->g:Landroidx/activity/OnBackPressedDispatcher;

    .line 21
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->b()V

    .line 24
    :goto_17
    return-void
.end method
