.class Lmiuix/animation/controller/FolmeState$3;
.super Ljava/lang/Object;
.source "FolmeState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/controller/FolmeState;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/animation/controller/FolmeState;

.field public final synthetic val$propertyAndValues:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lmiuix/animation/controller/FolmeState;[Ljava/lang/Object;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeState$3;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 3
    iput-object p2, p0, Lmiuix/animation/controller/FolmeState$3;->val$propertyAndValues:[Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState$3;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 3
    invoke-static {v0}, Lmiuix/animation/controller/FolmeState;->access$100(Lmiuix/animation/controller/FolmeState;)Lmiuix/animation/base/AnimConfigLink;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState$3;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 9
    iget-object v2, v1, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 11
    invoke-virtual {v1}, Lmiuix/animation/controller/FolmeState;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 14
    move-result-object v1

    .line 15
    iget-object v3, p0, Lmiuix/animation/controller/FolmeState$3;->val$propertyAndValues:[Ljava/lang/Object;

    .line 17
    invoke-virtual {v2, v1, v0, v3}, Lmiuix/animation/controller/StateManager;->getSetToState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lmiuix/animation/controller/FolmeState$3;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 23
    invoke-static {v2, v1, v0}, Lmiuix/animation/controller/FolmeState;->access$000(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)V

    .line 26
    return-void
.end method
