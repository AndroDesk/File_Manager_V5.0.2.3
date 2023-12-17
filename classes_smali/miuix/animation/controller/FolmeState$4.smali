.class Lmiuix/animation/controller/FolmeState$4;
.super Ljava/lang/Object;
.source "FolmeState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/controller/FolmeState;->then([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
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
    iput-object p1, p0, Lmiuix/animation/controller/FolmeState$4;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 3
    iput-object p2, p0, Lmiuix/animation/controller/FolmeState$4;->val$propertyAndValues:[Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 3
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 6
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState$4;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 8
    iget-object v2, p0, Lmiuix/animation/controller/FolmeState$4;->val$propertyAndValues:[Ljava/lang/Object;

    .line 10
    invoke-virtual {v1, v2}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 13
    move-result-object v1

    .line 14
    const-wide/16 v2, 0x1

    .line 16
    iput-wide v2, v1, Lmiuix/animation/controller/AnimState;->flags:J

    .line 18
    iget-object v2, p0, Lmiuix/animation/controller/FolmeState$4;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 20
    const/4 v3, 0x1

    .line 21
    new-array v3, v3, [Lmiuix/animation/base/AnimConfig;

    .line 23
    const/4 v4, 0x0

    .line 24
    aput-object v0, v3, v4

    .line 26
    invoke-virtual {v2, v1, v3}, Lmiuix/animation/controller/FolmeState;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 29
    return-void
.end method
