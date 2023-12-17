.class Lmiuix/animation/controller/FolmeBlink$1;
.super Ljava/lang/Object;
.source "FolmeBlink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/controller/FolmeBlink;
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
    iput-object p1, p0, Lmiuix/animation/controller/FolmeBlink$1;->this$0:Lmiuix/animation/controller/FolmeBlink;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink$1;->this$0:Lmiuix/animation/controller/FolmeBlink;

    .line 3
    iget-object v0, v0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 5
    sget-object v1, Lmiuix/animation/IBlinkStyle$BlinkType;->HIGHLIGHT:Lmiuix/animation/IBlinkStyle$BlinkType;

    .line 7
    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    .line 14
    iget-object v3, p0, Lmiuix/animation/controller/FolmeBlink$1;->this$0:Lmiuix/animation/controller/FolmeBlink;

    .line 16
    invoke-static {v3}, Lmiuix/animation/controller/FolmeBlink;->access$000(Lmiuix/animation/controller/FolmeBlink;)Lmiuix/animation/base/AnimConfig;

    .line 19
    move-result-object v3

    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v3, v2, v4

    .line 23
    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 26
    return-void
.end method
