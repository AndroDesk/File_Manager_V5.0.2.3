.class Lmiuix/animation/controller/FolmeHover$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "FolmeHover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/controller/FolmeHover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/animation/controller/FolmeHover;


# direct methods
.method public constructor <init>(Lmiuix/animation/controller/FolmeHover;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeHover$1;->this$0:Lmiuix/animation/controller/FolmeHover;

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
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_15

    .line 9
    iget-object p1, p0, Lmiuix/animation/controller/FolmeHover$1;->this$0:Lmiuix/animation/controller/FolmeHover;

    .line 11
    iget-object p1, p1, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 13
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    .line 15
    invoke-interface {p1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1, p2}, Lmiuix/animation/controller/AnimState;->alignState(Lmiuix/animation/controller/AnimState;Ljava/util/Collection;)V

    .line 22
    :cond_15
    return-void
.end method
