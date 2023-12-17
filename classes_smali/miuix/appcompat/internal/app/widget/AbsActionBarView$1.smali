.class Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/AbsActionBarView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;->this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView;

    .line 3
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;->this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView;

    .line 6
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    .line 8
    if-eqz v0, :cond_1d

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1d

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lmiuix/appcompat/app/ActionBarTransitionListener;

    .line 26
    invoke-interface {v1, p1}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onTransitionBegin(Ljava/lang/Object;)V

    .line 29
    goto :goto_d

    .line 30
    :cond_1d
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;->this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView;

    .line 6
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    .line 8
    if-eqz v0, :cond_1d

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1d

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lmiuix/appcompat/app/ActionBarTransitionListener;

    .line 26
    invoke-interface {v1, p1}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onTransitionComplete(Ljava/lang/Object;)V

    .line 29
    goto :goto_d

    .line 30
    :cond_1d
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;->this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView;

    .line 6
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    .line 8
    if-eqz v0, :cond_1d

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1d

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lmiuix/appcompat/app/ActionBarTransitionListener;

    .line 26
    invoke-interface {v1, p1, p2}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onTransitionUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 29
    goto :goto_d

    .line 30
    :cond_1d
    return-void
.end method
