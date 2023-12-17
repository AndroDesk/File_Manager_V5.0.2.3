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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/animation/controller/FolmeState;[Lmiuix/animation/base/AnimConfig;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iput-object p1, p0, Lmiuix/animation/controller/FolmeState$2;->this$0:Lmiuix/animation/controller/FolmeState;

    iput-object p2, p0, Lmiuix/animation/controller/FolmeState$2;->val$oneTimeConfig:[Lmiuix/animation/base/AnimConfig;

    iput-object p3, p0, Lmiuix/animation/controller/FolmeState$2;->val$fromTag:Ljava/lang/Object;

    iput-object p4, p0, Lmiuix/animation/controller/FolmeState$2;->val$toTag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState$2;->this$0:Lmiuix/animation/controller/FolmeState;

    invoke-static {v0}, Lmiuix/animation/controller/FolmeState;->access$100(Lmiuix/animation/controller/FolmeState;)Lmiuix/animation/base/AnimConfigLink;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState$2;->val$oneTimeConfig:[Lmiuix/animation/base/AnimConfig;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_b
    if-ge v4, v2, :cond_17

    aget-object v5, v1, v4

    new-array v6, v3, [Z

    invoke-virtual {v0, v5, v6}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;[Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_17
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState$2;->this$0:Lmiuix/animation/controller/FolmeState;

    iget-object v2, p0, Lmiuix/animation/controller/FolmeState$2;->val$fromTag:Ljava/lang/Object;

    iget-object v3, p0, Lmiuix/animation/controller/FolmeState$2;->val$toTag:Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0}, Lmiuix/animation/controller/FolmeState;->access$200(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)V

    return-void
.end method
