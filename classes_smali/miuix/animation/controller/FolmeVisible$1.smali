.class Lmiuix/animation/controller/FolmeVisible$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "FolmeVisible.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/controller/FolmeVisible;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/animation/controller/FolmeVisible;


# direct methods
.method public constructor <init>(Lmiuix/animation/controller/FolmeVisible;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeVisible$1;->this$0:Lmiuix/animation/controller/FolmeVisible;

    .line 3
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 4
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
    sget-object v0, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1d

    .line 9
    iget-object p1, p0, Lmiuix/animation/controller/FolmeVisible$1;->this$0:Lmiuix/animation/controller/FolmeVisible;

    .line 11
    invoke-static {p1}, Lmiuix/animation/controller/FolmeVisible;->access$000(Lmiuix/animation/controller/FolmeVisible;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1d

    .line 17
    iget-object p1, p0, Lmiuix/animation/controller/FolmeVisible$1;->this$0:Lmiuix/animation/controller/FolmeVisible;

    .line 19
    iget-object p1, p1, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 21
    sget-object v0, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 23
    invoke-interface {p1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1, p2}, Lmiuix/animation/controller/AnimState;->alignState(Lmiuix/animation/controller/AnimState;Ljava/util/Collection;)V

    .line 30
    :cond_1d
    return-void
.end method
