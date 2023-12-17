.class public final Landroidx/fragment/app/Fragment$e;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->callStartTransitionListener(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/SpecialEffectsController;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/SpecialEffectsController;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/Fragment$e;->a:Landroidx/fragment/app/SpecialEffectsController;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment$e;->a:Landroidx/fragment/app/SpecialEffectsController;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController;->c()V

    .line 6
    return-void
.end method
