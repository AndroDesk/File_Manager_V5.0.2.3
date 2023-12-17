.class public final Landroidx/fragment/app/Fragment$i;
.super Landroidx/fragment/app/Fragment$k;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->prepareCallInternal(Lg/a;Lp/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp/a;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Lg/a;

.field public final synthetic d:Landroidx/activity/result/a;

.field public final synthetic e:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lp/a;Ljava/util/concurrent/atomic/AtomicReference;Lg/a;Landroidx/activity/result/a;)V
    .registers 6

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/Fragment$i;->e:Landroidx/fragment/app/Fragment;

    .line 3
    iput-object p2, p0, Landroidx/fragment/app/Fragment$i;->a:Lp/a;

    .line 5
    iput-object p3, p0, Landroidx/fragment/app/Fragment$i;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    iput-object p4, p0, Landroidx/fragment/app/Fragment$i;->c:Lg/a;

    .line 9
    iput-object p5, p0, Landroidx/fragment/app/Fragment$i;->d:Landroidx/activity/result/a;

    .line 11
    invoke-direct {p0}, Landroidx/fragment/app/Fragment$k;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment$i;->e:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->generateActivityResultKey()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/Fragment$i;->a:Lp/a;

    .line 9
    invoke-interface {v1}, Lp/a;->apply()Landroidx/activity/result/e;

    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Landroidx/fragment/app/Fragment$i;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    iget-object v3, p0, Landroidx/fragment/app/Fragment$i;->e:Landroidx/fragment/app/Fragment;

    .line 17
    iget-object v4, p0, Landroidx/fragment/app/Fragment$i;->c:Lg/a;

    .line 19
    iget-object v5, p0, Landroidx/fragment/app/Fragment$i;->d:Landroidx/activity/result/a;

    .line 21
    invoke-virtual {v1, v0, v3, v4, v5}, Landroidx/activity/result/e;->c(Ljava/lang/String;Landroidx/lifecycle/m;Lg/a;Landroidx/activity/result/a;)Landroidx/activity/result/c;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 28
    return-void
.end method
