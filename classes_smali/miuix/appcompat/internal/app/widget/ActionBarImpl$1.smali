.class Lmiuix/appcompat/internal/app/widget/ActionBarImpl$1;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"

# interfaces
.implements Landroidx/appcompat/app/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroidx/appcompat/app/a$d;Landroidx/fragment/app/b0;)V
    .registers 5

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    .line 4
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/a$e;

    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_10

    .line 10
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/a$e;

    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1, p1, p2}, Landroidx/appcompat/app/a$e;->onTabReselected(Landroidx/appcompat/app/a$d;Landroidx/fragment/app/b0;)V

    .line 17
    :cond_10
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/a$e;

    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1d

    .line 23
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/a$e;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/app/a$e;->onTabReselected(Landroidx/appcompat/app/a$d;Landroidx/fragment/app/b0;)V

    .line 30
    :cond_1d
    return-void
.end method

.method public onTabSelected(Landroidx/appcompat/app/a$d;Landroidx/fragment/app/b0;)V
    .registers 5

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    .line 4
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/a$e;

    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_10

    .line 10
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/a$e;

    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1, p1, p2}, Landroidx/appcompat/app/a$e;->onTabSelected(Landroidx/appcompat/app/a$d;Landroidx/fragment/app/b0;)V

    .line 17
    :cond_10
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/a$e;

    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1d

    .line 23
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/a$e;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/app/a$e;->onTabSelected(Landroidx/appcompat/app/a$d;Landroidx/fragment/app/b0;)V

    .line 30
    :cond_1d
    return-void
.end method

.method public onTabUnselected(Landroidx/appcompat/app/a$d;Landroidx/fragment/app/b0;)V
    .registers 5

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    .line 4
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/a$e;

    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_10

    .line 10
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/a$e;

    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1, p1, p2}, Landroidx/appcompat/app/a$e;->onTabUnselected(Landroidx/appcompat/app/a$d;Landroidx/fragment/app/b0;)V

    .line 17
    :cond_10
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/a$e;

    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1d

    .line 23
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/a$e;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/app/a$e;->onTabUnselected(Landroidx/appcompat/app/a$d;Landroidx/fragment/app/b0;)V

    .line 30
    :cond_1d
    return-void
.end method
