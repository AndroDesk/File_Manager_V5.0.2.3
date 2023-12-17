.class public final Landroidx/fragment/app/Fragment$g;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Lp/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->registerForActivityResult(Lg/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp/a<",
        "Ljava/lang/Void;",
        "Landroidx/activity/result/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/Fragment$g;->a:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final apply()Landroidx/activity/result/e;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment$g;->a:Landroidx/fragment/app/Fragment;

    .line 3
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 5
    instance-of v2, v1, Landroidx/activity/result/f;

    .line 7
    if-eqz v2, :cond_f

    .line 9
    check-cast v1, Landroidx/activity/result/f;

    .line 11
    invoke-interface {v1}, Landroidx/activity/result/f;->getActivityResultRegistry()Landroidx/activity/result/e;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_17

    .line 16
    :cond_f
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/e;

    .line 23
    move-result-object v0

    .line 24
    :goto_17
    return-object v0
.end method
