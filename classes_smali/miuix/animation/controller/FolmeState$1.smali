.class Lmiuix/animation/controller/FolmeState$1;
.super Ljava/lang/Object;
.source "FolmeState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/controller/FolmeState;->setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/animation/controller/FolmeState;

.field public final synthetic val$oneTimeConfig:[Lmiuix/animation/base/AnimConfig;

.field public final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeState$1;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 3
    iput-object p2, p0, Lmiuix/animation/controller/FolmeState$1;->val$tag:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lmiuix/animation/controller/FolmeState$1;->val$oneTimeConfig:[Lmiuix/animation/base/AnimConfig;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState$1;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 3
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState$1;->val$tag:Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lmiuix/animation/controller/FolmeState$1;->val$oneTimeConfig:[Lmiuix/animation/base/AnimConfig;

    .line 7
    invoke-static {v2}, Lmiuix/animation/base/AnimConfigLink;->linkConfig([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/base/AnimConfigLink;

    .line 10
    move-result-object v2

    .line 11
    invoke-static {v0, v1, v2}, Lmiuix/animation/controller/FolmeState;->access$000(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)V

    .line 14
    return-void
.end method
