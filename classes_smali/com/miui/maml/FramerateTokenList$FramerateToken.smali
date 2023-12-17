.class public Lcom/miui/maml/FramerateTokenList$FramerateToken;
.super Ljava/lang/Object;
.source "FramerateTokenList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/FramerateTokenList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FramerateToken"
.end annotation


# instance fields
.field public mFramerate:F

.field public mName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/miui/maml/FramerateTokenList;


# direct methods
.method public constructor <init>(Lcom/miui/maml/FramerateTokenList;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->this$0:Lcom/miui/maml/FramerateTokenList;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mName:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public getFramerate()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    .line 3
    return v0
.end method

.method public requestFramerate(F)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-eqz v0, :cond_20

    .line 7
    iget-object v0, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->this$0:Lcom/miui/maml/FramerateTokenList;

    .line 9
    invoke-static {v0}, Lcom/miui/maml/FramerateTokenList;->access$000(Lcom/miui/maml/FramerateTokenList;)Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_19

    .line 15
    iget-object v0, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->this$0:Lcom/miui/maml/FramerateTokenList;

    .line 17
    invoke-static {v0}, Lcom/miui/maml/FramerateTokenList;->access$000(Lcom/miui/maml/FramerateTokenList;)Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;

    .line 20
    move-result-object v0

    .line 21
    iget v1, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    .line 23
    invoke-interface {v0, v1, p1}, Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;->onFrameRateChage(FF)V

    .line 26
    :cond_19
    iput p1, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    .line 28
    iget-object p1, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->this$0:Lcom/miui/maml/FramerateTokenList;

    .line 30
    invoke-static {p1}, Lcom/miui/maml/FramerateTokenList;->access$100(Lcom/miui/maml/FramerateTokenList;)V

    .line 33
    :cond_20
    return-void
.end method
