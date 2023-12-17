.class public final Landroidx/activity/OnBackPressedDispatcher$b;
.super Ljava/lang/Object;
.source "OnBackPressedDispatcher.java"

# interfaces
.implements Landroidx/activity/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/OnBackPressedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Landroidx/activity/h;

.field public final synthetic b:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public constructor <init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/h;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$b;->b:Landroidx/activity/OnBackPressedDispatcher;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$b;->a:Landroidx/activity/h;

    .line 8
    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$b;->b:Landroidx/activity/OnBackPressedDispatcher;

    .line 3
    iget-object v0, v0, Landroidx/activity/OnBackPressedDispatcher;->b:Ljava/util/ArrayDeque;

    .line 5
    iget-object v1, p0, Landroidx/activity/OnBackPressedDispatcher$b;->a:Landroidx/activity/h;

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$b;->a:Landroidx/activity/h;

    .line 12
    invoke-virtual {v0, p0}, Landroidx/activity/h;->removeCancellable(Landroidx/activity/a;)V

    .line 15
    invoke-static {}, Li0/a;->a()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1f

    .line 21
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$b;->a:Landroidx/activity/h;

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroidx/activity/h;->setIsEnabledConsumer(Ll0/a;)V

    .line 27
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$b;->b:Landroidx/activity/OnBackPressedDispatcher;

    .line 29
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->c()V

    .line 32
    :cond_1f
    return-void
.end method
