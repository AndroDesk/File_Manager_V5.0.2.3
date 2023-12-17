.class Lmiuix/animation/controller/FolmeBlink$8;
.super Lmiuix/animation/listener/TransitionListener;
.source "FolmeBlink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/controller/FolmeBlink;-><init>([Lmiuix/animation/IAnimTarget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/animation/controller/FolmeBlink;


# direct methods
.method public constructor <init>(Lmiuix/animation/controller/FolmeBlink;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeBlink$8;->this$0:Lmiuix/animation/controller/FolmeBlink;

    .line 3
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$8;->this$0:Lmiuix/animation/controller/FolmeBlink;

    .line 6
    iget-object p1, p1, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 8
    const/4 v0, 0x1

    .line 9
    new-array v0, v0, [Lmiuix/animation/property/FloatProperty;

    .line 11
    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object v1, v0, v2

    .line 16
    invoke-interface {p1, v0}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    .line 19
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$8;->this$0:Lmiuix/animation/controller/FolmeBlink;

    .line 21
    iget-object p1, p1, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 23
    invoke-interface {p1}, Lmiuix/animation/IStateContainer;->clean()V

    .line 26
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$8;->this$0:Lmiuix/animation/controller/FolmeBlink;

    .line 6
    iget-object p1, p1, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 8
    const/4 v0, 0x1

    .line 9
    new-array v0, v0, [Lmiuix/animation/property/FloatProperty;

    .line 11
    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object v1, v0, v2

    .line 16
    invoke-interface {p1, v0}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    .line 19
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$8;->this$0:Lmiuix/animation/controller/FolmeBlink;

    .line 21
    iget-object p1, p1, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 23
    invoke-interface {p1}, Lmiuix/animation/IStateContainer;->clean()V

    .line 26
    return-void
.end method
