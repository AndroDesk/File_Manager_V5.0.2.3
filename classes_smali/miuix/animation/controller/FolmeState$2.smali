.class Lmiuix/animation/controller/FolmeState$2;
.super Ljava/lang/Object;
.source "FolmeState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/controller/FolmeState;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/animation/controller/FolmeState;

.field public final synthetic val$fromTag:Ljava/lang/Object;

.field public final synthetic val$oneTimeConfig:[Lmiuix/animation/base/AnimConfig;

.field public final synthetic val$toTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lmiuix/animation/controller/FolmeState;[Lmiuix/animation/base/AnimConfig;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeState$2;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 3
    iput-object p2, p0, Lmiuix/animation/controller/FolmeState$2;->val$oneTimeConfig:[Lmiuix/animation/base/AnimConfig;

    .line 5
    iput-object p3, p0, Lmiuix/animation/controller/FolmeState$2;->val$fromTag:Ljava/lang/Object;

    .line 7
    iput-object p4, p0, Lmiuix/animation/controller/FolmeState$2;->val$toTag:Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState$2;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 3
    invoke-static {v0}, Lmiuix/animation/controller/FolmeState;->access$100(Lmiuix/animation/controller/FolmeState;)Lmiuix/animation/base/AnimConfigLink;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState$2;->val$oneTimeConfig:[Lmiuix/animation/base/AnimConfig;

    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v3

    .line 12
    :goto_b
    if-ge v4, v2, :cond_17

    .line 14
    aget-object v5, v1, v4

    .line 16
    new-array v6, v3, [Z

    .line 18
    invoke-virtual {v0, v5, v6}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;[Z)V

    .line 21
    add-int/lit8 v4, v4, 0x1

    .line 23
    goto :goto_b

    .line 24
    :cond_17
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState$2;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 26
    iget-object v2, p0, Lmiuix/animation/controller/FolmeState$2;->val$fromTag:Ljava/lang/Object;

    .line 28
    iget-object v3, p0, Lmiuix/animation/controller/FolmeState$2;->val$toTag:Ljava/lang/Object;

    .line 30
    invoke-static {v1, v2, v3, v0}, Lmiuix/animation/controller/FolmeState;->access$200(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)V

    .line 33
    return-void
.end method
