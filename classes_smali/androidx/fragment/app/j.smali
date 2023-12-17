.class public final Landroidx/fragment/app/j;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/j;->a:Ljava/util/ArrayList;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j;->a:Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-static {v0, v1}, Landroidx/fragment/app/c0;->a(Ljava/util/ArrayList;I)V

    .line 7
    return-void
.end method
