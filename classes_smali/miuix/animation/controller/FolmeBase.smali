.class public abstract Lmiuix/animation/controller/FolmeBase;
.super Ljava/lang/Object;
.source "FolmeBase.java"

# interfaces
.implements Lmiuix/animation/IStateContainer;


# instance fields
.field public mState:Lmiuix/animation/controller/IFolmeStateStyle;


# direct methods
.method public varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lmiuix/animation/controller/StateComposer;->composeStyle([Lmiuix/animation/IAnimTarget;)Lmiuix/animation/controller/IFolmeStateStyle;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 10
    return-void
.end method


# virtual methods
.method public varargs addConfig(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1, p2}, Lmiuix/animation/IStateContainer;->addConfig(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V

    .line 8
    :cond_7
    return-void
.end method

.method public cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    :cond_7
    return-void
.end method

.method public varargs cancel([Ljava/lang/String;)V
    .registers 3

    .line 5
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_7

    .line 6
    invoke-interface {v0, p1}, Lmiuix/animation/ICancelableStyle;->cancel([Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public varargs cancel([Lmiuix/animation/property/FloatProperty;)V
    .registers 3

    .line 3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_7

    .line 4
    invoke-interface {v0, p1}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    :cond_7
    return-void
.end method

.method public clean()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 8
    :cond_7
    return-void
.end method

.method public enableDefaultAnim(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/animation/IStateContainer;->enableDefaultAnim(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public varargs end([Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    .line 8
    :cond_7
    return-void
.end method
