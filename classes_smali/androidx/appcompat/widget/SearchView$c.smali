.class public final Landroidx/appcompat/widget/SearchView$c;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/SearchView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$c;->a:Landroidx/appcompat/widget/SearchView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$c;->a:Landroidx/appcompat/widget/SearchView;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->B:Lq0/a;

    .line 5
    instance-of v1, v0, Landroidx/appcompat/widget/s0;

    .line 7
    if-eqz v1, :cond_c

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lq0/a;->c(Landroid/database/Cursor;)V

    .line 13
    :cond_c
    return-void
.end method
